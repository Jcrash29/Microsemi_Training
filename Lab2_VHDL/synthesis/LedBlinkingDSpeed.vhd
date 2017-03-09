-- Version: v11.7 SP1 11.7.1.14

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity ClkGenNoSwitch_1 is

    port( led1  : out   std_logic;
          reset : in    std_logic;
          clk_c : in    std_logic
        );

end ClkGenNoSwitch_1;

architecture DEF_ARCH of ClkGenNoSwitch_1 is 

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \un7_cntlto31_0_1\, GND_net_1, 
        \cnt[0]_net_1\, \cnt_s[0]\, \cnt[1]_net_1\, \cnt_s[1]\, 
        \cnt[2]_net_1\, \cnt_s[2]\, \cnt[3]_net_1\, \cnt_s[3]\, 
        \cnt[4]_net_1\, \cnt_s[4]\, \cnt[5]_net_1\, \cnt_s[5]\, 
        \cnt[6]_net_1\, \cnt_s[6]\, \cnt[7]_net_1\, \cnt_s[7]\, 
        \cnt[8]_net_1\, \cnt_s[8]\, \cnt[9]_net_1\, \cnt_s[9]\, 
        \cnt[10]_net_1\, \cnt_s[10]\, \cnt[11]_net_1\, 
        \cnt_s[11]\, \cnt[12]_net_1\, \cnt_s[12]\, 
        \cnt[13]_net_1\, \cnt_s[13]\, \cnt[14]_net_1\, 
        \cnt_s[14]\, \cnt[15]_net_1\, \cnt_s[15]\, 
        \cnt[16]_net_1\, \cnt_s[16]\, \cnt[17]_net_1\, 
        \cnt_s[17]\, \cnt[18]_net_1\, \cnt_s[18]\, 
        \cnt[19]_net_1\, \cnt_s[19]\, \cnt[20]_net_1\, 
        \cnt_s[20]\, \cnt[21]_net_1\, \cnt_s[21]\, 
        \cnt[22]_net_1\, \cnt_s[22]\, \cnt[23]_net_1\, 
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, 
        \cnt[25]_net_1\, \cnt_s[25]\, \cnt[26]_net_1\, 
        \cnt_s[26]\, \cnt[27]_net_1\, \cnt_s[27]\, 
        \cnt[28]_net_1\, \cnt_s[28]\, \cnt[29]_net_1\, 
        \cnt_s[29]\, \cnt[30]_net_1\, \cnt_s[30]\, 
        \cnt[31]_net_1\, \cnt_s[31]\, cnt_cry_cy, 
        un14_cntlto31_0_0_RNID8IS_Y, \un14_cntlto31_0_o2_1\, 
        \un14_cntlto31_0_0\, \un14_cntlto31_0_1_0\, \cnt_cry[0]\, 
        \cnt_cry[1]\, \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, 
        \cnt_cry[5]\, \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, 
        \cnt_cry[9]\, \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, \cnt_cry[23]\, \cnt_cry[24]\, 
        \cnt_cry[25]\, \cnt_cry[26]\, \cnt_cry[27]\, 
        \cnt_cry[28]\, \cnt_cry[29]\, \cnt_cry[30]\, 
        un7_cntlto31_0_1_0, \un7_cntlto31_0_0\, 
        \un14_cntlto31_0_a2_0\, \un7_cntlto31_0_o2_0\, 
        \un14_cntlto31_0_o2\, \un14_cntlto31_0_o2_4\, 
        \un14_cntlto31_0_o2_5\, un14_cntlto31_0_o2_3_0, N_89_3, 
        un14_cntlto31_0_a2_0_0 : std_logic;

