//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Oct 11 14:26:02 2016
// Version: v11.7 SP1 11.7.1.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// eSRAM_eNVM_access
module eSRAM_eNVM_access(
    // Inputs
    DEVRST_N,
    FAB_RESET_N,
    HPMS_FIC_0_USER_MASTER_HADDR_M0,
    HPMS_FIC_0_USER_MASTER_HBURST_M0,
    HPMS_FIC_0_USER_MASTER_HMASTLOCK_M0,
    HPMS_FIC_0_USER_MASTER_HPROT_M0,
    HPMS_FIC_0_USER_MASTER_HSIZE_M0,
    HPMS_FIC_0_USER_MASTER_HTRANS_M0,
    HPMS_FIC_0_USER_MASTER_HWDATA_M0,
    HPMS_FIC_0_USER_MASTER_HWRITE_M0,
    // Outputs
    COMM_BLK_INT,
    FIC_0_CLK,
    FIC_0_LOCK,
    HPMS_FIC_0_USER_MASTER_HRDATA_M0,
    HPMS_FIC_0_USER_MASTER_HREADY_M0,
    HPMS_FIC_0_USER_MASTER_HRESP_M0,
    HPMS_INT_M2F,
    HPMS_READY,
    INIT_DONE,
    POWER_ON_RESET_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         DEVRST_N;
input         FAB_RESET_N;
input  [31:0] HPMS_FIC_0_USER_MASTER_HADDR_M0;
input  [2:0]  HPMS_FIC_0_USER_MASTER_HBURST_M0;
input         HPMS_FIC_0_USER_MASTER_HMASTLOCK_M0;
input  [3:0]  HPMS_FIC_0_USER_MASTER_HPROT_M0;
input  [2:0]  HPMS_FIC_0_USER_MASTER_HSIZE_M0;
input  [1:0]  HPMS_FIC_0_USER_MASTER_HTRANS_M0;
input  [31:0] HPMS_FIC_0_USER_MASTER_HWDATA_M0;
input         HPMS_FIC_0_USER_MASTER_HWRITE_M0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        COMM_BLK_INT;
output        FIC_0_CLK;
output        FIC_0_LOCK;
output [31:0] HPMS_FIC_0_USER_MASTER_HRDATA_M0;
output        HPMS_FIC_0_USER_MASTER_HREADY_M0;
output [1:0]  HPMS_FIC_0_USER_MASTER_HRESP_M0;
output [15:0] HPMS_INT_M2F;
output        HPMS_READY;
output        INIT_DONE;
output        POWER_ON_RESET_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          COMM_BLK_INT_net_0;
wire   [31:0] CoreAHBLite_0_AHBmslave16_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave16_HBURST;
wire          CoreAHBLite_0_AHBmslave16_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave16_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave16_HRDATA;
wire          CoreAHBLite_0_AHBmslave16_HREADY;
wire          CoreAHBLite_0_AHBmslave16_HREADYOUT;
wire          CoreAHBLite_0_AHBmslave16_HSELx;
wire   [1:0]  CoreAHBLite_0_AHBmslave16_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave16_HWDATA;
wire          CoreAHBLite_0_AHBmslave16_HWRITE;
wire          CORERESETP_0_RESET_N_F2M;
wire          DEVRST_N;
wire          eSRAM_eNVM_access_HPMS_TMP_0_FIC_2_APB_M_PRESET_N;
wire          eSRAM_eNVM_access_HPMS_TMP_0_MSS_RESET_N_M2F;
wire          FAB_RESET_N;
wire          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire          FABOSC_0_RCOSC_25_50MHZ_O2F;
wire          FIC_0_CLK_net_0;
wire          FIC_0_LOCK_net_0;
wire   [31:0] HPMS_FIC_0_USER_MASTER_HADDR_M0;
wire   [2:0]  HPMS_FIC_0_USER_MASTER_HBURST_M0;
wire          HPMS_FIC_0_USER_MASTER_HMASTLOCK_M0;
wire   [3:0]  HPMS_FIC_0_USER_MASTER_HPROT_M0;
wire   [31:0] HPMS_FIC_0_USER_MASTER_HRDATA;
wire          HPMS_FIC_0_USER_MASTER_HREADY;
wire   [1:0]  HPMS_FIC_0_USER_MASTER_HRESP;
wire   [2:0]  HPMS_FIC_0_USER_MASTER_HSIZE_M0;
wire   [1:0]  HPMS_FIC_0_USER_MASTER_HTRANS_M0;
wire   [31:0] HPMS_FIC_0_USER_MASTER_HWDATA_M0;
wire          HPMS_FIC_0_USER_MASTER_HWRITE_M0;
wire   [15:0] HPMS_INT_M2F_net_0;
wire          HPMS_READY_net_0;
wire          INIT_DONE_net_0;
wire          POWER_ON_RESET_N_net_0;
wire          POWER_ON_RESET_N_net_1;
wire          INIT_DONE_net_1;
wire          FIC_0_CLK_net_1;
wire          FIC_0_LOCK_net_1;
wire          HPMS_READY_net_1;
wire   [31:0] HPMS_FIC_0_USER_MASTER_HRDATA_net_0;
wire          HPMS_FIC_0_USER_MASTER_HREADY_net_0;
wire   [1:0]  HPMS_FIC_0_USER_MASTER_HRESP_net_0;
wire          COMM_BLK_INT_net_1;
wire   [15:0] HPMS_INT_M2F_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] SDIF0_PRDATA_const_net_0;
wire   [31:0] SDIF1_PRDATA_const_net_0;
wire   [31:0] SDIF2_PRDATA_const_net_0;
wire   [31:0] SDIF3_PRDATA_const_net_0;
wire   [31:0] HADDR_M1_const_net_0;
wire   [1:0]  HTRANS_M1_const_net_0;
wire   [2:0]  HSIZE_M1_const_net_0;
wire   [2:0]  HBURST_M1_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
wire   [31:0] HWDATA_M1_const_net_0;
wire   [31:0] HADDR_M2_const_net_0;
wire   [1:0]  HTRANS_M2_const_net_0;
wire   [2:0]  HSIZE_M2_const_net_0;
wire   [2:0]  HBURST_M2_const_net_0;
wire   [3:0]  HPROT_M2_const_net_0;
wire   [31:0] HWDATA_M2_const_net_0;
wire   [31:0] HADDR_M3_const_net_0;
wire   [1:0]  HTRANS_M3_const_net_0;
wire   [2:0]  HSIZE_M3_const_net_0;
wire   [2:0]  HBURST_M3_const_net_0;
wire   [3:0]  HPROT_M3_const_net_0;
wire   [31:0] HWDATA_M3_const_net_0;
wire   [31:0] HRDATA_S0_const_net_0;
wire   [1:0]  HRESP_S0_const_net_0;
wire   [31:0] HRDATA_S1_const_net_0;
wire   [1:0]  HRESP_S1_const_net_0;
wire   [31:0] HRDATA_S2_const_net_0;
wire   [1:0]  HRESP_S2_const_net_0;
wire   [31:0] HRDATA_S3_const_net_0;
wire   [1:0]  HRESP_S3_const_net_0;
wire   [31:0] HRDATA_S4_const_net_0;
wire   [1:0]  HRESP_S4_const_net_0;
wire   [31:0] HRDATA_S5_const_net_0;
wire   [1:0]  HRESP_S5_const_net_0;
wire   [31:0] HRDATA_S6_const_net_0;
wire   [1:0]  HRESP_S6_const_net_0;
wire   [31:0] HRDATA_S7_const_net_0;
wire   [1:0]  HRESP_S7_const_net_0;
wire   [31:0] HRDATA_S8_const_net_0;
wire   [1:0]  HRESP_S8_const_net_0;
wire   [31:0] HRDATA_S9_const_net_0;
wire   [1:0]  HRESP_S9_const_net_0;
wire   [31:0] HRDATA_S10_const_net_0;
wire   [1:0]  HRESP_S10_const_net_0;
wire   [31:0] HRDATA_S11_const_net_0;
wire   [1:0]  HRESP_S11_const_net_0;
wire   [31:0] HRDATA_S12_const_net_0;
wire   [1:0]  HRESP_S12_const_net_0;
wire   [31:0] HRDATA_S13_const_net_0;
wire   [1:0]  HRESP_S13_const_net_0;
wire   [31:0] HRDATA_S14_const_net_0;
wire   [1:0]  HRESP_S14_const_net_0;
wire   [31:0] HRDATA_S15_const_net_0;
wire   [1:0]  HRESP_S15_const_net_0;
wire   [31:0] FIC_2_APB_M_PRDATA_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire          CoreAHBLite_0_AHBmslave16_HRESP;
wire   [1:1]  CoreAHBLite_0_AHBmslave16_HRESP_0_1to1;
wire   [0:0]  CoreAHBLite_0_AHBmslave16_HRESP_0_0to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave16_HRESP_0;
wire   [1:0]  CoreAHBLite_0_AHBmslave16_HSIZE_0_1to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave16_HSIZE_0;
wire   [2:0]  CoreAHBLite_0_AHBmslave16_HSIZE;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                        = 1'b0;
assign VCC_net                        = 1'b1;
assign PADDR_const_net_0              = 6'h00;
assign PWDATA_const_net_0             = 8'h00;
assign SDIF0_PRDATA_const_net_0       = 32'h00000000;
assign SDIF1_PRDATA_const_net_0       = 32'h00000000;
assign SDIF2_PRDATA_const_net_0       = 32'h00000000;
assign SDIF3_PRDATA_const_net_0       = 32'h00000000;
assign HADDR_M1_const_net_0           = 32'h00000000;
assign HTRANS_M1_const_net_0          = 2'h0;
assign HSIZE_M1_const_net_0           = 3'h0;
assign HBURST_M1_const_net_0          = 3'h0;
assign HPROT_M1_const_net_0           = 4'h0;
assign HWDATA_M1_const_net_0          = 32'h00000000;
assign HADDR_M2_const_net_0           = 32'h00000000;
assign HTRANS_M2_const_net_0          = 2'h0;
assign HSIZE_M2_const_net_0           = 3'h0;
assign HBURST_M2_const_net_0          = 3'h0;
assign HPROT_M2_const_net_0           = 4'h0;
assign HWDATA_M2_const_net_0          = 32'h00000000;
assign HADDR_M3_const_net_0           = 32'h00000000;
assign HTRANS_M3_const_net_0          = 2'h0;
assign HSIZE_M3_const_net_0           = 3'h0;
assign HBURST_M3_const_net_0          = 3'h0;
assign HPROT_M3_const_net_0           = 4'h0;
assign HWDATA_M3_const_net_0          = 32'h00000000;
assign HRDATA_S0_const_net_0          = 32'h00000000;
assign HRESP_S0_const_net_0           = 2'h0;
assign HRDATA_S1_const_net_0          = 32'h00000000;
assign HRESP_S1_const_net_0           = 2'h0;
assign HRDATA_S2_const_net_0          = 32'h00000000;
assign HRESP_S2_const_net_0           = 2'h0;
assign HRDATA_S3_const_net_0          = 32'h00000000;
assign HRESP_S3_const_net_0           = 2'h0;
assign HRDATA_S4_const_net_0          = 32'h00000000;
assign HRESP_S4_const_net_0           = 2'h0;
assign HRDATA_S5_const_net_0          = 32'h00000000;
assign HRESP_S5_const_net_0           = 2'h0;
assign HRDATA_S6_const_net_0          = 32'h00000000;
assign HRESP_S6_const_net_0           = 2'h0;
assign HRDATA_S7_const_net_0          = 32'h00000000;
assign HRESP_S7_const_net_0           = 2'h0;
assign HRDATA_S8_const_net_0          = 32'h00000000;
assign HRESP_S8_const_net_0           = 2'h0;
assign HRDATA_S9_const_net_0          = 32'h00000000;
assign HRESP_S9_const_net_0           = 2'h0;
assign HRDATA_S10_const_net_0         = 32'h00000000;
assign HRESP_S10_const_net_0          = 2'h0;
assign HRDATA_S11_const_net_0         = 32'h00000000;
assign HRESP_S11_const_net_0          = 2'h0;
assign HRDATA_S12_const_net_0         = 32'h00000000;
assign HRESP_S12_const_net_0          = 2'h0;
assign HRDATA_S13_const_net_0         = 32'h00000000;
assign HRESP_S13_const_net_0          = 2'h0;
assign HRDATA_S14_const_net_0         = 32'h00000000;
assign HRESP_S14_const_net_0          = 2'h0;
assign HRDATA_S15_const_net_0         = 32'h00000000;
assign HRESP_S15_const_net_0          = 2'h0;
assign FIC_2_APB_M_PRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign POWER_ON_RESET_N_net_1                 = POWER_ON_RESET_N_net_0;
assign POWER_ON_RESET_N                       = POWER_ON_RESET_N_net_1;
assign INIT_DONE_net_1                        = INIT_DONE_net_0;
assign INIT_DONE                              = INIT_DONE_net_1;
assign FIC_0_CLK_net_1                        = FIC_0_CLK_net_0;
assign FIC_0_CLK                              = FIC_0_CLK_net_1;
assign FIC_0_LOCK_net_1                       = FIC_0_LOCK_net_0;
assign FIC_0_LOCK                             = FIC_0_LOCK_net_1;
assign HPMS_READY_net_1                       = HPMS_READY_net_0;
assign HPMS_READY                             = HPMS_READY_net_1;
assign HPMS_FIC_0_USER_MASTER_HRDATA_net_0    = HPMS_FIC_0_USER_MASTER_HRDATA;
assign HPMS_FIC_0_USER_MASTER_HRDATA_M0[31:0] = HPMS_FIC_0_USER_MASTER_HRDATA_net_0;
assign HPMS_FIC_0_USER_MASTER_HREADY_net_0    = HPMS_FIC_0_USER_MASTER_HREADY;
assign HPMS_FIC_0_USER_MASTER_HREADY_M0       = HPMS_FIC_0_USER_MASTER_HREADY_net_0;
assign HPMS_FIC_0_USER_MASTER_HRESP_net_0     = HPMS_FIC_0_USER_MASTER_HRESP;
assign HPMS_FIC_0_USER_MASTER_HRESP_M0[1:0]   = HPMS_FIC_0_USER_MASTER_HRESP_net_0;
assign COMM_BLK_INT_net_1                     = COMM_BLK_INT_net_0;
assign COMM_BLK_INT                           = COMM_BLK_INT_net_1;
assign HPMS_INT_M2F_net_1                     = HPMS_INT_M2F_net_0;
assign HPMS_INT_M2F[15:0]                     = HPMS_INT_M2F_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAHBLite_0_AHBmslave16_HRESP_0_1to1 = 1'b0;
assign CoreAHBLite_0_AHBmslave16_HRESP_0_0to0 = CoreAHBLite_0_AHBmslave16_HRESP;
assign CoreAHBLite_0_AHBmslave16_HRESP_0 = { CoreAHBLite_0_AHBmslave16_HRESP_0_1to1, CoreAHBLite_0_AHBmslave16_HRESP_0_0to0 };

