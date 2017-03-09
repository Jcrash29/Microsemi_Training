--------------------------------------------------------------------------------------------------------
-- Company: Future Electronics Inc.
--
-- File: SPI_Master.vhd
-- File history:
--      Rev. 1: 10/11/2016: 
--
-- Description: 
--  SPI Flash Master
--
-- Targeted device: <Family::IGLOO2> <Die::M2GL025> <Package::256 VF>
-- Author: Giovanna Franco
--
--------------------------------------------------------------------------------------------------------
-- Copyright (c) 2016   Future Electronics
--                      All rights reserved.
--------------------------------------------------------------------------------------------------------
-- Disclaimer of Warranty
-- ALL MATERIALS, INFORMATION AND SERVICES ARE PROVIDED "AS-IS" AND "AS-AVAILABLE" FOR YOUR USE. 
-- FUTURE ELECTRONICS DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING 
-- BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
-- PURPOSE, TITLE, OR NON-INFRINGEMENT.
-- YOU ACKNOWLEDGE AND AGREE THAT THE REFERENCE DESIGNS AND OTHER SUCH DESIGN MATERIALS INCLUDED 
-- HEREIN ARE PROVIDED AS AN EXAMPLE ONLY AND THAT YOU WILL EXERCISE YOUR OWN INDEPENDENT ANALYSIS 
-- AND JUDGEMENT IN YOUR USE OF THESE MATERIALS. FUTURE ELECTRONICS ASSUMES NO LIABILITY FOR YOUR 
-- USE OF THESE MATERIALS FOR YOUR PRODUCT DESIGNS.
-- 
-- Indemnification
-- You agree to indemnify, defend and hold Future Electronics and all of its agents, directors, 
-- employees, information providers, licensors and licensees, and affiliated companies 
-- (collectively, "Indemnified Parties"), harmless from and against any and all liability 
-- and costs (including, without limitation, attorneys" fees and costs), incurred by the 
-- Indemnified Parties in connection with any claim arising out of any breach by You of these 
-- Terms and Conditions of Use or any representations or warranties made by You herein. 
-- You will cooperate as fully as reasonably required in Future Electronics" defense of any claim. 
-- Future Electronics reserves the right, at its own expense, to assume the exclusive defense and 
-- control of any matter otherwise subject to indemnification by You and You shall not in any event 
-- settle any matter without the written consent of Future Electronics.
-- 
-- Limitation of Liability
-- UNDER NO CIRCUMSTANCES SHALL FUTURE ELECTRONICS, NOR ITS AGENTS, DIRECTORS, EMPLOYEES, 
-- INFORMATION PROVIDERS, LICENSORS AND LICENSEE, AND AFFILIATED COMPANIES BE LIABLE FOR ANY DAMAGES, 
-- INCLUDING WITHOUT LIMITATION, DIRECT, INDIRECT, INCIDENTAL, SPECIAL, PUNITIVE, CONSEQUENTIAL, OR 
-- OTHER DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS, LOST REVENUES, OR SIMILAR ECONOMIC LOSS), 
-- WHETHER IN CONTRACT, TORT, OR OTHERWISE, ARISING OUT OF THE USE OR INABILITY TO USE THE MATERIALS 
-- PROVIDED AS A REFERENCE DESIGN, EVEN IF WE ARE ADVISED OF THE POSSIBILITY THEREOF, NOR FOR ANY CLAIM 
-- BY A THIRD PARTY.
--------------------------------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity SPI_Master is
generic( Nd : integer := 32;
         Na : integer := 5;
         Nc : integer := 3;   
         clk_div: integer := 50);
port (
    -- Inputs
    clk : in std_logic;
    reset : in std_logic;
    enable : in std_logic;
    cpol : in std_logic;
    cpha : in std_logic;
    PWRITE : in std_logic;
    PADDR : in std_logic_vector(Na-1 downto 0);
    PWDATA : in std_logic_vector(Nd-1 downto 0);
    MISO : in std_logic;
    -- Output
    CS : out std_logic;
    ss_n : out std_logic;
    PRDATA : out std_logic_vector(Nd-1 downto 0);
    CLKOUT : out std_logic;
    MOSI : out std_logic
);
end SPI_Master;
architecture architecture_SPI_Master of SPI_Master is
   -- signal, component etc. declarations
	type FSM is (ready, execute);
    signal state : FSM;
    signal slv_select : std_logic_vector(Na-1 downto 0);
    signal clk_select : integer;
    signal clk_toggles : integer range 0 to (Nc+Na+Nd)*2 + 1;
    signal PWDATA_buf : std_logic_vector((Nd+Na+Nc)-1 downto 0);
    signal PRDATA_buf : std_logic_vector((Nd+Na+Nc)-1 downto 0);
    signal ltRx_bit : integer range 0 to Nd*2;
    signal clk_ratio : integer;
    signal count : integer;
    signal assert_data : std_logic;
    signal continue : std_logic;
    signal cont : std_logic := '1';
    signal command : std_logic_vector(Nc-1 downto 0);
    signal cnt1 : integer := 0;
