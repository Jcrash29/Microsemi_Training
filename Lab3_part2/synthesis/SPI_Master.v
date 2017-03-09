`timescale 1 ns/100 ps
// Version: v11.7 SP1 11.7.1.14


module SPI_Master(
       PADDR,
       PWDATA,
       PRDATA,
       clk,
       reset,
       enable,
       cpol,
       cpha,
       PWRITE,
       MISO,
       CS,
       ss_n,
       CLKOUT,
       MOSI
    );
input  [4:0] PADDR;
input  [31:0] PWDATA;
output [31:0] PRDATA;
input  clk;
input  reset;
input  enable;
input  cpol;
input  cpha;
input  PWRITE;
input  MISO;
output CS;
output ss_n;
output CLKOUT;
output MOSI;

    wire un30_count_cry_6_net_1, un2_count_net_1, 
        un14_count_cry_6_net_1, \clk_toggles[0]_net_1 , un22_countlto4, 
        un22_countlto5, \clk_toggles_RNI7BT21_S[1] , 
        \clk_toggles_RNIVKJ41_S[2] , \clk_toggles_RNIOV961_S[3] , 
        un42_count_NE_i_a2_RNIDEM23_S, un42_count_NE_i_a2_RNI3U2V4_S, 
        \clk_toggles_RNO_S[6] , \state[0]_net_1 , assert_data_net_1, 
        continue_net_1, VCC_net_1, GND_net_1, CLKOUT_1_net_1, 
        MOSI_1_net_1, \command[0]_net_1 , CO3, \command[2]_net_1 , 
        \ltRx_bit[4] , \slv_select[0]_net_1 , \slv_select[1]_net_1 , 
        \slv_select[2]_net_1 , \slv_select[3]_net_1 , 
        \slv_select[4]_net_1 , CS_6, \PWDATA_buf[39]_net_1 , 
        \PWDATA_buf[0]_net_1 , \PWDATA_buf[1]_net_1 , 
        \PWDATA_buf[2]_net_1 , \PWDATA_buf[3]_net_1 , 
        \PWDATA_buf[4]_net_1 , \PWDATA_buf[5]_net_1 , 
        \PWDATA_buf[6]_net_1 , \PWDATA_buf[7]_net_1 , 
        \PWDATA_buf[8]_net_1 , \PWDATA_buf[9]_net_1 , 
        \PWDATA_buf[10]_net_1 , \PWDATA_buf[11]_net_1 , 
        \PWDATA_buf[12]_net_1 , \PWDATA_buf[13]_net_1 , 
        \PWDATA_buf[14]_net_1 , \PWDATA_buf[15]_net_1 , 
        \PWDATA_buf[16]_net_1 , \PWDATA_buf[17]_net_1 , 
        \PWDATA_buf[18]_net_1 , \PWDATA_buf[19]_net_1 , 
        \PWDATA_buf[20]_net_1 , \PWDATA_buf[21]_net_1 , 
        \PWDATA_buf[22]_net_1 , \PWDATA_buf[23]_net_1 , 
        \PWDATA_buf[24]_net_1 , \PWDATA_buf[25]_net_1 , 
        \PWDATA_buf[26]_net_1 , \PWDATA_buf[27]_net_1 , 
        \PWDATA_buf[28]_net_1 , \PWDATA_buf[29]_net_1 , 
        \PWDATA_buf[30]_net_1 , \PWDATA_buf[31]_net_1 , 
        \PWDATA_buf[32]_net_1 , \PWDATA_buf[33]_net_1 , 
        \PWDATA_buf[34]_net_1 , \PWDATA_buf[35]_net_1 , 
        \PWDATA_buf[36]_net_1 , \PWDATA_buf[37]_net_1 , 
        \PWDATA_buf[38]_net_1 , PRDATA_buf_0_sqmuxa_1, 
        \PRDATA_buf[0]_net_1 , \PRDATA_buf[1]_net_1 , 
        \PRDATA_buf[2]_net_1 , \PRDATA_buf[3]_net_1 , 
        \PRDATA_buf[4]_net_1 , \PRDATA_buf[5]_net_1 , 
        \PRDATA_buf[6]_net_1 , \PRDATA_buf[7]_net_1 , 
        \PRDATA_buf[8]_net_1 , \PRDATA_buf[9]_net_1 , 
        \PRDATA_buf[10]_net_1 , \PRDATA_buf[11]_net_1 , 
        \PRDATA_buf[12]_net_1 , \PRDATA_buf[13]_net_1 , 
        \PRDATA_buf[14]_net_1 , \PRDATA_buf[15]_net_1 , 
        \PRDATA_buf[16]_net_1 , \PRDATA_buf[17]_net_1 , 
        \PRDATA_buf[18]_net_1 , \PRDATA_buf[19]_net_1 , 
        \PRDATA_buf[20]_net_1 , \PRDATA_buf[21]_net_1 , 
        \PRDATA_buf[22]_net_1 , \PRDATA_buf[23]_net_1 , 
        \PRDATA_buf[24]_net_1 , \PRDATA_buf[25]_net_1 , 
        \PRDATA_buf[26]_net_1 , \PRDATA_buf[27]_net_1 , 
        \PRDATA_buf[28]_net_1 , \PRDATA_buf[29]_net_1 , 
        \PRDATA_buf[30]_net_1 , \PRDATA_buf[31]_net_1 , CLKOUT_8, 
        \count_0[0]_net_1 , \count_0[2]_net_1 , \count_0[3]_net_1 , 
        \count_0[6]_net_1 , \count_0[7]_net_1 , \count_0[8]_net_1 , 
        \count_0[9]_net_1 , \count_0[10]_net_1 , \count_0[11]_net_1 , 
        \count_0[12]_net_1 , \count_0[13]_net_1 , \count_0[14]_net_1 , 
        \count_0[15]_net_1 , \count_0[16]_net_1 , \count_0[17]_net_1 , 
        \count_0[18]_net_1 , \count_0[19]_net_1 , \count_0[20]_net_1 , 
        \count_0[21]_net_1 , \count_0[22]_net_1 , \count_0[23]_net_1 , 
        \count_0[24]_net_1 , \count_0[25]_net_1 , \count_0[26]_net_1 , 
        \count_0[27]_net_1 , \count_0[28]_net_1 , \count_0[29]_net_1 , 
        \count_0[30]_net_1 , \count_0[31]_net_1 , MOSI_1_9, 
        un30_count_cry_0_net_1, un30_count_cry_1_net_1, 
        un30_count_cry_2_net_1, un30_count_cry_3_net_1, 
        un30_count_cry_4_net_1, un30_count_cry_5_net_1, 
        un14_count_cry_0_net_1, un14_count_cry_1_net_1, 
        un14_count_cry_2_net_1, un14_count_cry_3_net_1, 
        un14_count_cry_4_net_1, un14_count_cry_5_net_1, 
        \PWDATA_buf_RNO[8]_net_1 , \PWDATA_buf_RNO[7]_net_1 , 
        \PWDATA_buf_RNO[6]_net_1 , \PWDATA_buf_RNO[5]_net_1 , 
        \PWDATA_buf_RNO[4]_net_1 , \PWDATA_buf_RNO[3]_net_1 , 
        \PWDATA_buf_RNO[2]_net_1 , \PWDATA_buf_RNO[1]_net_1 , m67_0, 
        \PWDATA_buf_RNO[23]_net_1 , \PWDATA_buf_RNO[22]_net_1 , 
        \PWDATA_buf_RNO[21]_net_1 , \PWDATA_buf_RNO[20]_net_1 , 
        \PWDATA_buf_RNO[19]_net_1 , \PWDATA_buf_RNO[18]_net_1 , 
        \PWDATA_buf_RNO[17]_net_1 , \PWDATA_buf_RNO[16]_net_1 , 
        \PWDATA_buf_RNO[15]_net_1 , \PWDATA_buf_RNO[14]_net_1 , 
        \PWDATA_buf_RNO[13]_net_1 , \PWDATA_buf_RNO[12]_net_1 , 
        \PWDATA_buf_RNO[11]_net_1 , \PWDATA_buf_RNO[10]_net_1 , 
        \PWDATA_buf_RNO[9]_net_1 , \PWDATA_buf_RNO[37]_net_1 , 
        \PWDATA_buf_RNO[31]_net_1 , \PWDATA_buf_RNO[30]_net_1 , 
        \PWDATA_buf_RNO[29]_net_1 , \PWDATA_buf_RNO[28]_net_1 , 
        \PWDATA_buf_RNO[27]_net_1 , \PWDATA_buf_RNO[26]_net_1 , 
        \PWDATA_buf_RNO[25]_net_1 , \PWDATA_buf_RNO[24]_net_1 , 
        \PWDATA_buf_RNO[39]_net_1 , N_11_0, N_93_mux, N_69, N_70, 
        clk_c, reset_c, enable_c, cpol_c, cpha_c, PWRITE_c, 
        \PADDR_c[0] , \PADDR_c[1] , \PADDR_c[2] , \PADDR_c[3] , 
        \PADDR_c[4] , \PWDATA_c[0] , \PWDATA_c[1] , \PWDATA_c[2] , 
        \PWDATA_c[3] , \PWDATA_c[4] , \PWDATA_c[5] , \PWDATA_c[6] , 
        \PWDATA_c[7] , \PWDATA_c[8] , \PWDATA_c[9] , \PWDATA_c[10] , 
        \PWDATA_c[11] , \PWDATA_c[12] , \PWDATA_c[13] , \PWDATA_c[14] , 
        \PWDATA_c[15] , \PWDATA_c[16] , \PWDATA_c[17] , \PWDATA_c[18] , 
        \PWDATA_c[19] , \PWDATA_c[20] , \PWDATA_c[21] , \PWDATA_c[22] , 
        \PWDATA_c[23] , \PWDATA_c[24] , \PWDATA_c[25] , \PWDATA_c[26] , 
        \PWDATA_c[27] , \PWDATA_c[28] , \PWDATA_c[29] , \PWDATA_c[30] , 
        \PWDATA_c[31] , MISO_c, CS_c, ss_n_c, \PRDATA_c[0] , 
        \PRDATA_c[1] , \PRDATA_c[2] , \PRDATA_c[3] , \PRDATA_c[4] , 
        \PRDATA_c[5] , \PRDATA_c[6] , \PRDATA_c[7] , \PRDATA_c[8] , 
        \PRDATA_c[9] , \PRDATA_c[10] , \PRDATA_c[11] , \PRDATA_c[12] , 
        \PRDATA_c[13] , \PRDATA_c[14] , \PRDATA_c[15] , \PRDATA_c[16] , 
        \PRDATA_c[17] , \PRDATA_c[18] , \PRDATA_c[19] , \PRDATA_c[20] , 
        \PRDATA_c[21] , \PRDATA_c[22] , \PRDATA_c[23] , \PRDATA_c[24] , 
        \PRDATA_c[25] , \PRDATA_c[26] , \PRDATA_c[27] , \PRDATA_c[28] , 
        \PRDATA_c[29] , \PRDATA_c[30] , \PRDATA_c[31] , N_34, N_68, 
        N_19, N_15_0, continue_4, N_90_mux, N_89_mux, N_88_mux, 
        N_87_mux, N_86_mux, N_84, assert_data_5, N_24_0, 
        \count_RNIE6HU_S[0] , \count_RNI0IB01_S[1] , 
        \count_RNIJU521_S[2] , \count_RNI7C041_S[3] , 
        \count_RNISQQ51_S[4] , \count_RNIIAL71_S[5] , 
        \count_RNI9RF91_S[6] , \count_RNI1DAB1_S[7] , 
        \count_RNIQV4D1_S[8] , \count_RNIKJVE1_S[9] , 
        \count_RNIM54R1_S[10] , \count_RNIPO872_S[11] , 
        \count_RNITCDJ2_S[12] , \count_RNI22IV2_S[13] , 
        \count_RNI8OMB3_S[14] , \count_RNIFFRN3_S[15] , 
        \count_RNIN7044_S[16] , \count_RNI015G4_S[17] , 
        \count_RNIAR9S4_S[18] , \count_RNILME85_S[19] , 
        \count_RNIOAKK5_S[20] , \count_RNISVP06_S[21] , 
        \count_RNI1MVC6_S[22] , \count_RNI7D5P6_S[23] , 
        \count_RNIE5B57_S[24] , \count_RNIMUGH7_S[25] , 
        \count_RNIVOMT7_S[26] , \count_RNI9KS98_S[27] , 
        \count_RNIKG2M8_S[28] , \count_RNI0E829_S[29] , 
        \count_RNI44FE9_S[30] , \count_0_RNO_S[31] , \count[0]_net_1 , 
        un1_count_cry_0, \count[1]_net_1 , un1_count_cry_1, 
        \count[2]_net_1 , un1_count_cry_2, \count[3]_net_1 , 
        un1_count_cry_3, \count[4]_net_1 , un1_count_cry_4, 
        \count[5]_net_1 , un1_count_cry_5, \count[6]_net_1 , 
        un1_count_cry_6, \count[7]_net_1 , un1_count_cry_7, 
        \count[8]_net_1 , un1_count_cry_8, \count[9]_net_1 , 
        un1_count_cry_9, \count[10]_net_1 , un1_count_cry_10, 
        \count[11]_net_1 , un1_count_cry_11, \count[12]_net_1 , 
        un1_count_cry_12, \count[13]_net_1 , un1_count_cry_13, 
        \count[14]_net_1 , un1_count_cry_14, \count[15]_net_1 , 
        un1_count_cry_15, \count[16]_net_1 , un1_count_cry_16, 
        \count[17]_net_1 , un1_count_cry_17, \count[18]_net_1 , 
        un1_count_cry_18, \count[19]_net_1 , un1_count_cry_19, 
        \count[20]_net_1 , un1_count_cry_20, \count[21]_net_1 , 
        un1_count_cry_21, \count[22]_net_1 , un1_count_cry_22, 
        \count[23]_net_1 , un1_count_cry_23, \count[24]_net_1 , 
        un1_count_cry_24, \count[25]_net_1 , un1_count_cry_25, 
        \count[26]_net_1 , un1_count_cry_26, \count[27]_net_1 , 
        un1_count_cry_27, \count[28]_net_1 , un1_count_cry_28, 
        \count[29]_net_1 , un1_count_cry_29, \count[30]_net_1 , 
        un1_count_cry_30, \count[31]_net_1 , un1_clk_toggles_1_cry_0, 
        \clk_toggles[1]_net_1 , un1_clk_toggles_1_cry_1, 
        \clk_toggles[2]_net_1 , un1_clk_toggles_1_cry_2, 
        \clk_toggles[3]_net_1 , un1_clk_toggles_1_cry_3, 
        un1_clk_toggles_1_cry_4, un1_clk_toggles_1_cry_5, 
        un22_countlto6, N_1412_tz, m74_a1_1, m74_0_N_6, m74_0_N_7, 
        m74_0tt_m2_e_1, un42_count_NE_i_a2_0_1_net_1, m26_0, m12_0, 
        un2_count_16_net_1, un2_count_17_net_1, un2_count_18_net_1, 
        un2_count_19_net_1, un2_count_20_net_1, un2_count_21_net_1, 
        un2_count_22_net_1, un2_count_23_net_1, un2_count_28_net_1, 
        un2_count_29_net_1, un42_count_NE_i_a2_0, m71_1, 
        clk_toggles_0_sqmuxa_1_0_a3_0_1_net_1, PWRITE_c_i_0, 
        \state_i_0[0] , N_4_0_i_0, CLKOUT_cl_1_sqmuxa_i_0, N_76_i_0, 
        N_4_i_0, cpha_c_i_0, N_622_i_0, N_843_i_0, N_66_i_0, N_59_i_0, 
        N_52_i_0, N_45_i_0, N_38_i_0, N_22_i_0, N_24_i_0, N_26_i_0, 
        un1_count_cry_0_cy, un42_count_NE_i_a2_1_net_1, 
        CLKOUT_cl_1_iv_i_0_1_net_1, un22_countlto4_i, 
        \clk_toggles_i[0] , \clk_toggles_RNIG2711_Y[0] , MOSI_cl_net_1, 
        CLKOUT_cl_net_1, clk_toggles_0_sqmuxa_1_i, clk_ibuf_net_1, 
        reset_ibuf_net_1;
    
    CFG3 #( .INIT(8'hB1) )  assert_data_RNO_0 (.A(enable_c), .B(
        assert_data_net_1), .C(cpha_c), .Y(N_24_0));
    CFG4 #( .INIT(16'h0001) )  un2_count_20 (.A(\count[19]_net_1 ), .B(
        \count[18]_net_1 ), .C(\count[17]_net_1 ), .D(
        \count[16]_net_1 ), .Y(un2_count_20_net_1));
    CFG1 #( .INIT(2'h1) )  un14_count_cry_4_RNO (.A(un22_countlto4), 
        .Y(un22_countlto4_i));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[21]  (.A(
        \PWDATA_buf[20]_net_1 ), .B(m67_0), .C(\PWDATA_c[21] ), .Y(
        \PWDATA_buf_RNO[21]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[8]  (.A(\count_RNIQV4D1_S[8] ), .B(
        m74_a1_1), .Y(\count_0[8]_net_1 ));
    SLE \count[27]  (.D(\count_0[27]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[27]_net_1 ));
    CFG4 #( .INIT(16'hCC7C) )  CLKOUT_1_RNO_0 (.A(CLKOUT_cl_net_1), .B(
        CLKOUT_1_net_1), .C(un2_count_net_1), .D(N_15_0), .Y(N_93_mux));
    SLE \state[0]  (.D(CLKOUT_cl_1_sqmuxa_i_0), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\state[0]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[25]  (.A(
        \PWDATA_buf[24]_net_1 ), .B(m67_0), .C(\PWDATA_c[25] ), .Y(
        \PWDATA_buf_RNO[25]_net_1 ));
    SLE \PRDATA_buf[2]  (.D(\PRDATA_buf[1]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[2]_net_1 ));
    SLE \count[25]  (.D(\count_0[25]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[25]_net_1 ));
    CFG3 #( .INIT(8'hB3) )  CS_6_0 (.A(continue_net_1), .B(
        \state[0]_net_1 ), .C(un2_count_net_1), .Y(CS_6));
    SLE \count[17]  (.D(\count_0[17]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[17]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  un30_count_cry_4 (.A(\ltRx_bit[4] ), 
        .B(un22_countlto4), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_3_net_1), .S(), .Y(), .FCO(
        un30_count_cry_4_net_1));
    SLE \PWDATA_buf[4]  (.D(\PWDATA_buf_RNO[4]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[4]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[20]  (.A(\count_RNIOAKK5_S[20] ), 
        .B(m74_a1_1), .Y(\count_0[20]_net_1 ));
    SLE \count[15]  (.D(\count_0[15]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[15]_net_1 ));
    SLE \PWDATA_buf[34]  (.D(N_52_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[34]_net_1 ));
    OUTBUF \PRDATA_obuf[23]  (.D(\PRDATA_c[23] ), .PAD(PRDATA[23]));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[20]  (.A(
        \PWDATA_buf[19]_net_1 ), .B(m67_0), .C(\PWDATA_c[20] ), .Y(
        \PWDATA_buf_RNO[20]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[31]  (.A(\count_0_RNO_S[31] ), .B(
        m74_a1_1), .Y(\count_0[31]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[9]  (.A(
        \PWDATA_buf[8]_net_1 ), .B(m67_0), .C(\PWDATA_c[9] ), .Y(
        \PWDATA_buf_RNO[9]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[39]  (.A(
        \PWDATA_buf[38]_net_1 ), .B(m67_0), .C(\command[2]_net_1 ), .Y(
        \PWDATA_buf_RNO[39]_net_1 ));
    OUTBUF \PRDATA_obuf[6]  (.D(\PRDATA_c[6] ), .PAD(PRDATA[6]));
    SLE \PWDATA_buf[12]  (.D(\PWDATA_buf_RNO[12]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[12]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[3]  (.A(\count_RNI7C041_S[3] ), .B(
        m74_a1_1), .Y(\count_0[3]_net_1 ));
    SLE \count[9]  (.D(\count_0[9]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[9]_net_1 ));
    SLE \PRDATA[5]  (.D(\PRDATA_buf[5]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[5] ));
    SLE \PRDATA[30]  (.D(\PRDATA_buf[30]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[30] ));
    CFG3 #( .INIT(8'hDF) )  CLKOUT_cl_1_iv_i_o2 (.A(un2_count_net_1), 
        .B(N_15_0), .C(\state[0]_net_1 ), .Y(N_34));
    CFG4 #( .INIT(16'h8000) )  un30_count_cry_6_RNICI8G1 (.A(m26_0), 
        .B(un30_count_cry_6_net_1), .C(reset_c), .D(\state[0]_net_1 ), 
        .Y(m74_0tt_m2_e_1));
    ARI1 #( .INIT(20'h45500) )  un30_count_cry_5 (.A(VCC_net_1), .B(
        un22_countlto5), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_4_net_1), .S(), .Y(), .FCO(
        un30_count_cry_5_net_1));
    SLE \PWDATA_buf[33]  (.D(N_45_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[33]_net_1 ));
    SLE \PRDATA_buf[28]  (.D(\PRDATA_buf[27]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[28]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIOAKK5[20]  (.A(VCC_net_1), 
        .B(\count[20]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_19), .S(\count_RNIOAKK5_S[20] ), .Y(), .FCO(
        un1_count_cry_20));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI1MVC6[22]  (.A(VCC_net_1), 
        .B(\count[22]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_21), .S(\count_RNI1MVC6_S[22] ), .Y(), .FCO(
        un1_count_cry_22));
    CFG2 #( .INIT(4'h2) )  \count_0[21]  (.A(\count_RNISVP06_S[21] ), 
        .B(m74_a1_1), .Y(\count_0[21]_net_1 ));
    CFG2 #( .INIT(4'h4) )  \PWDATA_buf_RNO[0]  (.A(m67_0), .B(
        \PWDATA_c[0] ), .Y(N_622_i_0));
    INBUF \PWDATA_ibuf[23]  (.PAD(PWDATA[23]), .Y(\PWDATA_c[23] ));
    SLE \PWDATA_buf[10]  (.D(\PWDATA_buf_RNO[10]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[10]_net_1 ));
    SLE \PWDATA_buf[21]  (.D(\PWDATA_buf_RNO[21]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[21]_net_1 ));
    CFG1 #( .INIT(2'h1) )  \ltRx_bit_RNO[0]  (.A(cpha_c), .Y(
        cpha_c_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIKG2M8[28]  (.A(VCC_net_1), 
        .B(\count[28]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_27), .S(\count_RNIKG2M8_S[28] ), .Y(), .FCO(
        un1_count_cry_28));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI7D5P6[23]  (.A(VCC_net_1), 
        .B(\count[23]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_22), .S(\count_RNI7D5P6_S[23] ), .Y(), .FCO(
        un1_count_cry_23));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[7]  (.A(
        \PWDATA_buf[6]_net_1 ), .B(m67_0), .C(\PWDATA_c[7] ), .Y(
        \PWDATA_buf_RNO[7]_net_1 ));
    SLE \slv_select[4]  (.D(\PADDR_c[4] ), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\slv_select[4]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[27]  (.A(
        \PWDATA_buf[26]_net_1 ), .B(m67_0), .C(\PWDATA_c[27] ), .Y(
        \PWDATA_buf_RNO[27]_net_1 ));
    SLE \PRDATA_buf[5]  (.D(\PRDATA_buf[4]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[5]_net_1 ));
    INBUF MISO_ibuf (.PAD(MISO), .Y(MISO_c));
    SLE \PWDATA_buf[35]  (.D(N_59_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[35]_net_1 ));
    SLE \PRDATA[28]  (.D(\PRDATA_buf[28]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[28] ));
    INBUF cpol_ibuf (.PAD(cpol), .Y(cpol_c));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIM54R1[10]  (.A(VCC_net_1), 
        .B(\count[10]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_9), .S(\count_RNIM54R1_S[10] ), .Y(), .FCO(
        un1_count_cry_10));
    SLE \count[8]  (.D(\count_0[8]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[8]_net_1 ));
    SLE \command[2]  (.D(PWRITE_c), .CLK(clk_c), .EN(m74_a1_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\command[2]_net_1 ));
    CFG3 #( .INIT(8'hF2) )  \count_RNO[1]  (.A(\count_RNI0IB01_S[1] ), 
        .B(N_68), .C(m74_a1_1), .Y(N_26_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIIAL71[5]  (.A(VCC_net_1), .B(
        \count[5]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_4), .S(\count_RNIIAL71_S[5] ), .Y(), .FCO(
        un1_count_cry_5));
    SLE \PWDATA_buf[39]  (.D(\PWDATA_buf_RNO[39]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[39]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  CLKOUT_1_RNO (.A(N_93_mux), .B(
        \state[0]_net_1 ), .C(N_11_0), .Y(CLKOUT_8));
    CFG4 #( .INIT(16'h3800) )  continue_4_iv_0_0 (.A(N_70), .B(
        un2_count_net_1), .C(continue_net_1), .D(\state[0]_net_1 ), .Y(
        continue_4));
    SLE \PWDATA_buf[5]  (.D(\PWDATA_buf_RNO[5]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[5]_net_1 ));
    TRIBUFF MOSI_obuft (.D(MOSI_1_net_1), .E(MOSI_cl_net_1), .PAD(MOSI)
        );
    SLE \slv_select[2]  (.D(\PADDR_c[2] ), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\slv_select[2]_net_1 ));
    INBUF \PWDATA_ibuf[3]  (.PAD(PWDATA[3]), .Y(\PWDATA_c[3] ));
    SLE \PRDATA[16]  (.D(\PRDATA_buf[16]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[16] ));
    INBUF \PWDATA_ibuf[18]  (.PAD(PWDATA[18]), .Y(\PWDATA_c[18] ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI0IB01[1]  (.A(VCC_net_1), .B(
        \count[1]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_0), .S(\count_RNI0IB01_S[1] ), .Y(), .FCO(
        un1_count_cry_1));
    SLE \PRDATA[21]  (.D(\PRDATA_buf[21]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[21] ));
    SLE \PRDATA[22]  (.D(\PRDATA_buf[22]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[22] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[2]  (.A(
        \PWDATA_buf[1]_net_1 ), .B(m67_0), .C(\PWDATA_c[2] ), .Y(
        \PWDATA_buf_RNO[2]_net_1 ));
    OUTBUF \PRDATA_obuf[20]  (.D(\PRDATA_c[20] ), .PAD(PRDATA[20]));
    SLE \count[20]  (.D(\count_0[20]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[20]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[19]  (.A(
        \PWDATA_buf[18]_net_1 ), .B(m67_0), .C(\PWDATA_c[19] ), .Y(
        \PWDATA_buf_RNO[19]_net_1 ));
    INBUF \PWDATA_ibuf[29]  (.PAD(PWDATA[29]), .Y(\PWDATA_c[29] ));
    OUTBUF \PRDATA_obuf[26]  (.D(\PRDATA_c[26] ), .PAD(PRDATA[26]));
    OUTBUF \PRDATA_obuf[11]  (.D(\PRDATA_c[11] ), .PAD(PRDATA[11]));
    SLE \PRDATA_buf[17]  (.D(\PRDATA_buf[16]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[17]_net_1 ));
    SLE \count[10]  (.D(\count_0[10]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[10]_net_1 ));
    CFG4 #( .INIT(16'h8000) )  un2_count_28_RNIUPID1 (.A(reset_c), .B(
        \state[0]_net_1 ), .C(un2_count_28_net_1), .D(
        un2_count_29_net_1), .Y(N_68));
    INBUF \PWDATA_ibuf[15]  (.PAD(PWDATA[15]), .Y(\PWDATA_c[15] ));
    SLE \PWDATA_buf[11]  (.D(\PWDATA_buf_RNO[11]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[11]_net_1 ));
    OUTBUF \PRDATA_obuf[31]  (.D(\PRDATA_c[31] ), .PAD(PRDATA[31]));
    INBUF \PWDATA_ibuf[27]  (.PAD(PWDATA[27]), .Y(\PWDATA_c[27] ));
    SLE \PWDATA_buf[24]  (.D(\PWDATA_buf_RNO[24]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[24]_net_1 ));
    OUTBUF \PRDATA_obuf[14]  (.D(\PRDATA_c[14] ), .PAD(PRDATA[14]));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[23]  (.A(
        \PWDATA_buf[22]_net_1 ), .B(m67_0), .C(\PWDATA_c[23] ), .Y(
        \PWDATA_buf_RNO[23]_net_1 ));
    SLE \count[5]  (.D(N_22_i_0), .CLK(clk_c), .EN(VCC_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\count[5]_net_1 ));
    INBUF \PWDATA_ibuf[16]  (.PAD(PWDATA[16]), .Y(\PWDATA_c[16] ));
    OUTBUF \PRDATA_obuf[5]  (.D(\PRDATA_c[5] ), .PAD(PRDATA[5]));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIPO872[11]  (.A(VCC_net_1), 
        .B(\count[11]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_10), .S(\count_RNIPO872_S[11] ), .Y(), .FCO(
        un1_count_cry_11));
    SLE \command[0]  (.D(PWRITE_c_i_0), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\command[0]_net_1 ));
    CFG3 #( .INIT(8'hE4) )  CLKOUT_1_RNO_1 (.A(enable_c), .B(
        CLKOUT_1_net_1), .C(cpol_c), .Y(N_11_0));
    ARI1 #( .INIT(20'h5AA55) )  un14_count_cry_0 (.A(
        \clk_toggles_i[0] ), .B(CO3), .C(GND_net_1), .D(GND_net_1), 
        .FCI(GND_net_1), .S(), .Y(), .FCO(un14_count_cry_0_net_1));
    SLE \PRDATA_buf[12]  (.D(\PRDATA_buf[11]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[12]_net_1 ));
    CFG3 #( .INIT(8'h40) )  PWRITE_ibuf_RNIHVGQ (.A(PWRITE_c), .B(
        reset_c), .C(\state[0]_net_1 ), .Y(m71_1));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[1]  (.A(
        \PWDATA_buf[0]_net_1 ), .B(m67_0), .C(\PWDATA_c[1] ), .Y(
        \PWDATA_buf_RNO[1]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[16]  (.A(\count_RNIN7044_S[16] ), 
        .B(m74_a1_1), .Y(\count_0[16]_net_1 ));
    CFG3 #( .INIT(8'h01) )  CLKOUT_cl_1_iv_i_a2_0 (.A(
        \clk_toggles[3]_net_1 ), .B(\clk_toggles[2]_net_1 ), .C(
        \clk_toggles[1]_net_1 ), .Y(N_69));
    CFG3 #( .INIT(8'h72) )  \PWDATA_buf_RNO[34]  (.A(\state[0]_net_1 ), 
        .B(N_88_mux), .C(\slv_select[2]_net_1 ), .Y(N_52_i_0));
    SLE \PWDATA_buf[23]  (.D(\PWDATA_buf_RNO[23]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[23]_net_1 ));
    SLE \PRDATA[9]  (.D(\PRDATA_buf[9]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[9] ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI22IV2[13]  (.A(VCC_net_1), 
        .B(\count[13]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_12), .S(\count_RNI22IV2_S[13] ), .Y(), .FCO(
        un1_count_cry_13));
    GND GND (.Y(GND_net_1));
    INBUF PWRITE_ibuf (.PAD(PWRITE), .Y(PWRITE_c));
    SLE \PRDATA[25]  (.D(\PRDATA_buf[25]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[25] ));
    CFG2 #( .INIT(4'h2) )  \count_0[12]  (.A(\count_RNITCDJ2_S[12] ), 
        .B(m74_a1_1), .Y(\count_0[12]_net_1 ));
    ARI1 #( .INIT(20'h6AA00) )  un14_count_cry_6 (.A(VCC_net_1), .B(
        un22_countlto6), .C(GND_net_1), .D(GND_net_1), .FCI(
        un14_count_cry_5_net_1), .S(), .Y(), .FCO(
        un14_count_cry_6_net_1));
    INBUF \PWDATA_ibuf[7]  (.PAD(PWDATA[7]), .Y(\PWDATA_c[7] ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI9KS98[27]  (.A(VCC_net_1), 
        .B(\count[27]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_26), .S(\count_RNI9KS98_S[27] ), .Y(), .FCO(
        un1_count_cry_27));
    INBUF \PWDATA_ibuf[24]  (.PAD(PWDATA[24]), .Y(\PWDATA_c[24] ));
    SLE \PRDATA_buf[30]  (.D(\PRDATA_buf[29]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[30]_net_1 ));
    SLE \PRDATA_buf[10]  (.D(\PRDATA_buf[9]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[10]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIQV4D1[8]  (.A(VCC_net_1), .B(
        \count[8]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_7), .S(\count_RNIQV4D1_S[8] ), .Y(), .FCO(
        un1_count_cry_8));
    SLE \PWDATA_buf[25]  (.D(\PWDATA_buf_RNO[25]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[25]_net_1 ));
    CFG1 #( .INIT(2'h1) )  un14_count_cry_0_RNO (.A(
        \clk_toggles[0]_net_1 ), .Y(\clk_toggles_i[0] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[28]  (.A(
        \PWDATA_buf[27]_net_1 ), .B(m67_0), .C(\PWDATA_c[28] ), .Y(
        \PWDATA_buf_RNO[28]_net_1 ));
    SLE \PWDATA_buf[8]  (.D(\PWDATA_buf_RNO[8]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[8]_net_1 ));
    INBUF \PADDR_ibuf[1]  (.PAD(PADDR[1]), .Y(\PADDR_c[1] ));
    SLE \PWDATA_buf[29]  (.D(\PWDATA_buf_RNO[29]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[29]_net_1 ));
    SLE \PWDATA_buf[38]  (.D(N_843_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[38]_net_1 ));
    SLE \PWDATA_buf[14]  (.D(\PWDATA_buf_RNO[14]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[14]_net_1 ));
    SLE \count[4]  (.D(N_24_i_0), .CLK(clk_c), .EN(VCC_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\count[4]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[26]  (.A(\count_RNIVOMT7_S[26] ), 
        .B(m74_a1_1), .Y(\count_0[26]_net_1 ));
    SLE \PRDATA[18]  (.D(\PRDATA_buf[18]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[18] ));
    CFG3 #( .INIT(8'h08) )  enable_ibuf_RNITRMS_0 (.A(enable_c), .B(
        reset_c), .C(\state[0]_net_1 ), .Y(m74_a1_1));
    SLE \count[22]  (.D(\count_0[22]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[22]_net_1 ));
    CFG3 #( .INIT(8'h73) )  CLKOUT_cl_1_iv_i_0 (.A(\state[0]_net_1 ), 
        .B(CLKOUT_cl_1_iv_i_0_1_net_1), .C(enable_c), .Y(N_19));
    SLE MOSI_1 (.D(\PWDATA_buf[39]_net_1 ), .CLK(clk_c), .EN(MOSI_1_9), 
        .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(MOSI_1_net_1));
    SLE CLKOUT_cl (.D(N_19), .CLK(clk_c), .EN(reset_c), .ALn(VCC_net_1)
        , .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(CLKOUT_cl_net_1));
    SLE \count[12]  (.D(\count_0[12]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[12]_net_1 ));
    SLE \count[0]  (.D(\count_0[0]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[0]_net_1 ));
    CFG4 #( .INIT(16'h3C55) )  assert_data_RNO (.A(N_24_0), .B(
        un2_count_net_1), .C(assert_data_net_1), .D(\state[0]_net_1 ), 
        .Y(assert_data_5));
    SLE \slv_select[3]  (.D(\PADDR_c[3] ), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\slv_select[3]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[22]  (.A(\count_RNI1MVC6_S[22] ), 
        .B(m74_a1_1), .Y(\count_0[22]_net_1 ));
    SLE \PWDATA_buf[13]  (.D(\PWDATA_buf_RNO[13]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[13]_net_1 ));
    SLE \PRDATA_buf[26]  (.D(\PRDATA_buf[25]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[26]_net_1 ));
    CFG2 #( .INIT(4'h8) )  assert_data_RNIRINL (.A(
        un30_count_cry_6_net_1), .B(assert_data_net_1), .Y(N_84));
    ARI1 #( .INIT(20'h5AA55) )  un30_count_cry_0 (.A(CO3), .B(
        \clk_toggles[0]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        GND_net_1), .S(), .Y(), .FCO(un30_count_cry_0_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIAR9S4[18]  (.A(VCC_net_1), 
        .B(\count[18]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_17), .S(\count_RNIAR9S4_S[18] ), .Y(), .FCO(
        un1_count_cry_18));
    CFG4 #( .INIT(16'h8000) )  un2_count_29 (.A(un2_count_23_net_1), 
        .B(un2_count_22_net_1), .C(un2_count_21_net_1), .D(
        un2_count_20_net_1), .Y(un2_count_29_net_1));
    OUTBUF \PRDATA_obuf[18]  (.D(\PRDATA_c[18] ), .PAD(PRDATA[18]));
    CFG3 #( .INIT(8'hF2) )  \count_RNO[5]  (.A(\count_RNIIAL71_S[5] ), 
        .B(N_68), .C(m74_a1_1), .Y(N_22_i_0));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI7C041[3]  (.A(VCC_net_1), .B(
        \count[3]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_2), .S(\count_RNI7C041_S[3] ), .Y(), .FCO(
        un1_count_cry_3));
    SLE \PRDATA_buf[6]  (.D(\PRDATA_buf[5]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[6]_net_1 ));
    SLE \PRDATA_buf[3]  (.D(\PRDATA_buf[2]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[3]_net_1 ));
    INBUF \PWDATA_ibuf[0]  (.PAD(PWDATA[0]), .Y(\PWDATA_c[0] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[5]  (.A(
        \PWDATA_buf[4]_net_1 ), .B(m67_0), .C(\PWDATA_c[5] ), .Y(
        \PWDATA_buf_RNO[5]_net_1 ));
    SLE \PRDATA[7]  (.D(\PRDATA_buf[7]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[7] ));
    SLE \PRDATA[11]  (.D(\PRDATA_buf[11]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[11] ));
    OUTBUF \PRDATA_obuf[12]  (.D(\PRDATA_c[12] ), .PAD(PRDATA[12]));
    SLE \PRDATA[12]  (.D(\PRDATA_buf[12]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[12] ));
    INBUF \PADDR_ibuf[2]  (.PAD(PADDR[2]), .Y(\PADDR_c[2] ));
    SLE \PRDATA_buf[31]  (.D(\PRDATA_buf[30]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[31]_net_1 ));
    SLE \PRDATA_buf[11]  (.D(\PRDATA_buf[10]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[11]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[14]  (.A(
        \PWDATA_buf[13]_net_1 ), .B(m67_0), .C(\PWDATA_c[14] ), .Y(
        \PWDATA_buf_RNO[14]_net_1 ));
    SLE \PWDATA_buf[15]  (.D(\PWDATA_buf_RNO[15]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[15]_net_1 ));
    SLE \PRDATA[29]  (.D(\PRDATA_buf[29]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[29] ));
    CFG4 #( .INIT(16'h7F55) )  un42_count_NE_i_a2_1 (.A(CO3), .B(
        un42_count_NE_i_a2_0_1_net_1), .C(\clk_toggles[1]_net_1 ), .D(
        \clk_toggles[0]_net_1 ), .Y(un42_count_NE_i_a2_1_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIKJVE1[9]  (.A(VCC_net_1), .B(
        \count[9]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_8), .S(\count_RNIKJVE1_S[9] ), .Y(), .FCO(
        un1_count_cry_9));
    CFG2 #( .INIT(4'h2) )  \count_0[17]  (.A(\count_RNI015G4_S[17] ), 
        .B(m74_a1_1), .Y(\count_0[17]_net_1 ));
    SLE \PWDATA_buf[19]  (.D(\PWDATA_buf_RNO[19]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[19]_net_1 ));
    SLE \PRDATA[6]  (.D(\PRDATA_buf[6]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[6] ));
    OUTBUF \PRDATA_obuf[29]  (.D(\PRDATA_c[29] ), .PAD(PRDATA[29]));
    CFG2 #( .INIT(4'h2) )  \count_0[18]  (.A(\count_RNIAR9S4_S[18] ), 
        .B(m74_a1_1), .Y(\count_0[18]_net_1 ));
    CFG4 #( .INIT(16'h353F) )  un14_count_cry_6_RNIB54D1 (.A(
        un14_count_cry_6_net_1), .B(N_84), .C(PWRITE_c), .D(m12_0), .Y(
        N_15_0));
    OUTBUF \PRDATA_obuf[3]  (.D(\PRDATA_c[3] ), .PAD(PRDATA[3]));
    SLE \PRDATA[24]  (.D(\PRDATA_buf[24]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[24] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[26]  (.A(
        \PWDATA_buf[25]_net_1 ), .B(m67_0), .C(\PWDATA_c[26] ), .Y(
        \PWDATA_buf_RNO[26]_net_1 ));
    VCC VCC (.Y(VCC_net_1));
    ARI1 #( .INIT(20'h5AA55) )  un30_count_cry_3 (.A(CO3), .B(
        \clk_toggles[3]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_2_net_1), .S(), .Y(), .FCO(
        un30_count_cry_3_net_1));
    OUTBUF \PRDATA_obuf[25]  (.D(\PRDATA_c[25] ), .PAD(PRDATA[25]));
    OUTBUF CS_obuf (.D(CS_c), .PAD(CS));
    CFG4 #( .INIT(16'h0001) )  un2_count_18 (.A(\count[11]_net_1 ), .B(
        \count[10]_net_1 ), .C(\count[9]_net_1 ), .D(\count[8]_net_1 ), 
        .Y(un2_count_18_net_1));
    CFG2 #( .INIT(4'h2) )  \count_0[0]  (.A(\count_RNIE6HU_S[0] ), .B(
        m74_a1_1), .Y(\count_0[0]_net_1 ));
    SLE \PRDATA[15]  (.D(\PRDATA_buf[15]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[15] ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI8OMB3[14]  (.A(VCC_net_1), 
        .B(\count[14]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_13), .S(\count_RNI8OMB3_S[14] ), .Y(), .FCO(
        un1_count_cry_14));
    CFG4 #( .INIT(16'h4100) )  un42_count_NE_i_a2_0_3 (.A(
        un22_countlto5), .B(un22_countlto4), .C(\ltRx_bit[4] ), .D(
        un22_countlto6), .Y(un42_count_NE_i_a2_0));
    CFG2 #( .INIT(4'h2) )  \count_0[27]  (.A(\count_RNI9KS98_S[27] ), 
        .B(m74_a1_1), .Y(\count_0[27]_net_1 ));
    SLE \PWDATA_buf[28]  (.D(\PWDATA_buf_RNO[28]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[28]_net_1 ));
    SLE \count[23]  (.D(\count_0[23]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[23]_net_1 ));
    ARI1 #( .INIT(20'h566CC) )  un42_count_NE_i_a2_RNI3U2V4 (.A(N_68), 
        .B(N_70), .C(un22_countlto5), .D(GND_net_1), .FCI(
        un1_clk_toggles_1_cry_4), .S(un42_count_NE_i_a2_RNI3U2V4_S), 
        .Y(), .FCO(un1_clk_toggles_1_cry_5));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[31]  (.A(
        \PWDATA_buf[30]_net_1 ), .B(m67_0), .C(\PWDATA_c[31] ), .Y(
        \PWDATA_buf_RNO[31]_net_1 ));
    SLE \PWDATA_buf[7]  (.D(\PWDATA_buf_RNO[7]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[7]_net_1 ));
    SLE \count[13]  (.D(\count_0[13]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[13]_net_1 ));
    CFG3 #( .INIT(8'h72) )  \PWDATA_buf_RNO[35]  (.A(\state[0]_net_1 ), 
        .B(N_89_mux), .C(\slv_select[3]_net_1 ), .Y(N_59_i_0));
    SLE \PRDATA_buf[14]  (.D(\PRDATA_buf[13]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[14]_net_1 ));
    SLE \PRDATA_buf[0]  (.D(MISO_c), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[0]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[28]  (.A(\count_RNIKG2M8_S[28] ), 
        .B(m74_a1_1), .Y(\count_0[28]_net_1 ));
    CFG2 #( .INIT(4'h4) )  ss_n_RNIUDDB (.A(ss_n_c), .B(
        assert_data_net_1), .Y(m12_0));
    CFG4 #( .INIT(16'h0001) )  un2_count_22 (.A(\count[27]_net_1 ), .B(
        \count[26]_net_1 ), .C(\count[25]_net_1 ), .D(
        \count[24]_net_1 ), .Y(un2_count_22_net_1));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[22]  (.A(
        \PWDATA_buf[21]_net_1 ), .B(m67_0), .C(\PWDATA_c[22] ), .Y(
        \PWDATA_buf_RNO[22]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIFFRN3[15]  (.A(VCC_net_1), 
        .B(\count[15]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_14), .S(\count_RNIFFRN3_S[15] ), .Y(), .FCO(
        un1_count_cry_15));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[30]  (.A(
        \PWDATA_buf[29]_net_1 ), .B(m67_0), .C(\PWDATA_c[30] ), .Y(
        \PWDATA_buf_RNO[30]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  un14_count_cry_2 (.A(VCC_net_1), .B(
        \clk_toggles[2]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un14_count_cry_1_net_1), .S(), .Y(), .FCO(
        un14_count_cry_2_net_1));
    SLE \PWDATA_buf[6]  (.D(\PWDATA_buf_RNO[6]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[6]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  un14_count_cry_1 (.A(VCC_net_1), .B(
        \clk_toggles[1]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un14_count_cry_0_net_1), .S(), .Y(), .FCO(
        un14_count_cry_1_net_1));
    INBUF reset_ibuf (.PAD(reset), .Y(reset_ibuf_net_1));
    CFG2 #( .INIT(4'h2) )  \count_0[13]  (.A(\count_RNI22IV2_S[13] ), 
        .B(m74_a1_1), .Y(\count_0[13]_net_1 ));
    SLE \PRDATA_buf[13]  (.D(\PRDATA_buf[12]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[13]_net_1 ));
    SLE continue (.D(continue_4), .CLK(clk_c), .EN(reset_c), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(continue_net_1));
    ARI1 #( .INIT(20'h4AA00) )  \clk_toggles_RNI7BT21[1]  (.A(
        VCC_net_1), .B(\clk_toggles[1]_net_1 ), .C(GND_net_1), .D(
        GND_net_1), .FCI(un1_clk_toggles_1_cry_0), .S(
        \clk_toggles_RNI7BT21_S[1] ), .Y(), .FCO(
        un1_clk_toggles_1_cry_1));
    OUTBUF \PRDATA_obuf[7]  (.D(\PRDATA_c[7] ), .PAD(PRDATA[7]));
    SLE \slv_select[0]  (.D(\PADDR_c[0] ), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\slv_select[0]_net_1 ));
    CFG2 #( .INIT(4'h8) )  PWRITE_ibuf_RNIB0JH (.A(assert_data_net_1), 
        .B(PWRITE_c), .Y(m26_0));
    INBUF \PWDATA_ibuf[9]  (.PAD(PWDATA[9]), .Y(\PWDATA_c[9] ));
    CFG2 #( .INIT(4'h2) )  \count_0[14]  (.A(\count_RNI8OMB3_S[14] ), 
        .B(m74_a1_1), .Y(\count_0[14]_net_1 ));
    SLE \PWDATA_buf[1]  (.D(\PWDATA_buf_RNO[1]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[1]_net_1 ));
    INBUF clk_ibuf (.PAD(clk), .Y(clk_ibuf_net_1));
    OUTBUF ss_n_obuf (.D(ss_n_c), .PAD(ss_n));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI1DAB1[7]  (.A(VCC_net_1), .B(
        \count[7]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_6), .S(\count_RNI1DAB1_S[7] ), .Y(), .FCO(
        un1_count_cry_7));
    SLE \PWDATA_buf[9]  (.D(\PWDATA_buf_RNO[9]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[9]_net_1 ));
    SLE \PRDATA_buf[15]  (.D(\PRDATA_buf[14]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[15]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[9]  (.A(\count_RNIKJVE1_S[9] ), .B(
        m74_a1_1), .Y(\count_0[9]_net_1 ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[37]  (.A(
        \PWDATA_buf[36]_net_1 ), .B(m67_0), .C(\command[0]_net_1 ), .Y(
        \PWDATA_buf_RNO[37]_net_1 ));
    SLE \PWDATA_buf[36]  (.D(N_66_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[36]_net_1 ));
    SLE \PWDATA_buf[18]  (.D(\PWDATA_buf_RNO[18]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[18]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIE6HU[0]  (.A(VCC_net_1), .B(
        \count[0]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_0_cy), .S(\count_RNIE6HU_S[0] ), .Y(), .FCO(
        un1_count_cry_0));
    INBUF \PWDATA_ibuf[11]  (.PAD(PWDATA[11]), .Y(\PWDATA_c[11] ));
    SLE \count[1]  (.D(N_26_i_0), .CLK(clk_c), .EN(VCC_net_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\count[1]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \clk_toggles_RNO[6]  (.A(VCC_net_1), 
        .B(un22_countlto6), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_clk_toggles_1_cry_5), .S(\clk_toggles_RNO_S[6] ), .Y(), 
        .FCO());
    ARI1 #( .INIT(20'h59966) )  un14_count_cry_4 (.A(un22_countlto4_i), 
        .B(CO3), .C(\ltRx_bit[4] ), .D(GND_net_1), .FCI(
        un14_count_cry_3_net_1), .S(), .Y(), .FCO(
        un14_count_cry_4_net_1));
    SLE \slv_select[1]  (.D(\PADDR_c[1] ), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\slv_select[1]_net_1 ));
    SLE \PRDATA[19]  (.D(\PRDATA_buf[19]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[19] ));
    INBUF \PWDATA_ibuf[31]  (.PAD(PWDATA[31]), .Y(\PWDATA_c[31] ));
    SLE \PRDATA_buf[19]  (.D(\PRDATA_buf[18]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[19]_net_1 ));
    SLE \PWDATA_buf[0]  (.D(N_622_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[0]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI9RF91[6]  (.A(VCC_net_1), .B(
        \count[6]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_5), .S(\count_RNI9RF91_S[6] ), .Y(), .FCO(
        un1_count_cry_6));
    SLE \count[3]  (.D(\count_0[3]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[3]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \clk_toggles_RNIVKJ41[2]  (.A(
        VCC_net_1), .B(\clk_toggles[2]_net_1 ), .C(GND_net_1), .D(
        GND_net_1), .FCI(un1_clk_toggles_1_cry_1), .S(
        \clk_toggles_RNIVKJ41_S[2] ), .Y(), .FCO(
        un1_clk_toggles_1_cry_2));
    SLE \clk_toggles[2]  (.D(\clk_toggles_RNIVKJ41_S[2] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \clk_toggles[2]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[23]  (.A(\count_RNI7D5P6_S[23] ), 
        .B(m74_a1_1), .Y(\count_0[23]_net_1 ));
    SLE \count[29]  (.D(\count_0[29]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[29]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNISVP06[21]  (.A(VCC_net_1), 
        .B(\count[21]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_20), .S(\count_RNISVP06_S[21] ), .Y(), .FCO(
        un1_count_cry_21));
    CFG1 #( .INIT(2'h1) )  \command_RNO[0]  (.A(PWRITE_c), .Y(
        PWRITE_c_i_0));
    SLE \count[19]  (.D(\count_0[19]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[19]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI44FE9[30]  (.A(VCC_net_1), 
        .B(\count[30]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_29), .S(\count_RNI44FE9_S[30] ), .Y(), .FCO(
        un1_count_cry_30));
    INBUF \PWDATA_ibuf[28]  (.PAD(PWDATA[28]), .Y(\PWDATA_c[28] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[11]  (.A(
        \PWDATA_buf[10]_net_1 ), .B(m67_0), .C(\PWDATA_c[11] ), .Y(
        \PWDATA_buf_RNO[11]_net_1 ));
    CFG4 #( .INIT(16'h1555) )  clk_toggles_0_sqmuxa_1_0 (.A(m74_a1_1), 
        .B(N_68), .C(N_69), .D(clk_toggles_0_sqmuxa_1_0_a3_0_1_net_1), 
        .Y(clk_toggles_0_sqmuxa_1_i));
    SLE \PRDATA[14]  (.D(\PRDATA_buf[14]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[14] ));
    CFG1 #( .INIT(2'h1) )  ss_n_RNO (.A(\state[0]_net_1 ), .Y(
        \state_i_0[0] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[15]  (.A(
        \PWDATA_buf[14]_net_1 ), .B(m67_0), .C(\PWDATA_c[15] ), .Y(
        \PWDATA_buf_RNO[15]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNITCDJ2[12]  (.A(VCC_net_1), 
        .B(\count[12]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_11), .S(\count_RNITCDJ2_S[12] ), .Y(), .FCO(
        un1_count_cry_12));
    SLE \ltRx_bit[1]  (.D(cpha_c), .CLK(clk_c), .EN(m74_a1_1), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(\ltRx_bit[4] ));
    CFG2 #( .INIT(4'h2) )  \count_0[24]  (.A(\count_RNIE5B57_S[24] ), 
        .B(m74_a1_1), .Y(\count_0[24]_net_1 ));
    INBUF \PWDATA_ibuf[12]  (.PAD(PWDATA[12]), .Y(\PWDATA_c[12] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[10]  (.A(
        \PWDATA_buf[9]_net_1 ), .B(m67_0), .C(\PWDATA_c[10] ), .Y(
        \PWDATA_buf_RNO[10]_net_1 ));
    OUTBUF \PRDATA_obuf[21]  (.D(\PRDATA_c[21] ), .PAD(PRDATA[21]));
    OUTBUF \PRDATA_obuf[0]  (.D(\PRDATA_c[0] ), .PAD(PRDATA[0]));
    SLE \clk_toggles[0]  (.D(\clk_toggles_RNIG2711_Y[0] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \clk_toggles[0]_net_1 ));
    TRIBUFF CLKOUT_obuft (.D(CLKOUT_1_net_1), .E(CLKOUT_cl_net_1), 
        .PAD(CLKOUT));
    CFG4 #( .INIT(16'h10DC) )  CLKOUT_cl_1_iv_i_0_1 (.A(N_1412_tz), .B(
        N_34), .C(un22_countlto6), .D(CLKOUT_cl_net_1), .Y(
        CLKOUT_cl_1_iv_i_0_1_net_1));
    CFG4 #( .INIT(16'h0080) )  un2_count_16 (.A(\count[5]_net_1 ), .B(
        \count[4]_net_1 ), .C(\count[1]_net_1 ), .D(\count[0]_net_1 ), 
        .Y(un2_count_16_net_1));
    INBUF \PWDATA_ibuf[25]  (.PAD(PWDATA[25]), .Y(\PWDATA_c[25] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[4]  (.A(
        \PWDATA_buf[3]_net_1 ), .B(m67_0), .C(\PWDATA_c[4] ), .Y(
        \PWDATA_buf_RNO[4]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[2]  (.A(\count_RNIJU521_S[2] ), .B(
        m74_a1_1), .Y(\count_0[2]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \clk_toggles_RNIOV961[3]  (.A(
        VCC_net_1), .B(\clk_toggles[3]_net_1 ), .C(GND_net_1), .D(
        GND_net_1), .FCI(un1_clk_toggles_1_cry_2), .S(
        \clk_toggles_RNIOV961_S[3] ), .Y(), .FCO(
        un1_clk_toggles_1_cry_3));
    SLE \PRDATA[0]  (.D(\PRDATA_buf[0]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[0] ));
    SLE \PRDATA[31]  (.D(\PRDATA_buf[31]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[31] ));
    SLE \clk_toggles[1]  (.D(\clk_toggles_RNI7BT21_S[1] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \clk_toggles[1]_net_1 ));
    OUTBUF \PRDATA_obuf[24]  (.D(\PRDATA_c[24] ), .PAD(PRDATA[24]));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNISQQ51[4]  (.A(VCC_net_1), .B(
        \count[4]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_3), .S(\count_RNISQQ51_S[4] ), .Y(), .FCO(
        un1_count_cry_4));
    SLE \PRDATA_buf[27]  (.D(\PRDATA_buf[26]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[27]_net_1 ));
    INBUF enable_ibuf (.PAD(enable), .Y(enable_c));
    ARI1 #( .INIT(20'h6AA00) )  un30_count_cry_6 (.A(VCC_net_1), .B(
        un22_countlto6), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_5_net_1), .S(), .Y(), .FCO(
        un30_count_cry_6_net_1));
    CFG2 #( .INIT(4'h8) )  un42_count_NE_i_a2_0_1 (.A(
        \clk_toggles[2]_net_1 ), .B(\clk_toggles[3]_net_1 ), .Y(
        un42_count_NE_i_a2_0_1_net_1));
    CFG3 #( .INIT(8'h72) )  \PWDATA_buf_RNO[33]  (.A(\state[0]_net_1 ), 
        .B(N_87_mux), .C(\slv_select[1]_net_1 ), .Y(N_45_i_0));
    INBUF \PWDATA_ibuf[26]  (.PAD(PWDATA[26]), .Y(\PWDATA_c[26] ));
    CFG2 #( .INIT(4'h8) )  un2_count (.A(un2_count_28_net_1), .B(
        un2_count_29_net_1), .Y(un2_count_net_1));
    SLE \PRDATA_buf[4]  (.D(\PRDATA_buf[3]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[4]_net_1 ));
    INBUF \PWDATA_ibuf[2]  (.PAD(PWDATA[2]), .Y(\PWDATA_c[2] ));
    SLE \PRDATA[4]  (.D(\PRDATA_buf[4]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[4] ));
    SLE \ltRx_bit[0]  (.D(cpha_c_i_0), .CLK(clk_c), .EN(m74_a1_1), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(CO3));
    INBUF \PWDATA_ibuf[10]  (.PAD(PWDATA[10]), .Y(\PWDATA_c[10] ));
    SLE CS_inst_1 (.D(CS_6), .CLK(clk_c), .EN(VCC_net_1), .ALn(reset_c)
        , .ADn(GND_net_1), .SLn(VCC_net_1), .SD(GND_net_1), .LAT(
        GND_net_1), .Q(CS_c));
    INBUF \PWDATA_ibuf[30]  (.PAD(PWDATA[30]), .Y(\PWDATA_c[30] ));
    OUTBUF \PRDATA_obuf[17]  (.D(\PRDATA_c[17] ), .PAD(PRDATA[17]));
    INBUF \PADDR_ibuf[3]  (.PAD(PADDR[3]), .Y(\PADDR_c[3] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[17]  (.A(
        \PWDATA_buf[16]_net_1 ), .B(m67_0), .C(\PWDATA_c[17] ), .Y(
        \PWDATA_buf_RNO[17]_net_1 ));
    SLE \PRDATA_buf[22]  (.D(\PRDATA_buf[21]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[22]_net_1 ));
    CFG4 #( .INIT(16'h3555) )  \PWDATA_buf_RNO_0[32]  (.A(\PADDR_c[0] )
        , .B(\PWDATA_buf[31]_net_1 ), .C(m26_0), .D(
        un30_count_cry_6_net_1), .Y(N_86_mux));
    CFG3 #( .INIT(8'hF2) )  \count_RNO[4]  (.A(\count_RNISQQ51_S[4] ), 
        .B(N_68), .C(m74_a1_1), .Y(N_24_i_0));
    ARI1 #( .INIT(20'h566CC) )  \clk_toggles_RNIG2711[0]  (.A(
        N_4_0_i_0), .B(reset_c), .C(\clk_toggles[0]_net_1 ), .D(
        GND_net_1), .FCI(GND_net_1), .S(), .Y(
        \clk_toggles_RNIG2711_Y[0] ), .FCO(un1_clk_toggles_1_cry_0));
    SLE \PRDATA[20]  (.D(\PRDATA_buf[20]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[20] ));
    SLE \PRDATA_buf[9]  (.D(\PRDATA_buf[8]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[9]_net_1 ));
    CFG4 #( .INIT(16'h0001) )  un2_count_21 (.A(\count[23]_net_1 ), .B(
        \count[22]_net_1 ), .C(\count[21]_net_1 ), .D(
        \count[20]_net_1 ), .Y(un2_count_21_net_1));
    SLE \PWDATA_buf[26]  (.D(\PWDATA_buf_RNO[26]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[26]_net_1 ));
    CFG2 #( .INIT(4'hD) )  \PWDATA_buf_RNO[38]  (.A(m67_0), .B(
        \PWDATA_buf[37]_net_1 ), .Y(N_843_i_0));
    SLE \PRDATA[2]  (.D(\PRDATA_buf[2]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[2] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[29]  (.A(
        \PWDATA_buf[28]_net_1 ), .B(m67_0), .C(\PWDATA_c[29] ), .Y(
        \PWDATA_buf_RNO[29]_net_1 ));
    OUTBUF \PRDATA_obuf[13]  (.D(\PRDATA_c[13] ), .PAD(PRDATA[13]));
    CLKINT clk_ibuf_RNIVTI2 (.A(clk_ibuf_net_1), .Y(clk_c));
    SLE CLKOUT_1 (.D(CLKOUT_8), .CLK(clk_c), .EN(reset_c), .ALn(
        VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(CLKOUT_1_net_1));
    SLE \PRDATA_buf[20]  (.D(\PRDATA_buf[19]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[20]_net_1 ));
    SLE \PRDATA_buf[18]  (.D(\PRDATA_buf[17]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[18]_net_1 ));
    ARI1 #( .INIT(20'h4C800) )  enable_ibuf_RNITRMS (.A(VCC_net_1), .B(
        enable_c), .C(reset_c), .D(\state[0]_net_1 ), .FCI(VCC_net_1), 
        .S(), .Y(), .FCO(un1_count_cry_0_cy));
    CFG2 #( .INIT(4'h2) )  \count_0[7]  (.A(\count_RNI1DAB1_S[7] ), .B(
        m74_a1_1), .Y(\count_0[7]_net_1 ));
    SLE \PRDATA[23]  (.D(\PRDATA_buf[23]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[23] ));
    SLE \PRDATA[8]  (.D(\PRDATA_buf[8]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[8] ));
    CFG4 #( .INIT(16'h3555) )  \PWDATA_buf_RNO_0[36]  (.A(\PADDR_c[4] )
        , .B(\PWDATA_buf[35]_net_1 ), .C(m26_0), .D(
        un30_count_cry_6_net_1), .Y(N_90_mux));
    SLE \clk_toggles[4]  (.D(un42_count_NE_i_a2_RNIDEM23_S), .CLK(
        clk_c), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        un22_countlto4));
    INBUF \PWDATA_ibuf[13]  (.PAD(PWDATA[13]), .Y(\PWDATA_c[13] ));
    INBUF \PWDATA_ibuf[8]  (.PAD(PWDATA[8]), .Y(\PWDATA_c[8] ));
    SLE \PRDATA_buf[7]  (.D(\PRDATA_buf[6]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[7]_net_1 ));
    CFG4 #( .INIT(16'h8000) )  un2_count_28 (.A(un2_count_19_net_1), 
        .B(un2_count_18_net_1), .C(un2_count_17_net_1), .D(
        un2_count_16_net_1), .Y(un2_count_28_net_1));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[13]  (.A(
        \PWDATA_buf[12]_net_1 ), .B(m67_0), .C(\PWDATA_c[13] ), .Y(
        \PWDATA_buf_RNO[13]_net_1 ));
    OUTBUF \PRDATA_obuf[28]  (.D(\PRDATA_c[28] ), .PAD(PRDATA[28]));
    CFG4 #( .INIT(16'h5450) )  un42_count_NE_i_a2_RNI3MSS2 (.A(N_70), 
        .B(un2_count_net_1), .C(m74_a1_1), .D(m74_0tt_m2_e_1), .Y(
        m74_0_N_7));
    INBUF \PWDATA_ibuf[4]  (.PAD(PWDATA[4]), .Y(\PWDATA_c[4] ));
    CFG2 #( .INIT(4'h2) )  \count_0[19]  (.A(\count_RNILME85_S[19] ), 
        .B(m74_a1_1), .Y(\count_0[19]_net_1 ));
    OUTBUF \PRDATA_obuf[9]  (.D(\PRDATA_c[9] ), .PAD(PRDATA[9]));
    SLE \PRDATA_buf[1]  (.D(\PRDATA_buf[0]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[1]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIVOMT7[26]  (.A(VCC_net_1), 
        .B(\count[26]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_25), .S(\count_RNIVOMT7_S[26] ), .Y(), .FCO(
        un1_count_cry_26));
    CFG4 #( .INIT(16'h1511) )  CLKOUT_cl_1_iv_i_0_1_RNO (.A(
        un22_countlto5), .B(un22_countlto4), .C(\clk_toggles[0]_net_1 )
        , .D(N_69), .Y(N_1412_tz));
    OUTBUF \PRDATA_obuf[22]  (.D(\PRDATA_c[22] ), .PAD(PRDATA[22]));
    ARI1 #( .INIT(20'h59933) )  un14_count_cry_5 (.A(CO3), .B(
        \ltRx_bit[4] ), .C(un22_countlto5), .D(GND_net_1), .FCI(
        un14_count_cry_4_net_1), .S(), .Y(), .FCO(
        un14_count_cry_5_net_1));
    INBUF \PADDR_ibuf[4]  (.PAD(PADDR[4]), .Y(\PADDR_c[4] ));
    CFG2 #( .INIT(4'h2) )  \count_0[15]  (.A(\count_RNIFFRN3_S[15] ), 
        .B(m74_a1_1), .Y(\count_0[15]_net_1 ));
    CFG2 #( .INIT(4'h2) )  \count_0[6]  (.A(\count_RNI9RF91_S[6] ), .B(
        m74_a1_1), .Y(\count_0[6]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  un30_count_cry_2 (.A(CO3), .B(
        \clk_toggles[2]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_1_net_1), .S(), .Y(), .FCO(
        un30_count_cry_2_net_1));
    SLE \PWDATA_buf[16]  (.D(\PWDATA_buf_RNO[16]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[16]_net_1 ));
    INBUF \PWDATA_ibuf[1]  (.PAD(PWDATA[1]), .Y(\PWDATA_c[1] ));
    SLE \PRDATA_buf[21]  (.D(\PRDATA_buf[20]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[21]_net_1 ));
    SLE \count[31]  (.D(\count_0[31]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[31]_net_1 ));
    SLE \count[28]  (.D(\count_0[28]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[28]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_0_RNO[31]  (.A(VCC_net_1), .B(
        \count[31]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_30), .S(\count_0_RNO_S[31] ), .Y(), .FCO());
    CFG3 #( .INIT(8'hE2) )  enable_ibuf_RNIIOBQ (.A(enable_c), .B(
        \state[0]_net_1 ), .C(un2_count_net_1), .Y(N_4_0_i_0));
    SLE \count[18]  (.D(\count_0[18]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[18]_net_1 ));
    SLE \PRDATA[27]  (.D(\PRDATA_buf[27]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[27] ));
    SLE \PRDATA[1]  (.D(\PRDATA_buf[1]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[1] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[18]  (.A(
        \PWDATA_buf[17]_net_1 ), .B(m67_0), .C(\PWDATA_c[18] ), .Y(
        \PWDATA_buf_RNO[18]_net_1 ));
    SLE \PRDATA_buf[8]  (.D(\PRDATA_buf[7]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[8]_net_1 ));
    SLE \PRDATA[3]  (.D(\PRDATA_buf[3]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[3] ));
    SLE \count[7]  (.D(\count_0[7]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[7]_net_1 ));
    CFG3 #( .INIT(8'h72) )  \PWDATA_buf_RNO[36]  (.A(\state[0]_net_1 ), 
        .B(N_90_mux), .C(\slv_select[4]_net_1 ), .Y(N_66_i_0));
    OUTBUF \PRDATA_obuf[10]  (.D(\PRDATA_c[10] ), .PAD(PRDATA[10]));
    INBUF \PWDATA_ibuf[19]  (.PAD(PWDATA[19]), .Y(\PWDATA_c[19] ));
    OUTBUF \PRDATA_obuf[16]  (.D(\PRDATA_c[16] ), .PAD(PRDATA[16]));
    CFG2 #( .INIT(4'h2) )  \count_0[29]  (.A(\count_RNI0E829_S[29] ), 
        .B(m74_a1_1), .Y(\count_0[29]_net_1 ));
    SLE \PWDATA_buf[37]  (.D(\PWDATA_buf_RNO[37]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[37]_net_1 ));
    OUTBUF \PRDATA_obuf[30]  (.D(\PRDATA_c[30] ), .PAD(PRDATA[30]));
    CFG3 #( .INIT(8'h80) )  continue_RNIBABN (.A(continue_net_1), .B(
        \state[0]_net_1 ), .C(un2_count_net_1), .Y(N_4_i_0));
    INBUF \PWDATA_ibuf[17]  (.PAD(PWDATA[17]), .Y(\PWDATA_c[17] ));
    CFG2 #( .INIT(4'h2) )  \count_0[25]  (.A(\count_RNIMUGH7_S[25] ), 
        .B(m74_a1_1), .Y(\count_0[25]_net_1 ));
    CFG4 #( .INIT(16'h0001) )  un2_count_23 (.A(\count[31]_net_1 ), .B(
        \count[30]_net_1 ), .C(\count[29]_net_1 ), .D(
        \count[28]_net_1 ), .Y(un2_count_23_net_1));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[3]  (.A(
        \PWDATA_buf[2]_net_1 ), .B(m67_0), .C(\PWDATA_c[3] ), .Y(
        \PWDATA_buf_RNO[3]_net_1 ));
    INBUF \PADDR_ibuf[0]  (.PAD(PADDR[0]), .Y(\PADDR_c[0] ));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[8]  (.A(
        \PWDATA_buf[7]_net_1 ), .B(m67_0), .C(\PWDATA_c[8] ), .Y(
        \PWDATA_buf_RNO[8]_net_1 ));
    SLE \PRDATA[10]  (.D(\PRDATA_buf[10]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[10] ));
    SLE \count[6]  (.D(\count_0[6]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[6]_net_1 ));
    SLE \PWDATA_buf[3]  (.D(\PWDATA_buf_RNO[3]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[3]_net_1 ));
    SLE \PWDATA_buf[2]  (.D(\PWDATA_buf_RNO[2]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[2]_net_1 ));
    INBUF \PWDATA_ibuf[6]  (.PAD(PWDATA[6]), .Y(\PWDATA_c[6] ));
    CFG3 #( .INIT(8'h80) )  un30_count_cry_6_RNI4G3B1 (.A(m26_0), .B(
        un30_count_cry_6_net_1), .C(\state[0]_net_1 ), .Y(m67_0));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[24]  (.A(
        \PWDATA_buf[23]_net_1 ), .B(m67_0), .C(\PWDATA_c[24] ), .Y(
        \PWDATA_buf_RNO[24]_net_1 ));
    SLE \PWDATA_buf[32]  (.D(N_38_i_0), .CLK(clk_c), .EN(m74_0_N_6), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PWDATA_buf[32]_net_1 ));
    CFG4 #( .INIT(16'h3555) )  \PWDATA_buf_RNO_0[35]  (.A(\PADDR_c[3] )
        , .B(\PWDATA_buf[34]_net_1 ), .C(m26_0), .D(
        un30_count_cry_6_net_1), .Y(N_89_mux));
    CFG3 #( .INIT(8'h72) )  \PWDATA_buf_RNO[32]  (.A(\state[0]_net_1 ), 
        .B(N_86_mux), .C(\slv_select[0]_net_1 ), .Y(N_38_i_0));
    OUTBUF \PRDATA_obuf[2]  (.D(\PRDATA_c[2] ), .PAD(PRDATA[2]));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI015G4[17]  (.A(VCC_net_1), 
        .B(\count[17]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_16), .S(\count_RNI015G4_S[17] ), .Y(), .FCO(
        un1_count_cry_17));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIN7044[16]  (.A(VCC_net_1), 
        .B(\count[16]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_15), .S(\count_RNIN7044_S[16] ), .Y(), .FCO(
        un1_count_cry_16));
    CLKINT reset_ibuf_RNI8255 (.A(reset_ibuf_net_1), .Y(reset_c));
    INBUF cpha_ibuf (.PAD(cpha), .Y(cpha_c));
    SLE \PRDATA_buf[24]  (.D(\PRDATA_buf[23]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[24]_net_1 ));
    CFG2 #( .INIT(4'hE) )  \state_RNO[0]  (.A(\state[0]_net_1 ), .B(
        enable_c), .Y(CLKOUT_cl_1_sqmuxa_i_0));
    ARI1 #( .INIT(20'h566CC) )  un42_count_NE_i_a2_RNIDEM23 (.A(N_68), 
        .B(N_70), .C(un22_countlto4), .D(GND_net_1), .FCI(
        un1_clk_toggles_1_cry_3), .S(un42_count_NE_i_a2_RNIDEM23_S), 
        .Y(), .FCO(un1_clk_toggles_1_cry_4));
    INBUF \PWDATA_ibuf[14]  (.PAD(PWDATA[14]), .Y(\PWDATA_c[14] ));
    SLE \PWDATA_buf[30]  (.D(\PWDATA_buf_RNO[30]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[30]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIE5B57[24]  (.A(VCC_net_1), 
        .B(\count[24]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_23), .S(\count_RNIE5B57_S[24] ), .Y(), .FCO(
        un1_count_cry_24));
    SLE \PRDATA[13]  (.D(\PRDATA_buf[13]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[13] ));
    SLE \count[26]  (.D(\count_0[26]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[26]_net_1 ));
    SLE \PRDATA_buf[23]  (.D(\PRDATA_buf[22]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[23]_net_1 ));
    SLE \count[16]  (.D(\count_0[16]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[16]_net_1 ));
    CFG4 #( .INIT(16'hF8F0) )  un42_count_NE_i_a2_RNIQPG94 (.A(reset_c)
        , .B(N_70), .C(m74_0_N_7), .D(N_4_0_i_0), .Y(m74_0_N_6));
    CFG4 #( .INIT(16'h0001) )  un2_count_17 (.A(\count[7]_net_1 ), .B(
        \count[6]_net_1 ), .C(\count[3]_net_1 ), .D(\count[2]_net_1 ), 
        .Y(un2_count_17_net_1));
    SLE \PRDATA_buf[16]  (.D(\PRDATA_buf[15]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[16]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNI0E829[29]  (.A(VCC_net_1), 
        .B(\count[29]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_28), .S(\count_RNI0E829_S[29] ), .Y(), .FCO(
        un1_count_cry_29));
    SLE \count[2]  (.D(\count_0[2]_net_1 ), .CLK(clk_c), .EN(VCC_net_1)
        , .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\count[2]_net_1 ));
    SLE \clk_toggles[5]  (.D(un42_count_NE_i_a2_RNI3U2V4_S), .CLK(
        clk_c), .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        un22_countlto5));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[16]  (.A(
        \PWDATA_buf[15]_net_1 ), .B(m67_0), .C(\PWDATA_c[16] ), .Y(
        \PWDATA_buf_RNO[16]_net_1 ));
    ARI1 #( .INIT(20'h45500) )  un14_count_cry_3 (.A(VCC_net_1), .B(
        \clk_toggles[3]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un14_count_cry_2_net_1), .S(), .Y(), .FCO(
        un14_count_cry_3_net_1));
    INBUF \PWDATA_ibuf[21]  (.PAD(PWDATA[21]), .Y(\PWDATA_c[21] ));
    SLE \PRDATA_buf[25]  (.D(\PRDATA_buf[24]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[25]_net_1 ));
    SLE \clk_toggles[3]  (.D(\clk_toggles_RNIOV961_S[3] ), .CLK(clk_c), 
        .EN(VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \clk_toggles[3]_net_1 ));
    SLE \PWDATA_buf[27]  (.D(\PWDATA_buf_RNO[27]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[27]_net_1 ));
    CFG4 #( .INIT(16'h8000) )  un14_count_cry_6_RNIUIGC1 (.A(m71_1), 
        .B(m12_0), .C(un2_count_net_1), .D(un14_count_cry_6_net_1), .Y(
        PRDATA_buf_0_sqmuxa_1));
    SLE \PRDATA_buf[29]  (.D(\PRDATA_buf[28]_net_1 ), .CLK(clk_c), .EN(
        PRDATA_buf_0_sqmuxa_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PRDATA_buf[29]_net_1 ));
    SLE \count[21]  (.D(\count_0[21]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[21]_net_1 ));
    OUTBUF \PRDATA_obuf[8]  (.D(\PRDATA_c[8] ), .PAD(PRDATA[8]));
    SLE MOSI_cl (.D(N_76_i_0), .CLK(clk_c), .EN(VCC_net_1), .ALn(
        reset_c), .ADn(GND_net_1), .SLn(VCC_net_1), .SD(GND_net_1), 
        .LAT(GND_net_1), .Q(MOSI_cl_net_1));
    SLE \count[11]  (.D(\count_0[11]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[11]_net_1 ));
    SLE \PRDATA[17]  (.D(\PRDATA_buf[17]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[17] ));
    INBUF \PWDATA_ibuf[22]  (.PAD(PWDATA[22]), .Y(\PWDATA_c[22] ));
    SLE \PWDATA_buf[31]  (.D(\PWDATA_buf_RNO[31]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[31]_net_1 ));
    OUTBUF \PRDATA_obuf[4]  (.D(\PRDATA_c[4] ), .PAD(PRDATA[4]));
    SLE \clk_toggles[6]  (.D(\clk_toggles_RNO_S[6] ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        clk_toggles_0_sqmuxa_1_i), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        un22_countlto6));
    CFG4 #( .INIT(16'h3555) )  \PWDATA_buf_RNO_0[34]  (.A(\PADDR_c[2] )
        , .B(\PWDATA_buf[33]_net_1 ), .C(m26_0), .D(
        un30_count_cry_6_net_1), .Y(N_88_mux));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[12]  (.A(
        \PWDATA_buf[11]_net_1 ), .B(m67_0), .C(\PWDATA_c[12] ), .Y(
        \PWDATA_buf_RNO[12]_net_1 ));
    SLE \count[24]  (.D(\count_0[24]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[24]_net_1 ));
    SLE ss_n_inst_1 (.D(\state_i_0[0] ), .CLK(clk_c), .EN(VCC_net_1), 
        .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(GND_net_1)
        , .LAT(GND_net_1), .Q(ss_n_c));
    CFG4 #( .INIT(16'h2000) )  clk_toggles_0_sqmuxa_1_0_a3_0_1 (.A(
        un22_countlto6), .B(un22_countlto5), .C(un22_countlto4), .D(
        \clk_toggles[0]_net_1 ), .Y(
        clk_toggles_0_sqmuxa_1_0_a3_0_1_net_1));
    SLE \count[14]  (.D(\count_0[14]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[14]_net_1 ));
    SLE \PWDATA_buf[22]  (.D(\PWDATA_buf_RNO[22]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[22]_net_1 ));
    OUTBUF \PRDATA_obuf[1]  (.D(\PRDATA_c[1] ), .PAD(PRDATA[1]));
    CFG2 #( .INIT(4'h8) )  un2_count_RNI1FTD1 (.A(un2_count_net_1), .B(
        m67_0), .Y(MOSI_1_9));
    INBUF \PWDATA_ibuf[5]  (.PAD(PWDATA[5]), .Y(\PWDATA_c[5] ));
    SLE \PRDATA[26]  (.D(\PRDATA_buf[26]_net_1 ), .CLK(clk_c), .EN(
        N_4_i_0), .ALn(reset_c), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(\PRDATA_c[26] ));
    CFG2 #( .INIT(4'h2) )  \count_0[10]  (.A(\count_RNIM54R1_S[10] ), 
        .B(m74_a1_1), .Y(\count_0[10]_net_1 ));
    CFG4 #( .INIT(16'h3555) )  \PWDATA_buf_RNO_0[33]  (.A(\PADDR_c[1] )
        , .B(\PWDATA_buf[32]_net_1 ), .C(m26_0), .D(
        un30_count_cry_6_net_1), .Y(N_87_mux));
    OUTBUF \PRDATA_obuf[19]  (.D(\PRDATA_c[19] ), .PAD(PRDATA[19]));
    SLE \count[30]  (.D(\count_0[30]_net_1 ), .CLK(clk_c), .EN(
        VCC_net_1), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), 
        .SD(GND_net_1), .LAT(GND_net_1), .Q(\count[30]_net_1 ));
    OUTBUF \PRDATA_obuf[15]  (.D(\PRDATA_c[15] ), .PAD(PRDATA[15]));
    CFG3 #( .INIT(8'hB8) )  MOSI_cl_RNO (.A(\state[0]_net_1 ), .B(
        MOSI_cl_net_1), .C(MOSI_1_9), .Y(N_76_i_0));
    INBUF \PWDATA_ibuf[20]  (.PAD(PWDATA[20]), .Y(\PWDATA_c[20] ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIMUGH7[25]  (.A(VCC_net_1), 
        .B(\count[25]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_24), .S(\count_RNIMUGH7_S[25] ), .Y(), .FCO(
        un1_count_cry_25));
    CFG4 #( .INIT(16'h0001) )  un2_count_19 (.A(\count[15]_net_1 ), .B(
        \count[14]_net_1 ), .C(\count[13]_net_1 ), .D(
        \count[12]_net_1 ), .Y(un2_count_19_net_1));
    SLE \PWDATA_buf[20]  (.D(\PWDATA_buf_RNO[20]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[20]_net_1 ));
    SLE assert_data (.D(assert_data_5), .CLK(clk_c), .EN(reset_c), 
        .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(VCC_net_1), .SD(
        GND_net_1), .LAT(GND_net_1), .Q(assert_data_net_1));
    OUTBUF \PRDATA_obuf[27]  (.D(\PRDATA_c[27] ), .PAD(PRDATA[27]));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNIJU521[2]  (.A(VCC_net_1), .B(
        \count[2]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_1), .S(\count_RNIJU521_S[2] ), .Y(), .FCO(
        un1_count_cry_2));
    CFG2 #( .INIT(4'h2) )  \count_0[30]  (.A(\count_RNI44FE9_S[30] ), 
        .B(m74_a1_1), .Y(\count_0[30]_net_1 ));
    CFG4 #( .INIT(16'h3800) )  un42_count_NE_i_a2 (.A(N_69), .B(
        un42_count_NE_i_a2_1_net_1), .C(\clk_toggles[0]_net_1 ), .D(
        un42_count_NE_i_a2_0), .Y(N_70));
    SLE \PWDATA_buf[17]  (.D(\PWDATA_buf_RNO[17]_net_1 ), .CLK(clk_c), 
        .EN(m74_0_N_6), .ALn(VCC_net_1), .ADn(VCC_net_1), .SLn(
        VCC_net_1), .SD(GND_net_1), .LAT(GND_net_1), .Q(
        \PWDATA_buf[17]_net_1 ));
    ARI1 #( .INIT(20'h4AA00) )  \count_RNILME85[19]  (.A(VCC_net_1), 
        .B(\count[19]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un1_count_cry_18), .S(\count_RNILME85_S[19] ), .Y(), .FCO(
        un1_count_cry_19));
    CFG2 #( .INIT(4'h2) )  \count_0[11]  (.A(\count_RNIPO872_S[11] ), 
        .B(m74_a1_1), .Y(\count_0[11]_net_1 ));
    ARI1 #( .INIT(20'h5AA55) )  un30_count_cry_1 (.A(CO3), .B(
        \clk_toggles[1]_net_1 ), .C(GND_net_1), .D(GND_net_1), .FCI(
        un30_count_cry_0_net_1), .S(), .Y(), .FCO(
        un30_count_cry_1_net_1));
    CFG3 #( .INIT(8'hB8) )  \PWDATA_buf_RNO[6]  (.A(
        \PWDATA_buf[5]_net_1 ), .B(m67_0), .C(\PWDATA_c[6] ), .Y(
        \PWDATA_buf_RNO[6]_net_1 ));
    
endmodule