assign CoreAHBLite_0_AHBmslave16_HSIZE_0_1to0 = CoreAHBLite_0_AHBmslave16_HSIZE[1:0];
assign CoreAHBLite_0_AHBmslave16_HSIZE_0 = { CoreAHBLite_0_AHBmslave16_HSIZE_0_1to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------eSRAM_eNVM_access_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
eSRAM_eNVM_access_CCC_0_FCCC CCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL0            ( FIC_0_CLK_net_0 ),
        .LOCK           ( FIC_0_LOCK_net_0 ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 24 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 1 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 1 ),
        .SC_1               ( 0 ),
        .SC_2               ( 1 ),
        .SC_3               ( 0 ),
        .SC_4               ( 1 ),
        .SC_5               ( 0 ),
        .SC_6               ( 1 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_0(
        // Inputs
        .HCLK          ( FIC_0_CLK_net_0 ),
        .HRESETN       ( HPMS_READY_net_0 ),
        .REMAP_M0      ( GND_net ),
        .HADDR_M0      ( HPMS_FIC_0_USER_MASTER_HADDR_M0 ),
        .HMASTLOCK_M0  ( HPMS_FIC_0_USER_MASTER_HMASTLOCK_M0 ),
        .HSIZE_M0      ( HPMS_FIC_0_USER_MASTER_HSIZE_M0 ),
        .HTRANS_M0     ( HPMS_FIC_0_USER_MASTER_HTRANS_M0 ),
        .HWRITE_M0     ( HPMS_FIC_0_USER_MASTER_HWRITE_M0 ),
        .HWDATA_M0     ( HPMS_FIC_0_USER_MASTER_HWDATA_M0 ),
        .HBURST_M0     ( HPMS_FIC_0_USER_MASTER_HBURST_M0 ),
        .HPROT_M0      ( HPMS_FIC_0_USER_MASTER_HPROT_M0 ),
        .HADDR_M1      ( HADDR_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_0 ), // tied to 2'h0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_0 ), // tied to 2'h0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_0 ), // tied to 2'h0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_0 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S0      ( HRESP_S0_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S1      ( HRESP_S1_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S2      ( HRESP_S2_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S3      ( HRESP_S3_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S4      ( HRESP_S4_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S5      ( HRESP_S5_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S6      ( HRESP_S6_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S7      ( HRESP_S7_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( HRDATA_S8_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S8      ( HRESP_S8_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S9      ( HRESP_S9_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S10     ( HRESP_S10_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S11     ( HRESP_S11_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S12     ( HRESP_S12_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S13     ( HRESP_S13_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S14     ( HRESP_S14_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_0 ), // tied to 32'h00000000 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HRESP_S15     ( HRESP_S15_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( CoreAHBLite_0_AHBmslave16_HRDATA ),
        .HREADYOUT_S16 ( CoreAHBLite_0_AHBmslave16_HREADYOUT ),
        .HRESP_S16     ( CoreAHBLite_0_AHBmslave16_HRESP_0 ),
        // Outputs
        .HRESP_M0      ( HPMS_FIC_0_USER_MASTER_HRESP ),
        .HRDATA_M0     ( HPMS_FIC_0_USER_MASTER_HRDATA ),
        .HREADY_M0     ( HPMS_FIC_0_USER_MASTER_HREADY ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HREADY_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HREADY_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWRITE_S0     (  ),
        .HWDATA_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HSEL_S1       (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWRITE_S1     (  ),
        .HWDATA_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HSEL_S2       (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWRITE_S2     (  ),
        .HWDATA_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HSEL_S3       (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWRITE_S3     (  ),
        .HWDATA_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HSEL_S4       (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWRITE_S4     (  ),
        .HWDATA_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HSEL_S5       (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWRITE_S5     (  ),
        .HWDATA_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HSEL_S6       (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWRITE_S6     (  ),
        .HWDATA_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HSEL_S7       (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWRITE_S7     (  ),
        .HWDATA_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HSEL_S8       (  ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWRITE_S8     (  ),
        .HWDATA_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HSEL_S9       (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWRITE_S9     (  ),
        .HWDATA_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HSEL_S10      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWRITE_S10    (  ),
        .HWDATA_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HSEL_S11      (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWRITE_S11    (  ),
        .HWDATA_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HSEL_S12      (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWRITE_S12    (  ),
        .HWDATA_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HSEL_S13      (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWRITE_S13    (  ),
        .HWDATA_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HSEL_S14      (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWRITE_S14    (  ),
        .HWDATA_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HSEL_S15      (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWRITE_S15    (  ),
        .HWDATA_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HSEL_S16      ( CoreAHBLite_0_AHBmslave16_HSELx ),
        .HADDR_S16     ( CoreAHBLite_0_AHBmslave16_HADDR ),
        .HSIZE_S16     ( CoreAHBLite_0_AHBmslave16_HSIZE ),
        .HTRANS_S16    ( CoreAHBLite_0_AHBmslave16_HTRANS ),
        .HWRITE_S16    ( CoreAHBLite_0_AHBmslave16_HWRITE ),
        .HWDATA_S16    ( CoreAHBLite_0_AHBmslave16_HWDATA ),
        .HREADY_S16    ( CoreAHBLite_0_AHBmslave16_HREADY ),
        .HMASTLOCK_S16 ( CoreAHBLite_0_AHBmslave16_HMASTLOCK ),
        .HBURST_S16    ( CoreAHBLite_0_AHBmslave16_HBURST ),
        .HPROT_S16     ( CoreAHBLite_0_AHBmslave16_HPROT ) 
        );

//--------CoreResetP   -   Actel:DirectCore:CoreResetP:7.1.100
CoreResetP #( 
        .DDR_WAIT            ( 200 ),
        .DEVICE_090          ( 0 ),
        .DEVICE_VOLTAGE      ( 2 ),
        .ENABLE_SOFT_RESETS  ( 0 ),
        .EXT_RESET_CFG       ( 0 ),
        .FDDR_IN_USE         ( 0 ),
        .MDDR_IN_USE         ( 0 ),
        .SDIF0_IN_USE        ( 0 ),
        .SDIF0_PCIE          ( 0 ),
        .SDIF0_PCIE_HOTRESET ( 1 ),
        .SDIF0_PCIE_L2P2     ( 1 ),
        .SDIF1_IN_USE        ( 0 ),
        .SDIF1_PCIE          ( 0 ),
        .SDIF1_PCIE_HOTRESET ( 1 ),
        .SDIF1_PCIE_L2P2     ( 1 ),
        .SDIF2_IN_USE        ( 0 ),
        .SDIF2_PCIE          ( 0 ),
        .SDIF2_PCIE_HOTRESET ( 1 ),
        .SDIF2_PCIE_L2P2     ( 1 ),
        .SDIF3_IN_USE        ( 0 ),
        .SDIF3_PCIE          ( 0 ),
        .SDIF3_PCIE_HOTRESET ( 1 ),
        .SDIF3_PCIE_L2P2     ( 1 ) )
CORERESETP_0(
        // Inputs
        .RESET_N_M2F                    ( eSRAM_eNVM_access_HPMS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_2_APB_M_PRESET_N           ( eSRAM_eNVM_access_HPMS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .POWER_ON_RESET_N               ( POWER_ON_RESET_N_net_0 ),
        .FAB_RESET_N                    ( FAB_RESET_N ),
        .RCOSC_25_50MHZ                 ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .CLK_BASE                       ( FIC_0_CLK_net_0 ),
        .CLK_LTSSM                      ( GND_net ), // tied to 1'b0 from definition
        .FPLL_LOCK                      ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .CONFIG1_DONE                   ( VCC_net ),
        .CONFIG2_DONE                   ( VCC_net ),
        .SDIF0_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF0_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PRDATA                   ( SDIF0_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF1_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF1_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PRDATA                   ( SDIF1_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF2_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF2_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PRDATA                   ( SDIF2_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF3_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF3_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PRDATA                   ( SDIF3_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SOFT_EXT_RESET_OUT             ( GND_net ), // tied to 1'b0 from definition
        .SOFT_RESET_F2M                 ( GND_net ), // tied to 1'b0 from definition
        .SOFT_M3_RESET                  ( GND_net ), // tied to 1'b0 from definition
        .SOFT_MDDR_DDR_AXI_S_CORE_RESET ( GND_net ), // tied to 1'b0 from definition
        .SOFT_FDDR_CORE_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_0_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_1_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSS_HPMS_READY                 ( HPMS_READY_net_0 ),
        .DDR_READY                      (  ),
        .SDIF_READY                     (  ),
        .RESET_N_F2M                    ( CORERESETP_0_RESET_N_F2M ),
        .M3_RESET_N                     (  ),
        .EXT_RESET_OUT                  (  ),
        .MDDR_DDR_AXI_S_CORE_RESET_N    (  ),
        .FDDR_CORE_RESET_N              (  ),
        .SDIF0_CORE_RESET_N             (  ),
        .SDIF0_0_CORE_RESET_N           (  ),
        .SDIF0_1_CORE_RESET_N           (  ),
        .SDIF0_PHY_RESET_N              (  ),
        .SDIF1_CORE_RESET_N             (  ),
        .SDIF1_PHY_RESET_N              (  ),
        .SDIF2_CORE_RESET_N             (  ),
        .SDIF2_PHY_RESET_N              (  ),
        .SDIF3_CORE_RESET_N             (  ),
        .SDIF3_PHY_RESET_N              (  ),
        .SDIF_RELEASED                  (  ),
        .INIT_DONE                      ( INIT_DONE_net_0 ) 
        );

//--------eSRAM_eNVM_access_HPMS
eSRAM_eNVM_access_HPMS eSRAM_eNVM_access_HPMS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FIC_0_CLK_net_0 ),
        .MCCC_CLK_BASE_PLL_LOCK ( FIC_0_LOCK_net_0 ),
        .MSS_RESET_N_F2M        ( CORERESETP_0_RESET_N_F2M ),
        .M3_RESET_N             ( GND_net ),
        .FIC_0_AHB_S_HREADY     ( CoreAHBLite_0_AHBmslave16_HREADY ),
        .FIC_0_AHB_S_HWRITE     ( CoreAHBLite_0_AHBmslave16_HWRITE ),
        .FIC_0_AHB_S_HMASTLOCK  ( CoreAHBLite_0_AHBmslave16_HMASTLOCK ),
        .FIC_0_AHB_S_HSEL       ( CoreAHBLite_0_AHBmslave16_HSELx ),
        .FIC_2_APB_M_PREADY     ( VCC_net ), // tied to 1'b1 from definition
        .FIC_2_APB_M_PSLVERR    ( GND_net ), // tied to 1'b0 from definition
        .FIC_0_AHB_S_HADDR      ( CoreAHBLite_0_AHBmslave16_HADDR ),
        .FIC_0_AHB_S_HWDATA     ( CoreAHBLite_0_AHBmslave16_HWDATA ),
        .FIC_0_AHB_S_HSIZE      ( CoreAHBLite_0_AHBmslave16_HSIZE_0 ),
        .FIC_0_AHB_S_HTRANS     ( CoreAHBLite_0_AHBmslave16_HTRANS ),
        .FIC_2_APB_M_PRDATA     ( FIC_2_APB_M_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .MSS_RESET_N_M2F        ( eSRAM_eNVM_access_HPMS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_0_AHB_S_HRESP      ( CoreAHBLite_0_AHBmslave16_HRESP ),
        .FIC_0_AHB_S_HREADYOUT  ( CoreAHBLite_0_AHBmslave16_HREADYOUT ),
        .FIC_2_APB_M_PRESET_N   ( eSRAM_eNVM_access_HPMS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .FIC_2_APB_M_PCLK       (  ),
        .FIC_2_APB_M_PWRITE     (  ),
        .FIC_2_APB_M_PENABLE    (  ),
        .FIC_2_APB_M_PSEL       (  ),
        .M3_NMI                 (  ),
        .COMM_BLK_INT           ( COMM_BLK_INT_net_0 ),
        .FIC_0_AHB_S_HRDATA     ( CoreAHBLite_0_AHBmslave16_HRDATA ),
        .FIC_2_APB_M_PADDR      (  ),
        .FIC_2_APB_M_PWDATA     (  ),
        .MSS_INT_M2F            ( HPMS_INT_M2F_net_0 ) 
        );

//--------eSRAM_eNVM_access_FABOSC_0_OSC   -   Actel:SgCore:OSC:2.0.101
eSRAM_eNVM_access_FABOSC_0_OSC FABOSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_POR(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( POWER_ON_RESET_N_net_0 ) 
        );


endmodule