begin
process(reset,clk)
begin
if (reset = '0') then
    CS <= '1';
    ss_n <= '0';
    MOSI <= '0';
    PRDATA <= (others => '0');
    state <= ready;
elsif(rising_edge(clk)) then
    case state is
        when ready => 
                   CS <= '1';
                   ss_n <= '1';
                   MOSI <= 'Z';
                   continue <= '0';
             if(enable = '1') then
                CS <= '1';
                slv_select <= PADDR;
                if(clk_div = 0) then
                    clk_ratio <= 1;
                    count <= 1;
                else
                    clk_ratio <= clk_div;
                    count <= clk_div;
                end if;
                CLKOUT <= cpol;
                assert_data <= not(cpha);
                if(PWRITE = '1') then
                    command <= "110"; --x"06"
                else
                    command <= "011"; --x"03"
                end if;
                PWDATA_buf <= command & slv_select & PWDATA;
                clk_toggles <= 0;
                ltRx_bit <= (Nc+Na+Nd)*2 + conv_integer(cpha) - 1;
                state <= execute;
             else
                state <= ready;
            end if;
        when execute =>
                CS <= '0';
                ss_n <= '0';
                
                if(count = clk_ratio) then
                    count <= 1;
                    assert_data <= not(assert_data);
                    if(clk_toggles = (Nc+Na+Nd)*2 + 1) then
                        clk_toggles <= 0;
                    else
                        clk_toggles <= clk_toggles + 1;
                    end if;
    
                    --if(clk_toggles <= (Nc+Na+Nd)*2 and ss_n = '0') then
                    --    CLKOUT <= not(CLKOUT);
                    --end if;
                    
                    if(assert_data = '1' and (clk_toggles < ltRx_bit + 1) and ss_n = '0' and PWRITE = '0') then
                        --MISO <= PWDATA_buf(Nc+Na+Nd-1);
                        PRDATA_buf <= PRDATA_buf(Nc+Na+Nd-2 downto 0) & MISO;
                        if(clk_toggles <= (Nc+Na+Nd)*2 and CS'event) then
                            CLKOUT <= not(CLKOUT);
                        else
                            CLKOUT <= 'Z';
                        end if;
                    end if;
                    
                    if(assert_data = '1' and clk_toggles < ltRx_bit and PWRITE = '1') then
                        MOSI <= PWDATA_buf(Nc+Na+Nd-1);
                        if(clk_toggles <= (Nc+Na+Nd)*2 and CS'event) then
                            CLKOUT <= not(CLKOUT);
                        else
                            CLKOUT <= 'Z';
                        end if;
                        PWDATA_buf <= PWDATA_buf(Nc+Na+Nd-2 downto 0) & '0';
                    end if;
    
                    if(clk_toggles = ltRx_bit and cont = '1') then
                        PWDATA_buf <= command & PADDR & PWDATA;
                        clk_toggles <= ltRx_bit - (Nc+Na+Nd)*2 + 1;
                        continue <= '1';
                    end if;

                    if(continue = '1') then
                        continue <= '0';
                        CS <= '1';
                        PRDATA <= PRDATA_buf(Nd-1 downto 0);
                    end if;

                    if(clk_toggles = ((Nc+Na+Nd)*2 + 1) and cont = '0') then
                        CS <= '1';
                        ss_n <= '1';
                        MOSI <= 'Z';
                        PRDATA <= PRDATA_buf(Nd-1 downto 0);
                        state <= ready;
                    else
                        state <= execute;
                    end if;

            else
                count <= count +1;
                state <= execute;
            end if;
        end case;
    end if;
end process;

end architecture_SPI_Master;
