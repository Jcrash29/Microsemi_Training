-- Version: v11.7 SP1 11.7.1.11

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
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

    signal VCC_net_1, \tmp_clk_RNO\, GND_net_1, \cnt[0]_net_1\, 
        \cnt_s[0]\, \cnt[1]_net_1\, \cnt_s[1]\, \cnt[2]_net_1\, 
        \cnt_s[2]\, \cnt[3]_net_1\, \cnt_s[3]\, \cnt[4]_net_1\, 
        \cnt_s[4]\, \cnt[5]_net_1\, \cnt_s[5]\, \cnt[6]_net_1\, 
        \cnt_s[6]\, \cnt[7]_net_1\, \cnt_s[7]\, \cnt[8]_net_1\, 
        \cnt_s[8]\, \cnt[9]_net_1\, \cnt_s[9]\, \cnt[10]_net_1\, 
        \cnt_s[10]\, \cnt[11]_net_1\, \cnt_s[11]\, 
        \cnt[12]_net_1\, \cnt_s[12]\, \cnt[13]_net_1\, 
        \cnt_s[13]\, \cnt[14]_net_1\, \cnt_s[14]\, 
        \cnt[15]_net_1\, \cnt_s[15]\, \cnt[16]_net_1\, 
        \cnt_s[16]\, \cnt[17]_net_1\, \cnt_s[17]\, 
        \cnt[18]_net_1\, \cnt_s[18]\, \cnt[19]_net_1\, 
        \cnt_s[19]\, \cnt[20]_net_1\, \cnt_s[20]\, 
        \cnt[21]_net_1\, \cnt_s[21]\, \cnt[22]_net_1\, 
        \cnt_s[22]\, \cnt[23]_net_1\, \cnt_s[23]\, 
        \cnt[24]_net_1\, \cnt_s[24]\, \cnt[25]_net_1\, 
        \cnt_s[25]\, \cnt[26]_net_1\, \cnt_s[26]\, 
        \cnt[27]_net_1\, \cnt_s[27]\, cnt_cry_cy, 
        \cnt_RNIOCCK2_Y[27]\, N_103, \cnt_cry[0]\, \cnt_cry[1]\, 
        \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, \cnt_cry[5]\, 
        \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, \cnt_cry[9]\, 
        \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, \cnt_cry[23]\, \cnt_cry[24]\, 
        \cnt_cry[25]\, N_94, m39_e_1, N_105, m21_e_2, m30_e_1, 
        m13_e_1, N_176, N_88, N_87, N_93 : std_logic;