begin 


    \cnt_RNIIAV3Q[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    \cnt_RNIPK6I7[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt_RNIF8C3S[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNI5TS4N[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    \cnt[30]\ : SLE
      port map(D => \cnt_s[30]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[30]_net_1\);
    
    \cnt[27]\ : SLE
      port map(D => \cnt_s[27]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[27]_net_1\);
    
    tmp_clk : SLE
      port map(D => \un7_cntlto31_0_1\, CLK => clk_c, EN => 
        VCC_net_1, ALn => reset, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => led1);
    
    \cnt_RNIODL7A[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    \cnt[2]\ : SLE
      port map(D => \cnt_s[2]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[2]_net_1\);
    
    \cnt[8]\ : SLE
      port map(D => \cnt_s[8]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[8]_net_1\);
    
    \cnt[26]\ : SLE
      port map(D => \cnt_s[26]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[26]_net_1\);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    \cnt_RNIGAH6I[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNIGAP2U[25]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[25]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[24]\, S => \cnt_s[25]\, Y => OPEN, FCO => 
        \cnt_cry[25]\);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    \cnt_RNILG6201[27]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[27]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[26]\, S => \cnt_s[27]\, Y => OPEN, FCO => 
        \cnt_cry[27]\);
    
    \cnt_RNI2TF2V[26]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[26]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[25]\, S => \cnt_s[26]\, Y => OPEN, FCO => 
        \cnt_cry[26]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    un14_cntlto31_0_a2_0 : CFG2
      generic map(INIT => x"1")

      port map(A => \un14_cntlto31_0_o2_5\, B => \cnt[26]_net_1\, 
        Y => un14_cntlto31_0_a2_0_0);
    
    un14_cntlto31_0_o2_1 : CFG3
      generic map(INIT => x"AE")

      port map(A => \un14_cntlto31_0_o2_5\, B => \cnt[20]_net_1\, 
        C => un14_cntlto31_0_o2_3_0, Y => \un14_cntlto31_0_o2_1\);
    
    \cnt_RNIO0US8[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt_RNIIA75M[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    un14_cntlto31_0_0 : CFG4
      generic map(INIT => x"EEAE")

      port map(A => \un14_cntlto31_0_a2_0\, B => 
        un14_cntlto31_0_a2_0_0, C => \cnt[25]_net_1\, D => 
        un14_cntlto31_0_o2_3_0, Y => \un14_cntlto31_0_0\);
    
    \cnt_RNIRA4TC[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    un7_cntlto31_0 : CFG4
      generic map(INIT => x"CECC")

      port map(A => un7_cntlto31_0_1_0, B => \un7_cntlto31_0_0\, 
        C => \cnt[25]_net_1\, D => \un14_cntlto31_0_a2_0\, Y => 
        \un7_cntlto31_0_1\);
    
    \cnt_RNIUQJ121[29]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[29]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[28]\, S => \cnt_s[29]\, Y => OPEN, FCO => 
        \cnt_cry[29]\);
    
    un7_cntlto31_0_0 : CFG4
      generic map(INIT => x"3301")

      port map(A => \cnt[25]_net_1\, B => \cnt[27]_net_1\, C => 
        \un14_cntlto31_0_o2_1\, D => un14_cntlto31_0_a2_0_0, Y
         => \un7_cntlto31_0_0\);
    
    \cnt_RNIPRCIB[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    un14_cntlto31_0_o2_5 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \cnt[31]_net_1\, B => \cnt[30]_net_1\, C => 
        \cnt[29]_net_1\, D => \cnt[28]_net_1\, Y => 
        \un14_cntlto31_0_o2_5\);
    
    un7_cntlto31_0_1 : CFG4
      generic map(INIT => x"040F")

      port map(A => \cnt[17]_net_1\, B => \un7_cntlto31_0_o2_0\, 
        C => \cnt[19]_net_1\, D => \cnt[18]_net_1\, Y => 
        un7_cntlto31_0_1_0);
    
    \cnt_RNI0PH5L[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \cnt_RNIVO23T[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_cry[24]\);
    
    \cnt[31]\ : SLE
      port map(D => \cnt_s[31]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[31]_net_1\);
    
    un14_cntlto31_0_o2_4 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[16]_net_1\, B => \cnt[15]_net_1\, C => 
        \cnt[14]_net_1\, Y => \un14_cntlto31_0_o2_4\);
    
    \cnt_RNIUQR7E[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \cnt_RNIR9F76[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt[28]\ : SLE
      port map(D => \cnt_s[28]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[28]_net_1\);
    
    \cnt_RNIVO66J[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt_RNI0PL3R[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    \cnt_RNIF8S5K[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[24]_net_1\, B => \cnt[23]_net_1\, C => 
        \cnt[22]_net_1\, D => \cnt[21]_net_1\, Y => 
        un14_cntlto31_0_o2_3_0);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    un7_cntlto31_0_o2_0 : CFG4
      generic map(INIT => x"FF75")

      port map(A => \cnt[13]_net_1\, B => \cnt[8]_net_1\, C => 
        N_89_3, D => \un14_cntlto31_0_o2_4\, Y => 
        \un7_cntlto31_0_o2_0\);
    
    \cnt_RNIUVNS4[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[12]_net_1\, B => \cnt[11]_net_1\, C => 
        \cnt[10]_net_1\, D => \cnt[9]_net_1\, Y => N_89_3);
    
    \cnt_RNO[31]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[31]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[30]\, S => \cnt_s[31]\, Y => OPEN, FCO => OPEN);
    
    \cnt_RNI2N0I3[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt_RNI7F972[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    un14_cntlto31_0_o2 : CFG4
      generic map(INIT => x"F7F5")

      port map(A => \cnt[17]_net_1\, B => \cnt[13]_net_1\, C => 
        \un14_cntlto31_0_o2_4\, D => N_89_3, Y => 
        \un14_cntlto31_0_o2\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    \cnt_RNIB9B131[30]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[30]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[29]\, S => \cnt_s[30]\, Y => OPEN, FCO => 
        \cnt_cry[30]\);
    
    \cnt_RNI2TR6H[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    \cnt_RNI5T84P[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt_RNIPGI4O[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt[29]\ : SLE
      port map(D => \cnt_s[29]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[29]_net_1\);
    
    un14_cntlto31_0_a2 : CFG2
      generic map(INIT => x"1")

      port map(A => \un14_cntlto31_0_o2_5\, B => \cnt[27]_net_1\, 
        Y => \un14_cntlto31_0_a2_0\);
    
    \cnt_RNI95T111[28]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[28]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[27]\, S => \cnt_s[28]\, Y => OPEN, FCO => 
        \cnt_cry[28]\);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    un14_cntlto31_0_0_RNID8IS : ARI1
      generic map(INIT => x"4CCDC")

      port map(A => \un14_cntlto31_0_o2_1\, B => \cnt[26]_net_1\, 
        C => \un14_cntlto31_0_0\, D => \un14_cntlto31_0_1_0\, FCI
         => VCC_net_1, S => OPEN, Y => 
        un14_cntlto31_0_0_RNID8IS_Y, FCO => cnt_cry_cy);
    
    \cnt_RNI95H7F[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    un14_cntlto31_0_1_0 : CFG3
      generic map(INIT => x"4F")

      port map(A => \cnt[18]_net_1\, B => \un14_cntlto31_0_o2\, C
         => \cnt[19]_net_1\, Y => \un14_cntlto31_0_1_0\);
    
    \cnt_RNILG67G[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_0_RNID8IS_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
    \cnt[21]\ : SLE
      port map(D => \cnt_s[21]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[21]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity ClkGen_1 is

    port( led2  : out   std_logic;
          reset : in    std_logic;
          clk_c : in    std_logic;
          SW2_c : in    std_logic
        );

end ClkGen_1;

architecture DEF_ARCH of ClkGen_1 is 

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, un7_cntlto31_0_0_0, GND_net_1, 
        \cnt[0]_net_1\, \cnt_s[0]\, \cnt[1]_net_1\, \cnt_s[1]\, 
        \cnt[2]_net_1\, \cnt_s[2]\, \cnt[3]_net_1\, \cnt_s[3]\, 
        \cnt[4]_net_1\, \cnt_s[4]\, \cnt[5]_net_1\, \cnt_s[5]\, 
        \cnt[6]_net_1\, \cnt_s[6]\, \cnt[7]_net_1\, \cnt_s[7]\, 
        \cnt[8]_net_1\, \cnt_s[8]\, \cnt[9]_net_1\, \cnt_s[9]\, 
        \cnt[10]_net_1\, \cnt_s[10]\, \cnt[11]_net_1\, 
        \cnt_s[11]\, \cnt[12]_net_1\, \cnt_s[12]\, 
        \cnt[13]_net_1\, \cnt_s[13]\, \cnt[14]_net_1\, 
        \cnt_s[14]\, \cnt[15]_net_1\, \cnt_s[15]\, 
        \cnt[16]_net_1\, \cnt_s[16]\, \cnt[17]_net_1\, 
        \cnt_s[17]\, \cnt[18]_net_1\, \cnt_s[18]\, 
        \cnt[19]_net_1\, \cnt_s[19]\, \cnt[20]_net_1\, 
        \cnt_s[20]\, \cnt[21]_net_1\, \cnt_s[21]\, 
        \cnt[22]_net_1\, \cnt_s[22]\, \cnt[23]_net_1\, 
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, 
        \cnt[25]_net_1\, \cnt_s[25]\, cnt_cry_cy, 
        un14_cntlto31_0_o3_RNIAU8S2_Y, N_303_tz, 
        \un14_cntlto31_0_o3\, \un14_cntlto31_0_a2\, \cnt_cry[0]\, 
        \cnt_cry[1]\, \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, 
        \cnt_cry[5]\, \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, 
        \cnt_cry[9]\, \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, \cnt_cry[23]\, \un14_cntlto31_0_o2_3\, 
        \un14_cntlto31_0_o2_0\, N_113_3, \un7_cntlto31_0_a2_1\, 
        \un14_cntlto31_0_o3_0\, \un7_cntlto31_0_a2_0\, 
        \un7_cntlto31_0_a2\, \un7_cntlto31_0_a3\ : std_logic;

begin 


    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[13]_net_1\, B => \cnt[12]_net_1\, C => 
        \cnt[11]_net_1\, Y => \un14_cntlto31_0_o2_0\);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNITCRRV[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    tmp_clk : SLE
      port map(D => un7_cntlto31_0_0_0, CLK => clk_c, EN => SW2_c, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => led2);
    
    \cnt[2]\ : SLE
      port map(D => \cnt_s[2]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[2]_net_1\);
    
    \cnt[8]\ : SLE
      port map(D => \cnt_s[8]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[8]_net_1\);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    \cnt_RNI8KHV91[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[22]_net_1\, B => \un14_cntlto31_0_o2_3\, 
        C => \cnt[24]_net_1\, D => \cnt[23]_net_1\, Y => 
        \un14_cntlto31_0_o3\);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    un7_cntlto31_0_a2_0 : CFG4
      generic map(INIT => x"5551")

      port map(A => \cnt[14]_net_1\, B => \cnt[10]_net_1\, C => 
        \un14_cntlto31_0_o2_0\, D => \un7_cntlto31_0_a2_1\, Y => 
        \un7_cntlto31_0_a2_0\);
    
    \cnt_RNI3EEBD1[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt_RNIJNPU42[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt_RNI48J2F2[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt_RNIL3O731[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    \cnt_RNIP5PL8[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt_RNI15HEI2[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_s[25]\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt_RNIDHNA82[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    un7_cntlto31_0_0 : CFG4
      generic map(INIT => x"FF10")

      port map(A => \cnt[24]_net_1\, B => \cnt[22]_net_1\, C => 
        \un14_cntlto31_0_a2\, D => \un7_cntlto31_0_a3\, Y => 
        un7_cntlto31_0_0_0);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_113_3, B => \cnt[5]_net_1\, Y => 
        \un7_cntlto31_0_a2_1\);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNIH11P5[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNIQ15FN1[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt_RNID03VS[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \cnt_RNIERKJ61[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt_RNIUKA2Q[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[21]_net_1\, B => \cnt[20]_net_1\, C => 
        \cnt[19]_net_1\, D => \cnt[18]_net_1\, Y => 
        \un14_cntlto31_0_o2_3\);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    un14_cntlto31_0_o3_RNIAU8S2 : ARI1
      generic map(INIT => x"4F444")

      port map(A => N_303_tz, B => \cnt[25]_net_1\, C => 
        \un14_cntlto31_0_o3\, D => \un14_cntlto31_0_a2\, FCI => 
        VCC_net_1, S => OPEN, Y => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        FCO => cnt_cry_cy);
    
    \cnt_RNI2BHIB[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \cnt_RNIQURI12[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt_RNI31Q8K[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt_RNIPUU6U1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[9]_net_1\, B => \cnt[8]_net_1\, C => 
        \cnt[7]_net_1\, D => \cnt[6]_net_1\, Y => N_113_3);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    \cnt_RNICH9FE[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt_RNIV8BNG1[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt_RNIGAI5N[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"F7F5")

      port map(A => \cnt[14]_net_1\, B => \cnt[10]_net_1\, C => 
        \un14_cntlto31_0_o2_0\, D => N_113_3, Y => 
        \un14_cntlto31_0_o3_0\);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    un7_cntlto31_0_a3 : CFG4
      generic map(INIT => x"000D")

      port map(A => \cnt[23]_net_1\, B => \un7_cntlto31_0_a2\, C
         => \cnt[25]_net_1\, D => \cnt[24]_net_1\, Y => 
        \un7_cntlto31_0_a3\);
    
    \cnt_RNI8CLMB2[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => \cnt[25]_net_1\, B => \un14_cntlto31_0_o2_3\, 
        C => \cnt[17]_net_1\, Y => \un14_cntlto31_0_a2\);
    
    \cnt_RNIS483K1[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    \cnt_RNINO1CH[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        \un7_cntlto31_0_a2_0\, D => \cnt[22]_net_1\, Y => 
        \un7_cntlto31_0_a2\);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    un14_cntlto31_0_o3_0_RNI71EM1 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        \un14_cntlto31_0_o3_0\, D => \cnt[23]_net_1\, Y => 
        N_303_tz);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
    \cnt_RNIPV1RQ1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIAU8S2_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt[21]\ : SLE
      port map(D => \cnt_s[21]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[21]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity Reset_out is

    port( reset : out   std_logic;
          clk_c : in    std_logic;
          SW1_c : in    std_logic;
          SW2_c : in    std_logic
        );

end Reset_out;

architecture DEF_ARCH of Reset_out is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

    signal reset_0, VCC_net_1, un2_sw1_i_0, GND_net_1
         : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    reset_RNIREK : CLKINT
      port map(A => reset_0, Y => reset);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    reset_RNO : CFG2
      generic map(INIT => x"7")

      port map(A => SW1_c, B => SW2_c, Y => un2_sw1_i_0);
    
    \reset\ : SLE
      port map(D => un2_sw1_i_0, CLK => clk_c, EN => VCC_net_1, 
        ALn => VCC_net_1, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => reset_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity ClkGenNoSwitch is

    port( led0  : out   std_logic;
          reset : in    std_logic;
          clk_c : in    std_logic
        );

end ClkGenNoSwitch;

architecture DEF_ARCH of ClkGenNoSwitch is 

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \un7_cntlto31_0\, GND_net_1, 
        \cnt[0]_net_1\, \cnt_s[0]\, \cnt[1]_net_1\, \cnt_s[1]\, 
        \cnt[2]_net_1\, \cnt_s[2]\, \cnt[3]_net_1\, \cnt_s[3]\, 
        \cnt[4]_net_1\, \cnt_s[4]\, \cnt[5]_net_1\, \cnt_s[5]\, 
        \cnt[6]_net_1\, \cnt_s[6]\, \cnt[7]_net_1\, \cnt_s[7]\, 
        \cnt[8]_net_1\, \cnt_s[8]\, \cnt[9]_net_1\, \cnt_s[9]\, 
        \cnt[10]_net_1\, \cnt_s[10]\, \cnt[11]_net_1\, 
        \cnt_s[11]\, \cnt[12]_net_1\, \cnt_s[12]\, 
        \cnt[13]_net_1\, \cnt_s[13]\, \cnt[14]_net_1\, 
        \cnt_s[14]\, \cnt[15]_net_1\, \cnt_s[15]\, 
        \cnt[16]_net_1\, \cnt_s[16]\, \cnt[17]_net_1\, 
        \cnt_s[17]\, \cnt[18]_net_1\, \cnt_s[18]\, 
        \cnt[19]_net_1\, \cnt_s[19]\, \cnt[20]_net_1\, 
        \cnt_s[20]\, \cnt[21]_net_1\, \cnt_s[21]\, 
        \cnt[22]_net_1\, \cnt_s[22]\, \cnt[23]_net_1\, 
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, N_41, 
        \cnt_s[25]\, cnt_cry_cy, un14_cntlto31_0_o3_RNIJL5T1_Y, 
        N_301_tz, N_16, N_30, \cnt_cry[0]\, \cnt_cry[1]\, 
        \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, \cnt_cry[5]\, 
        \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, \cnt_cry[9]\, 
        \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, \cnt_cry[23]\, N_8, N_9, N_31_3, N_31, 
        N_18, N_32, N_33, N_28 : std_logic;

begin 


    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[13]_net_1\, B => \cnt[12]_net_1\, C => 
        \cnt[11]_net_1\, Y => N_9);
    
    \cnt_RNI6L9HQ[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNI5I8M51[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    tmp_clk : SLE
      port map(D => \un7_cntlto31_0\, CLK => clk_c, EN => 
        VCC_net_1, ALn => reset, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => led0);
    
    \cnt[2]\ : SLE
      port map(D => \cnt_s[2]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[2]_net_1\);
    
    \cnt[8]\ : SLE
      port map(D => \cnt_s[8]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[8]_net_1\);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNIS9F711[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[22]_net_1\, B => N_8, C => 
        \cnt[24]_net_1\, D => \cnt[23]_net_1\, Y => N_16);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    un7_cntlto31_0_a2_0 : CFG4
      generic map(INIT => x"3331")

      port map(A => \cnt[10]_net_1\, B => \cnt[14]_net_1\, C => 
        N_31, D => N_9, Y => N_32);
    
    \cnt_RNI7QHQJ[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt_RNI9N20V[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    un7_cntlto31_0 : CFG4
      generic map(INIT => x"FF10")

      port map(A => \cnt[24]_net_1\, B => \cnt[22]_net_1\, C => 
        N_30, D => N_28, Y => \un7_cntlto31_0\);
    
    \cnt_RNIK09RG1[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    un14_cntlto31_0_o3_0_RNI3AVC1 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        N_18, D => \cnt[23]_net_1\, Y => N_301_tz);
    
    \cnt_RNILFRRA[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt_RNI6JM2J1[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    \cnt_RNIM5T9O[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \cnt_RNIIGGC6[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_31_3, B => \cnt[5]_net_1\, Y => N_31);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNI16SIH[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    \cnt_RNIN5MOS[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt_RNIR7LT71[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    \cnt_RNIEF72M[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[21]_net_1\, B => \cnt[20]_net_1\, C => 
        \cnt[19]_net_1\, D => \cnt[18]_net_1\, Y => N_8);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    \cnt_RNIO0H3D[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt_RNIJV5K8[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \cnt_RNIP64AL1[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[9]_net_1\, B => \cnt[8]_net_1\, C => 
        \cnt[7]_net_1\, D => \cnt[6]_net_1\, Y => N_31_3);
    
    \cnt_RNISI6BF[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt_RNII2R44[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNI3FRJE1[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => N_41);
    
    un14_cntlto31_0_o3_RNIJL5T1 : ARI1
      generic map(INIT => x"4CE0A")

      port map(A => N_301_tz, B => N_16, C => N_30, D => N_41, 
        FCI => VCC_net_1, S => OPEN, Y => 
        un14_cntlto31_0_o3_RNIJL5T1_Y, FCO => cnt_cry_cy);
    
    \cnt_RNIAMECC1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    \cnt_RNIGTRE31[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"FF73")

      port map(A => \cnt[10]_net_1\, B => \cnt[14]_net_1\, C => 
        N_31_3, D => N_9, Y => N_18);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    un7_cntlto31_0_a3 : CFG4
      generic map(INIT => x"1011")

      port map(A => \cnt[24]_net_1\, B => N_41, C => N_33, D => 
        \cnt[23]_net_1\, Y => N_28);
    
    \cnt_RNIDRHHN1[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => N_41, B => N_8, C => \cnt[17]_net_1\, Y => 
        N_30);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    \cnt_RNIIU15A1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt_RNI2HVOP1[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIJL5T1_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_s[25]\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        N_32, D => \cnt[22]_net_1\, Y => N_33);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
    \cnt[21]\ : SLE
      port map(D => \cnt_s[21]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[21]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity Display is

    port( green_led1_c : out   std_logic;
          reset        : in    std_logic;
          clk_c        : in    std_logic;
          red_led2_c   : out   std_logic;
          SW2_c        : in    std_logic;
          SW1_c        : in    std_logic;
          led1         : in    std_logic;
          led2         : in    std_logic;
          led          : in    std_logic;
          led0         : in    std_logic
        );

end Display;

architecture DEF_ARCH of Display is 

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \green_led1_4\, GND_net_1, \red_led2_3\
         : std_logic;

begin 


    red_led2_3 : CFG4
      generic map(INIT => x"F2D0")

      port map(A => SW2_c, B => SW1_c, C => led1, D => led2, Y
         => \red_led2_3\);
    
    red_led2 : SLE
      port map(D => \red_led2_3\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => red_led2_c);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    green_led1 : SLE
      port map(D => \green_led1_4\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => green_led1_c);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    green_led1_4 : CFG4
      generic map(INIT => x"FB40")

      port map(A => SW2_c, B => SW1_c, C => led, D => led0, Y => 
        \green_led1_4\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity ClkGen is

    port( led   : out   std_logic;
          reset : in    std_logic;
          clk_c : in    std_logic;
          SW1_c : in    std_logic
        );

end ClkGen;

architecture DEF_ARCH of ClkGen is 

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \un7_cntlto31_0_0\, GND_net_1, 
        \cnt[0]_net_1\, \cnt_s[0]\, \cnt[1]_net_1\, \cnt_s[1]\, 
        \cnt[2]_net_1\, \cnt_s[2]\, \cnt[3]_net_1\, \cnt_s[3]\, 
        \cnt[4]_net_1\, \cnt_s[4]\, \cnt[5]_net_1\, \cnt_s[5]\, 
        \cnt[6]_net_1\, \cnt_s[6]\, \cnt[7]_net_1\, \cnt_s[7]\, 
        \cnt[8]_net_1\, \cnt_s[8]\, \cnt[9]_net_1\, \cnt_s[9]\, 
        \cnt[10]_net_1\, \cnt_s[10]\, \cnt[11]_net_1\, 
        \cnt_s[11]\, \cnt[12]_net_1\, \cnt_s[12]\, 
        \cnt[13]_net_1\, \cnt_s[13]\, \cnt[14]_net_1\, 
        \cnt_s[14]\, \cnt[15]_net_1\, \cnt_s[15]\, 
        \cnt[16]_net_1\, \cnt_s[16]\, \cnt[17]_net_1\, 
        \cnt_s[17]\, \cnt[18]_net_1\, \cnt_s[18]\, 
        \cnt[19]_net_1\, \cnt_s[19]\, \cnt[20]_net_1\, 
        \cnt_s[20]\, \cnt[21]_net_1\, \cnt_s[21]\, 
        \cnt[22]_net_1\, \cnt_s[22]\, \cnt[23]_net_1\, 
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, cnt_cry_cy, 
        un14_cntlto31_0_o3_RNIVUD32_Y, N_302_tz, 
        un14_cntlto31_0_o3_1, un14_cntlto31_0_a2_1, \cnt_cry[0]\, 
        \cnt_cry[1]\, \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, 
        \cnt_cry[5]\, \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, 
        \cnt_cry[9]\, \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, un14_cntlto31_0_o2_3_1, 
        un14_cntlto31_0_o2_0_0, N_61_3, un7_cntlto31_0_a2_1_0, 
        un14_cntlto31_0_o3_0_0, un7_cntlto31_0_a2_0_0, 
        un7_cntlto31_0_a2_2, un7_cntlto31_0_a3_0 : std_logic;

begin 


    \cnt_RNIHPV291[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[12]_net_1\, B => \cnt[11]_net_1\, C => 
        \cnt[10]_net_1\, Y => un14_cntlto31_0_o2_0_0);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNIMPT37[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    tmp_clk : SLE
      port map(D => \un7_cntlto31_0_0\, CLK => clk_c, EN => SW1_c, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => led);
    
    \cnt_RNIGHKE41[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    \cnt[2]\ : SLE
      port map(D => \cnt_s[2]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[2]_net_1\);
    
    \cnt[8]\ : SLE
      port map(D => \cnt_s[8]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[8]_net_1\);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    \cnt_RNI9DAAP1[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNIVLMBI1[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt_RNI3F5DB1[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    \cnt_RNIQP30N1[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[21]_net_1\, B => un14_cntlto31_0_o2_3_1, 
        C => \cnt[23]_net_1\, D => \cnt[22]_net_1\, Y => 
        un14_cntlto31_0_o3_1);
    
    \cnt_RNIGPLKE[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    \cnt_RNI1VE421[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    un7_cntlto31_0_a2_0 : CFG4
      generic map(INIT => x"5551")

      port map(A => \cnt[13]_net_1\, B => \cnt[9]_net_1\, C => 
        un14_cntlto31_0_o2_0_0, D => un7_cntlto31_0_a2_1_0, Y => 
        un7_cntlto31_0_a2_0_0);
    
    \cnt_RNIM7MLO[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt_RNI05QO61[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt_RNIQDU5R[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \cnt_RNIJD9QV[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt_RNIATG1G1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    un7_cntlto31_0_0 : CFG4
      generic map(INIT => x"FF10")

      port map(A => \cnt[23]_net_1\, B => \cnt[21]_net_1\, C => 
        un14_cntlto31_0_a2_1, D => un7_cntlto31_0_a3_0, Y => 
        \un7_cntlto31_0_0\);
    
    un14_cntlto31_0_o3_0_RNI0H631 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[14]_net_1\, B => \cnt[15]_net_1\, C => 
        un14_cntlto31_0_o3_0_0, D => \cnt[22]_net_1\, Y => 
        N_302_tz);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \cnt_RNIGRT4H[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt_RNIJO5K9[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \cnt_RNIP1HKR1[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_s[24]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_61_3, B => \cnt[4]_net_1\, Y => 
        un7_cntlto31_0_a2_1_0);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNIC7TLK1[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt_RNIQRLJ4[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    un14_cntlto31_0_o3_RNIVUD32 : ARI1
      generic map(INIT => x"4F444")

      port map(A => N_302_tz, B => \cnt[24]_net_1\, C => 
        un14_cntlto31_0_o3_1, D => un14_cntlto31_0_a2_1, FCI => 
        VCC_net_1, S => OPEN, Y => un14_cntlto31_0_o3_RNIVUD32_Y, 
        FCO => cnt_cry_cy);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[20]_net_1\, B => \cnt[19]_net_1\, C => 
        \cnt[18]_net_1\, D => \cnt[17]_net_1\, Y => 
        un14_cntlto31_0_o2_3_1);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    \cnt_RNIHU5LJ[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[8]_net_1\, B => \cnt[7]_net_1\, C => 
        \cnt[6]_net_1\, D => \cnt[5]_net_1\, Y => N_61_3);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt_RNIHOD4C[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"F7F5")

      port map(A => \cnt[13]_net_1\, B => \cnt[9]_net_1\, C => 
        un14_cntlto31_0_o2_0_0, D => N_61_3, Y => 
        un14_cntlto31_0_o3_0_0);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    \cnt_RNI6T3GT[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    un7_cntlto31_0_a3 : CFG4
      generic map(INIT => x"000D")

      port map(A => \cnt[22]_net_1\, B => un7_cntlto31_0_a2_2, C
         => \cnt[24]_net_1\, D => \cnt[23]_net_1\, Y => 
        un7_cntlto31_0_a3_0);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => \cnt[24]_net_1\, B => un14_cntlto31_0_o2_3_1, 
        C => \cnt[16]_net_1\, Y => un14_cntlto31_0_a2_1);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    \cnt_RNIJ2E5M[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[14]_net_1\, B => \cnt[15]_net_1\, C => 
        un7_cntlto31_0_a2_0_0, D => \cnt[21]_net_1\, Y => 
        un7_cntlto31_0_a2_2);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
    \cnt_RNIM5BND1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIVUD32_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt[21]\ : SLE
      port map(D => \cnt_s[21]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[21]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity LedBlinkingDSpeed is

    port( clk        : in    std_logic;
          SW1        : in    std_logic;
          SW2        : in    std_logic;
          green_led1 : out   std_logic;
          red_led1   : out   std_logic;
          green_led2 : out   std_logic;
          red_led2   : out   std_logic
        );

end LedBlinkingDSpeed;

architecture DEF_ARCH of LedBlinkingDSpeed is 

  component OUTBUF
    generic (IOSTD:string := "");

    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component ClkGenNoSwitch_1
    port( led1  : out   std_logic;
          reset : in    std_logic := 'U';
          clk_c : in    std_logic := 'U'
        );
  end component;

  component ClkGen_1
    port( led2  : out   std_logic;
          reset : in    std_logic := 'U';
          clk_c : in    std_logic := 'U';
          SW2_c : in    std_logic := 'U'
        );
  end component;

  component INBUF
    generic (IOSTD:string := "");

    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component Reset_out
    port( reset : out   std_logic;
          clk_c : in    std_logic := 'U';
          SW1_c : in    std_logic := 'U';
          SW2_c : in    std_logic := 'U'
        );
  end component;

  component ClkGenNoSwitch
    port( led0  : out   std_logic;
          reset : in    std_logic := 'U';
          clk_c : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component Display
    port( green_led1_c : out   std_logic;
          reset        : in    std_logic := 'U';
          clk_c        : in    std_logic := 'U';
          red_led2_c   : out   std_logic;
          SW2_c        : in    std_logic := 'U';
          SW1_c        : in    std_logic := 'U';
          led1         : in    std_logic := 'U';
          led2         : in    std_logic := 'U';
          led          : in    std_logic := 'U';
          led0         : in    std_logic := 'U'
        );
  end component;

  component ClkGen
    port( led   : out   std_logic;
          reset : in    std_logic := 'U';
          clk_c : in    std_logic := 'U';
          SW1_c : in    std_logic := 'U'
        );
  end component;

    signal reset, GND_net_1, VCC_net_1, led0, led, led1, led2, 
        clk_c, SW1_c, SW2_c, green_led1_c, red_led2_c, \clk_ibuf\
         : std_logic;

    for all : ClkGenNoSwitch_1
	Use entity work.ClkGenNoSwitch_1(DEF_ARCH);
    for all : ClkGen_1
	Use entity work.ClkGen_1(DEF_ARCH);
    for all : Reset_out
	Use entity work.Reset_out(DEF_ARCH);
    for all : ClkGenNoSwitch
	Use entity work.ClkGenNoSwitch(DEF_ARCH);
    for all : Display
	Use entity work.Display(DEF_ARCH);
    for all : ClkGen
	Use entity work.ClkGen(DEF_ARCH);
begin 


    red_led2_obuf : OUTBUF
      port map(D => red_led2_c, PAD => red_led2);
    
    Initial_blinking_SW2 : ClkGenNoSwitch_1
      port map(led1 => led1, reset => reset, clk_c => clk_c);
    
    Fast_clk_SW2 : ClkGen_1
      port map(led2 => led2, reset => reset, clk_c => clk_c, 
        SW2_c => SW2_c);
    
    clk_ibuf : INBUF
      port map(PAD => clk, Y => \clk_ibuf\);
    
    Clear_outputs : Reset_out
      port map(reset => reset, clk_c => clk_c, SW1_c => SW1_c, 
        SW2_c => SW2_c);
    
    red_led1_obuf : OUTBUF
      port map(D => GND_net_1, PAD => red_led1);
    
    Initial_blinking_SW1 : ClkGenNoSwitch
      port map(led0 => led0, reset => reset, clk_c => clk_c);
    
    green_led1_obuf : OUTBUF
      port map(D => green_led1_c, PAD => green_led1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    clk_ibuf_RNIVTI2 : CLKINT
      port map(A => \clk_ibuf\, Y => clk_c);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    green_led2_obuf : OUTBUF
      port map(D => GND_net_1, PAD => green_led2);
    
    SW2_ibuf : INBUF
      port map(PAD => SW2, Y => SW2_c);
    
    Display_out : Display
      port map(green_led1_c => green_led1_c, reset => reset, 
        clk_c => clk_c, red_led2_c => red_led2_c, SW2_c => SW2_c, 
        SW1_c => SW1_c, led1 => led1, led2 => led2, led => led, 
        led0 => led0);
    
    SW1_ibuf : INBUF
      port map(PAD => SW1, Y => SW1_c);
    
    Fast_clk_SW1 : ClkGen
      port map(led => led, reset => reset, clk_c => clk_c, SW1_c
         => SW1_c);
    

end DEF_ARCH; 