begin 


    \cnt_RNI4GAR1[17]\ : CFG4
      generic map(INIT => x"010F")

      port map(A => \cnt[17]_net_1\, B => N_87, C => 
        \cnt[19]_net_1\, D => \cnt[18]_net_1\, Y => N_93);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNI819V42[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[22]_net_1\, D => GND_net_1, FCI => \cnt_cry[21]\, S
         => \cnt_s[22]\, Y => OPEN, FCO => \cnt_cry[22]\);
    
    tmp_clk_RNO_0 : CFG4
      generic map(INIT => x"3331")

      port map(A => \cnt[23]_net_1\, B => \cnt[24]_net_1\, C => 
        N_94, D => m39_e_1, Y => N_105);
    
    \cnt_RNIAH0SB[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, S
         => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \cnt[27]\ : SLE
      port map(D => \cnt_s[27]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[27]_net_1\);
    
    tmp_clk : SLE
      port map(D => \tmp_clk_RNO\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => led1);
    
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
    
    \cnt_RNIAIOQH1[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[15]_net_1\, D => GND_net_1, FCI => \cnt_cry[14]\, S
         => \cnt_s[15]\, Y => OPEN, FCO => \cnt_cry[15]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNIRE31I[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, S
         => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt_RNI5VK3L[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, S
         => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt_RNISP9K91[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[12]_net_1\, D => GND_net_1, FCI => \cnt_cry[11]\, S
         => \cnt_s[12]\, Y => OPEN, FCO => \cnt_cry[12]\);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    tmp_clk_RNO : CFG4
      generic map(INIT => x"000D")

      port map(A => \cnt[25]_net_1\, B => N_105, C => 
        \cnt[27]_net_1\, D => \cnt[26]_net_1\, Y => \tmp_clk_RNO\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    \cnt_RNIOCCK2[27]\ : ARI1
      generic map(INIT => x"40037")

      port map(A => \cnt[27]_net_1\, B => N_103, C => 
        \cnt[26]_net_1\, D => \cnt[25]_net_1\, FCI => VCC_net_1, 
        S => OPEN, Y => \cnt_RNIOCCK2_Y[27]\, FCO => cnt_cry_cy);
    
    \cnt_RNILBPBC1[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[13]_net_1\, D => GND_net_1, FCI => \cnt_cry[12]\, S
         => \cnt_s[13]\, Y => OPEN, FCO => \cnt_cry[13]\);
    
    \cnt_RNI8JG21[10]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[11]_net_1\, B => \cnt[10]_net_1\, C => 
        \cnt[9]_net_1\, D => \cnt[8]_net_1\, Y => N_176);
    
    \cnt_RNI9EVA2[20]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \cnt[20]_net_1\, B => \cnt[23]_net_1\, C => 
        N_93, D => m21_e_2, Y => N_103);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt_RNIMMBTF2[26]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[26]_net_1\, D => GND_net_1, FCI => \cnt_cry[25]\, S
         => \cnt_s[26]\, Y => OPEN, FCO => \cnt_s[27]\);
    
    \cnt_RNI1K71Q1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[18]_net_1\, D => GND_net_1, FCI => \cnt_cry[17]\, S
         => \cnt_s[18]\, Y => OPEN, FCO => \cnt_cry[18]\);
    
    \cnt_RNI0CNOS1[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[19]_net_1\, D => GND_net_1, FCI => \cnt_cry[18]\, S
         => \cnt_s[19]\, Y => OPEN, FCO => \cnt_cry[19]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    tmp_clk_RNO_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \cnt[15]_net_1\, B => \cnt[14]_net_1\, C => 
        \cnt[13]_net_1\, D => \cnt[12]_net_1\, Y => m30_e_1);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \cnt_RNI2LPM72[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[23]_net_1\, D => GND_net_1, FCI => \cnt_cry[22]\, S
         => \cnt_s[23]\, Y => OPEN, FCO => \cnt_cry[23]\);
    
    \cnt_RNIFU83F1[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[14]_net_1\, D => GND_net_1, FCI => \cnt_cry[13]\, S
         => \cnt_s[14]\, Y => OPEN, FCO => \cnt_cry[14]\);
    
    \cnt_RNIAQCC[13]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \cnt[16]_net_1\, B => \cnt[15]_net_1\, C => 
        \cnt[14]_net_1\, D => \cnt[13]_net_1\, Y => m13_e_1);
    
    tmp_clk_RNO_1 : CFG4
      generic map(INIT => x"010F")

      port map(A => \cnt[16]_net_1\, B => N_88, C => 
        \cnt[18]_net_1\, D => \cnt[17]_net_1\, Y => N_94);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    tmp_clk_RNO_3 : CFG3
      generic map(INIT => x"8C")

      port map(A => \cnt[7]_net_1\, B => m30_e_1, C => N_176, Y
         => N_88);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNINARD11[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, S
         => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt_RNIFEO722[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[21]_net_1\, D => GND_net_1, FCI => \cnt_cry[20]\, S
         => \cnt_s[21]\, Y => OPEN, FCO => \cnt_cry[21]\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    \cnt_RNITNTM5[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S => 
        \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNIDPA541[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, S
         => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    \cnt_RNIT9AEA2[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[24]_net_1\, D => GND_net_1, FCI => \cnt_cry[23]\, S
         => \cnt_s[24]\, Y => OPEN, FCO => \cnt_cry[24]\);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt_RNIIH0I1[12]\ : CFG3
      generic map(INIT => x"8C")

      port map(A => \cnt[12]_net_1\, B => m13_e_1, C => N_176, Y
         => N_87);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    tmp_clk_RNO_2 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[22]_net_1\, B => \cnt[21]_net_1\, C => 
        \cnt[20]_net_1\, D => \cnt[19]_net_1\, Y => m39_e_1);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    \cnt_RNI678IK1[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[16]_net_1\, D => GND_net_1, FCI => \cnt_cry[15]\, S
         => \cnt_s[16]\, Y => OPEN, FCO => \cnt_cry[16]\);
    
    \cnt_RNI4JC9[21]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \cnt[24]_net_1\, B => \cnt[22]_net_1\, C => 
        \cnt[21]_net_1\, Y => m21_e_2);
    
    \cnt_RNIS2O8R[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, S
         => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    \cnt_RNI9M9BU[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, S
         => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \cnt_RNI34FP8[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, S
         => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt_RNI49QS61[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[11]_net_1\, D => GND_net_1, FCI => \cnt_cry[10]\, S
         => \cnt_s[11]\, Y => OPEN, FCO => \cnt_cry[11]\);
    
    \cnt_RNIPVQ5D2[25]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[25]_net_1\, D => GND_net_1, FCI => \cnt_cry[24]\, S
         => \cnt_s[25]\, Y => OPEN, FCO => \cnt_cry[25]\);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt_RNIGG66O[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, S
         => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    \cnt_RNIIVHUE[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, S
         => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    \cnt_RNI3TN9N1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[17]_net_1\, D => GND_net_1, FCI => \cnt_cry[16]\, S
         => \cnt_s[17]\, Y => OPEN, FCO => \cnt_cry[17]\);
    
    \cnt_RNINS7GV1[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \cnt_RNIOCCK2_Y[27]\, C => 
        \cnt[20]_net_1\, D => GND_net_1, FCI => \cnt_cry[19]\, S
         => \cnt_s[20]\, Y => OPEN, FCO => \cnt_cry[20]\);
    
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
        \cnt[25]_net_1\, \cnt_s[25]\, \cnt[26]_net_1\, 
        \cnt_s[26]\, cnt_cry_cy, un14_cntlto31_0_o3_RNIE29S2_Y, 
        N_314_tz, \un14_cntlto31_0_o3\, \un14_cntlto31_0_a2\, 
        \cnt_cry[0]\, \cnt_cry[1]\, \cnt_cry[2]\, \cnt_cry[3]\, 
        \cnt_cry[4]\, \cnt_cry[5]\, \cnt_cry[6]\, \cnt_cry[7]\, 
        \cnt_cry[8]\, \cnt_cry[9]\, \cnt_cry[10]\, \cnt_cry[11]\, 
        \cnt_cry[12]\, \cnt_cry[13]\, \cnt_cry[14]\, 
        \cnt_cry[15]\, \cnt_cry[16]\, \cnt_cry[17]\, 
        \cnt_cry[18]\, \cnt_cry[19]\, \cnt_cry[20]\, 
        \cnt_cry[21]\, \cnt_cry[22]\, \cnt_cry[23]\, 
        \cnt_cry[24]\, \un14_cntlto31_0_o2_3\, 
        \un14_cntlto31_0_o2_0\, N_125_3, \un7_cntlto31_0_a2_1\, 
        \un14_cntlto31_0_o3_0\, \un7_cntlto31_0_a2_0\, 
        \un7_cntlto31_0_a2\, \un7_cntlto31_0_a3\ : std_logic;

begin 


    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[14]_net_1\, B => \cnt[13]_net_1\, C => 
        \cnt[12]_net_1\, Y => \un14_cntlto31_0_o2_0\);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    un14_cntlto31_0_o3_RNIE29S2 : ARI1
      generic map(INIT => x"4F444")

      port map(A => N_314_tz, B => \cnt[26]_net_1\, C => 
        \un14_cntlto31_0_o3\, D => \un14_cntlto31_0_a2\, FCI => 
        VCC_net_1, S => OPEN, Y => un14_cntlto31_0_o3_RNIE29S2_Y, 
        FCO => cnt_cry_cy);
    
    tmp_clk : SLE
      port map(D => un7_cntlto31_0_0_0, CLK => clk_c, EN => SW2_c, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => led2);
    
    \cnt[2]\ : SLE
      port map(D => \cnt_s[2]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[2]_net_1\);
    
    \cnt_RNI8FM2F2[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    \cnt[8]\ : SLE
      port map(D => \cnt_s[8]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[8]_net_1\);
    
    \cnt[26]\ : SLE
      port map(D => \cnt_s[26]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[26]_net_1\);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    \cnt_RNI9QSRV[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNIL94VS[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    un14_cntlto31_0_o3_0_RNIA4EM1 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[16]_net_1\, B => \cnt[17]_net_1\, C => 
        \un14_cntlto31_0_o3_0\, D => \cnt[24]_net_1\, Y => 
        N_314_tz);
    
    \cnt_RNI5IPL8[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt_RNI2C7FN1[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[23]_net_1\, B => \un14_cntlto31_0_o2_3\, 
        C => \cnt[25]_net_1\, D => \cnt[24]_net_1\, Y => 
        \un14_cntlto31_0_o3\);
    
    \cnt_RNIBISU42[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
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

      port map(A => \cnt[15]_net_1\, B => \cnt[11]_net_1\, C => 
        \un14_cntlto31_0_o2_0\, D => \un7_cntlto31_0_a2_1\, Y => 
        \un7_cntlto31_0_a2_0\);
    
    \cnt_RNI9GQA82[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    \cnt_RNI9GKEI2[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_cry[24]\);
    
    \cnt_RNIVBGBD1[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    \cnt_RNI0BA3K1[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt_RNI2QB2Q[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt_RNIVADNG1[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    \cnt_RNIGBJ5N[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    \cnt_RNIBIIQL2[25]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[25]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[24]\, S => \cnt_s[25]\, Y => OPEN, FCO => 
        \cnt_s[26]\);
    
    \cnt_RNI5LP731[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    \cnt_RNI5E4RQ1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt_RNI0EJV91[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    un7_cntlto31_0_0 : CFG4
      generic map(INIT => x"FF10")

      port map(A => \cnt[25]_net_1\, B => \cnt[23]_net_1\, C => 
        \un14_cntlto31_0_a2\, D => \un7_cntlto31_0_a3\, Y => 
        un7_cntlto31_0_0_0);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \cnt_RNIIRHIB[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \cnt_RNI8FOMB2[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_125_3, B => \cnt[6]_net_1\, Y => 
        \un7_cntlto31_0_a2_1\);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNI2HMJ61[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt_RNI06AFE[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[22]_net_1\, B => \cnt[21]_net_1\, C => 
        \cnt[20]_net_1\, D => \cnt[19]_net_1\, Y => 
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
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[10]_net_1\, B => \cnt[9]_net_1\, C => 
        \cnt[8]_net_1\, D => \cnt[7]_net_1\, Y => N_125_3);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"F7F5")

      port map(A => \cnt[15]_net_1\, B => \cnt[11]_net_1\, C => 
        \un14_cntlto31_0_o2_0\, D => N_125_3, Y => 
        \un14_cntlto31_0_o3_0\);
    
    \cnt_RNIFH2CH[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt[22]\ : SLE
      port map(D => \cnt_s[22]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[22]_net_1\);
    
    \cnt[15]\ : SLE
      port map(D => \cnt_s[15]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[15]_net_1\);
    
    \cnt_RNIVTQ8K[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt[24]\ : SLE
      port map(D => \cnt_s[24]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[24]_net_1\);
    
    un7_cntlto31_0_a3 : CFG4
      generic map(INIT => x"000D")

      port map(A => \cnt[24]_net_1\, B => \un7_cntlto31_0_a2\, C
         => \cnt[26]_net_1\, D => \cnt[25]_net_1\, Y => 
        \un7_cntlto31_0_a3\);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => \cnt[26]_net_1\, B => \un14_cntlto31_0_o2_3\, 
        C => \cnt[18]_net_1\, Y => \un14_cntlto31_0_a2\);
    
    \cnt_RNIP91P5[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNIELUI12[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[16]_net_1\, B => \cnt[17]_net_1\, C => 
        \un7_cntlto31_0_a2_0\, D => \cnt[23]_net_1\, Y => 
        \un7_cntlto31_0_a2\);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    \cnt_RNI9H17U1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNIE29S2_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => SW2_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
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
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, 
        \cnt[25]_net_1\, \cnt_s[25]\, N_39, \cnt_s[26]\, 
        cnt_cry_cy, un14_cntlto31_0_o3_RNINP5T1_Y, N_312_tz, N_16, 
        N_29, \cnt_cry[0]\, \cnt_cry[1]\, \cnt_cry[2]\, 
        \cnt_cry[3]\, \cnt_cry[4]\, \cnt_cry[5]\, \cnt_cry[6]\, 
        \cnt_cry[7]\, \cnt_cry[8]\, \cnt_cry[9]\, \cnt_cry[10]\, 
        \cnt_cry[11]\, \cnt_cry[12]\, \cnt_cry[13]\, 
        \cnt_cry[14]\, \cnt_cry[15]\, \cnt_cry[16]\, 
        \cnt_cry[17]\, \cnt_cry[18]\, \cnt_cry[19]\, 
        \cnt_cry[20]\, \cnt_cry[21]\, \cnt_cry[22]\, 
        \cnt_cry[23]\, \cnt_cry[24]\, N_9, N_6, N_30_3, N_30, 
        N_18, N_31, N_32, N_27 : std_logic;

begin 


    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[14]_net_1\, B => \cnt[13]_net_1\, C => 
        \cnt[12]_net_1\, Y => N_6);
    
    \cnt_RNI9OAM51[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNIO7H711[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
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
    
    \cnt[26]\ : SLE
      port map(D => \cnt_s[26]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => N_39);
    
    \cnt[1]\ : SLE
      port map(D => \cnt_s[1]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[1]_net_1\);
    
    un14_cntlto31_0_o3_0_RNI6DVC1 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[16]_net_1\, B => \cnt[17]_net_1\, C => 
        N_18, D => \cnt[24]_net_1\, Y => N_312_tz);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    \cnt_RNI2JU9O[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \cnt_RNIQ8HCC1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[23]_net_1\, B => N_9, C => 
        \cnt[25]_net_1\, D => \cnt[24]_net_1\, Y => N_16);
    
    un14_cntlto31_0_o3_RNINP5T1 : ARI1
      generic map(INIT => x"4CE0A")

      port map(A => N_312_tz, B => N_16, C => N_29, D => N_39, 
        FCI => VCC_net_1, S => OPEN, Y => 
        un14_cntlto31_0_o3_RNINP5T1_Y, FCO => cnt_cry_cy);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    \cnt_RNI3INT71[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    un7_cntlto31_0_a2_0 : CFG4
      generic map(INIT => x"3331")

      port map(A => \cnt[11]_net_1\, B => \cnt[15]_net_1\, C => 
        N_30, D => N_6, Y => N_31);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt_RNIUC45A1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt_RNI1H40V[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt_RNIP97AL1[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    \cnt_RNIM6BHQ[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
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

      port map(A => \cnt[25]_net_1\, B => \cnt[23]_net_1\, C => 
        N_29, D => N_27, Y => \un7_cntlto31_0\);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \cnt_RNIBVIQJ[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt_RNIGPH3D[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \cnt_RNIQAR44[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNICRBRG1[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt_RNI3G6K8[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_30_3, B => \cnt[6]_net_1\, Y => N_30);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNIOF7BF[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt_RNIMO82M[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[22]_net_1\, B => \cnt[21]_net_1\, C => 
        \cnt[20]_net_1\, D => \cnt[19]_net_1\, Y => N_9);
    
    \cnt[18]\ : SLE
      port map(D => \cnt_s[18]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[18]_net_1\);
    
    \cnt_RNI4NG0S1[25]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[25]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[24]\, S => \cnt_s[25]\, Y => OPEN, FCO => 
        \cnt_s[26]\);
    
    \cnt[7]\ : SLE
      port map(D => \cnt_s[7]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[7]_net_1\);
    
    \cnt[10]\ : SLE
      port map(D => \cnt_s[10]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[10]_net_1\);
    
    \cnt_RNI94SRA[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    \cnt_RNIN5UJE1[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt_RNIH2LHN1[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    \cnt_RNIAS2PP1[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_cry[24]\);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[10]_net_1\, B => \cnt[9]_net_1\, C => 
        \cnt[8]_net_1\, D => \cnt[7]_net_1\, Y => N_30_3);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    \cnt_RNIUSGC6[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt_RNIGVTE31[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt_RNI17TIH[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    \cnt_RNIBRNOS[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    \cnt_RNI2IP2J1[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNINP5T1_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"FF73")

      port map(A => \cnt[11]_net_1\, B => \cnt[15]_net_1\, C => 
        N_30_3, D => N_6, Y => N_18);
    
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

      port map(A => \cnt[25]_net_1\, B => N_39, C => N_32, D => 
        \cnt[24]_net_1\, Y => N_27);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => N_39, B => N_9, C => \cnt[18]_net_1\, Y => 
        N_29);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => VCC_net_1, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[16]_net_1\, B => \cnt[17]_net_1\, C => 
        N_31, D => \cnt[23]_net_1\, Y => N_32);
    
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
        \cnt_s[23]\, \cnt[24]_net_1\, \cnt_s[24]\, 
        \cnt[25]_net_1\, \cnt_s[25]\, cnt_cry_cy, 
        un14_cntlto31_0_o3_RNI33E32_Y, N_313_tz, 
        un14_cntlto31_0_o3_1, un14_cntlto31_0_a2_0, \cnt_cry[0]\, 
        \cnt_cry[1]\, \cnt_cry[2]\, \cnt_cry[3]\, \cnt_cry[4]\, 
        \cnt_cry[5]\, \cnt_cry[6]\, \cnt_cry[7]\, \cnt_cry[8]\, 
        \cnt_cry[9]\, \cnt_cry[10]\, \cnt_cry[11]\, \cnt_cry[12]\, 
        \cnt_cry[13]\, \cnt_cry[14]\, \cnt_cry[15]\, 
        \cnt_cry[16]\, \cnt_cry[17]\, \cnt_cry[18]\, 
        \cnt_cry[19]\, \cnt_cry[20]\, \cnt_cry[21]\, 
        \cnt_cry[22]\, \cnt_cry[23]\, un14_cntlto31_0_o2_3_0, 
        un14_cntlto31_0_o2_0_0, N_59_3, un7_cntlto31_0_a2_1_0, 
        un14_cntlto31_0_o3_0_0, un7_cntlto31_0_a2_0_0, 
        un7_cntlto31_0_a2_2, un7_cntlto31_0_a3_0 : std_logic;

begin 


    \cnt_RNIJCPBI1[19]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[19]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[18]\, S => \cnt_s[19]\, Y => OPEN, FCO => 
        \cnt_cry[19]\);
    
    \cnt_RNIBP7DB1[16]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[16]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[15]\, S => \cnt_s[16]\, Y => OPEN, FCO => 
        \cnt_cry[16]\);
    
    un14_cntlto31_0_o2_0 : CFG3
      generic map(INIT => x"7F")

      port map(A => \cnt[13]_net_1\, B => \cnt[12]_net_1\, C => 
        \cnt[11]_net_1\, Y => un14_cntlto31_0_o2_0_0);
    
    \cnt[19]\ : SLE
      port map(D => \cnt_s[19]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[19]_net_1\);
    
    \cnt_RNI9GDAP1[22]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[22]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[21]\, S => \cnt_s[22]\, Y => OPEN, FCO => 
        \cnt_cry[22]\);
    
    \cnt_RNI07SO61[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[14]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[13]\, S => \cnt_s[14]\, Y => OPEN, FCO => 
        \cnt_cry[14]\);
    
    \cnt_RNI5DE4C[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[3]_net_1\, D => GND_net_1, FCI => \cnt_cry[2]\, 
        S => \cnt_s[3]\, Y => OPEN, FCO => \cnt_cry[3]\);
    
    tmp_clk : SLE
      port map(D => \un7_cntlto31_0_0\, CLK => clk_c, EN => SW1_c, 
        ALn => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => led);
    
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
    
    \cnt_RNI26U37[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[1]_net_1\, D => GND_net_1, FCI => \cnt_cry[0]\, 
        S => \cnt_s[1]\, Y => OPEN, FCO => \cnt_cry[1]\);
    
    \cnt[11]\ : SLE
      port map(D => \cnt_s[11]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[11]_net_1\);
    
    un14_cntlto31_0_o3 : CFG4
      generic map(INIT => x"0FDF")

      port map(A => \cnt[22]_net_1\, B => un14_cntlto31_0_o2_3_0, 
        C => \cnt[24]_net_1\, D => \cnt[23]_net_1\, Y => 
        un14_cntlto31_0_o3_1);
    
    \cnt_RNI8IMKE[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[4]_net_1\, D => GND_net_1, FCI => \cnt_cry[3]\, 
        S => \cnt_s[4]\, Y => OPEN, FCO => \cnt_cry[4]\);
    
    \cnt[17]\ : SLE
      port map(D => \cnt_s[17]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[17]_net_1\);
    
    un14_cntlto31_0_o3_RNI33E32 : ARI1
      generic map(INIT => x"4F444")

      port map(A => N_313_tz, B => \cnt[25]_net_1\, C => 
        un14_cntlto31_0_o3_1, D => un14_cntlto31_0_a2_0, FCI => 
        VCC_net_1, S => OPEN, Y => un14_cntlto31_0_o3_RNI33E32_Y, 
        FCO => cnt_cry_cy);
    
    \cnt[16]\ : SLE
      port map(D => \cnt_s[16]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[16]_net_1\);
    
    un7_cntlto31_0_a2_0 : CFG4
      generic map(INIT => x"5551")

      port map(A => \cnt[14]_net_1\, B => \cnt[10]_net_1\, C => 
        un14_cntlto31_0_o2_0_0, D => un7_cntlto31_0_a2_1_0, Y => 
        un7_cntlto31_0_a2_0_0);
    
    \cnt_RNI6RV5R[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[9]_net_1\, D => GND_net_1, FCI => \cnt_cry[8]\, 
        S => \cnt_s[9]\, Y => OPEN, FCO => \cnt_cry[9]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cnt[6]\ : SLE
      port map(D => \cnt_s[6]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[6]_net_1\);
    
    \cnt[4]\ : SLE
      port map(D => \cnt_s[4]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[4]_net_1\);
    
    \cnt[9]\ : SLE
      port map(D => \cnt_s[9]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[9]_net_1\);
    
    un7_cntlto31_0_0 : CFG4
      generic map(INIT => x"FF10")

      port map(A => \cnt[24]_net_1\, B => \cnt[22]_net_1\, C => 
        un14_cntlto31_0_a2_0, D => un7_cntlto31_0_a3_0, Y => 
        \un7_cntlto31_0_0\);
    
    \cnt[0]\ : SLE
      port map(D => \cnt_s[0]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[0]_net_1\);
    
    \cnt_RNIT8KKR1[23]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[23]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[22]\, S => \cnt_s[23]\, Y => OPEN, FCO => 
        \cnt_cry[23]\);
    
    \cnt_RNI420MK1[20]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[20]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[19]\, S => \cnt_s[20]\, Y => OPEN, FCO => 
        \cnt_cry[20]\);
    
    \cnt_RNICOU4H[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[5]_net_1\, D => GND_net_1, FCI => \cnt_cry[4]\, 
        S => \cnt_s[5]\, Y => OPEN, FCO => \cnt_cry[5]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    un7_cntlto31_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => N_59_3, B => \cnt[5]_net_1\, Y => 
        un7_cntlto31_0_a2_1_0);
    
    \cnt[23]\ : SLE
      port map(D => \cnt_s[23]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[23]_net_1\);
    
    \cnt_RNI396K9[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[2]_net_1\, D => GND_net_1, FCI => \cnt_cry[1]\, 
        S => \cnt_s[2]\, Y => OPEN, FCO => \cnt_cry[2]\);
    
    \cnt[20]\ : SLE
      port map(D => \cnt_s[20]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[20]_net_1\);
    
    \cnt_RNI2KDND1[17]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[17]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[16]\, S => \cnt_s[17]\, Y => OPEN, FCO => 
        \cnt_cry[17]\);
    
    \cnt_RNILV1391[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[15]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[14]\, S => \cnt_s[15]\, Y => OPEN, FCO => 
        \cnt_cry[15]\);
    
    \cnt_RNIQFJ1G1[18]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[18]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[17]\, S => \cnt_s[18]\, Y => OPEN, FCO => 
        \cnt_cry[18]\);
    
    \cnt[13]\ : SLE
      port map(D => \cnt_s[13]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[13]_net_1\);
    
    \cnt_RNIN7F5M[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[7]_net_1\, D => GND_net_1, FCI => \cnt_cry[6]\, 
        S => \cnt_s[7]\, Y => OPEN, FCO => \cnt_cry[7]\);
    
    \cnt_RNI73BQV[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[11]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[10]\, S => \cnt_s[11]\, Y => OPEN, FCO => 
        \cnt_cry[11]\);
    
    un14_cntlto31_0_o2_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \cnt[21]_net_1\, B => \cnt[20]_net_1\, C => 
        \cnt[19]_net_1\, D => \cnt[18]_net_1\, Y => 
        un14_cntlto31_0_o2_3_0);
    
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
    
    \cnt_RNICFME41[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[13]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[12]\, S => \cnt_s[13]\, Y => OPEN, FCO => 
        \cnt_cry[13]\);
    
    \cnt_RNIHV6LJ[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[6]_net_1\, D => GND_net_1, FCI => \cnt_cry[5]\, 
        S => \cnt_s[6]\, Y => OPEN, FCO => \cnt_cry[6]\);
    
    un14_cntlto31_0_o3_0_RNI3K631 : CFG4
      generic map(INIT => x"0073")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        un14_cntlto31_0_o3_0_0, D => \cnt[23]_net_1\, Y => 
        N_313_tz);
    
    un14_cntlto31_0_a2_1_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \cnt[9]_net_1\, B => \cnt[8]_net_1\, C => 
        \cnt[7]_net_1\, D => \cnt[6]_net_1\, Y => N_59_3);
    
    \cnt[3]\ : SLE
      port map(D => \cnt_s[3]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[3]_net_1\);
    
    \cnt[25]\ : SLE
      port map(D => \cnt_s[25]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[25]_net_1\);
    
    \cnt_RNIUGNLO[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[8]_net_1\, D => GND_net_1, FCI => \cnt_cry[7]\, 
        S => \cnt_s[8]\, Y => OPEN, FCO => \cnt_cry[8]\);
    
    \cnt_RNIME5GT[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[10]_net_1\, D => GND_net_1, FCI => \cnt_cry[9]\, 
        S => \cnt_s[10]\, Y => OPEN, FCO => \cnt_cry[10]\);
    
    \cnt_RNII2RUT1[24]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[24]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[23]\, S => \cnt_s[24]\, Y => OPEN, FCO => 
        \cnt_s[25]\);
    
    \cnt_RNI24MJ4[0]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[0]_net_1\, D => GND_net_1, FCI => cnt_cry_cy, S
         => \cnt_s[0]\, Y => OPEN, FCO => \cnt_cry[0]\);
    
    \cnt_RNIMO60N1[21]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[21]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[20]\, S => \cnt_s[21]\, Y => OPEN, FCO => 
        \cnt_cry[21]\);
    
    un14_cntlto31_0_o3_0 : CFG4
      generic map(INIT => x"F7F5")

      port map(A => \cnt[14]_net_1\, B => \cnt[10]_net_1\, C => 
        un14_cntlto31_0_o2_0_0, D => N_59_3, Y => 
        un14_cntlto31_0_o3_0_0);
    
    \cnt_RNIPOG421[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => un14_cntlto31_0_o3_RNI33E32_Y, 
        C => \cnt[12]_net_1\, D => GND_net_1, FCI => 
        \cnt_cry[11]\, S => \cnt_s[12]\, Y => OPEN, FCO => 
        \cnt_cry[12]\);
    
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
    
    un7_cntlto31_0_a3 : CFG4
      generic map(INIT => x"000D")

      port map(A => \cnt[23]_net_1\, B => un7_cntlto31_0_a2_2, C
         => \cnt[25]_net_1\, D => \cnt[24]_net_1\, Y => 
        un7_cntlto31_0_a3_0);
    
    un14_cntlto31_0_a2 : CFG3
      generic map(INIT => x"45")

      port map(A => \cnt[25]_net_1\, B => un14_cntlto31_0_o2_3_0, 
        C => \cnt[17]_net_1\, Y => un14_cntlto31_0_a2_0);
    
    \cnt[5]\ : SLE
      port map(D => \cnt_s[5]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[5]_net_1\);
    
    un7_cntlto31_0_a2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \cnt[15]_net_1\, B => \cnt[16]_net_1\, C => 
        un7_cntlto31_0_a2_0_0, D => \cnt[22]_net_1\, Y => 
        un7_cntlto31_0_a2_2);
    
    \cnt[12]\ : SLE
      port map(D => \cnt_s[12]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[12]_net_1\);
    
    \cnt[14]\ : SLE
      port map(D => \cnt_s[14]\, CLK => clk_c, EN => SW1_c, ALn
         => reset, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \cnt[14]_net_1\);
    
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
