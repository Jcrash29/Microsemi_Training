//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Oct 14 23:21:51 2016
// Version: v11.7 SP1 11.7.1.11
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// eSRAM_eNVM_access_top
module eSRAM_eNVM_access_top(
    // Inputs
    DEVRST_N,
    FAB_RESET_N,
    MISO,
    PWRITE,
    start_esram,
    // Outputs
    CLKOUT,
    CS,
    MOSI,
    PRDATA,
    RD,
    ss_n
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         DEVRST_N;
input         FAB_RESET_N;
input         MISO;
input         PWRITE;
input         start_esram;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        CLKOUT;
output        CS;
output        MOSI;
output [31:0] PRDATA;
output [7:0]  RD;
output        ss_n;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AHB_IF_0_AHB_BUSY;
wire   [31:0] AHB_IF_0_BIF_1_HADDR;
wire   [2:0]  AHB_IF_0_BIF_1_HBURST;
wire   [3:0]  AHB_IF_0_BIF_1_HPROT;
wire   [31:0] AHB_IF_0_BIF_1_HRDATA;
wire          AHB_IF_0_BIF_1_HREADY;
wire   [1:0]  AHB_IF_0_BIF_1_HRESP;
wire   [2:0]  AHB_IF_0_BIF_1_HSIZE;
wire   [1:0]  AHB_IF_0_BIF_1_HTRANS;
wire   [31:0] AHB_IF_0_BIF_1_HWDATA;
wire          AHB_IF_0_BIF_1_HWRITE;
wire   [31:0] AHB_IF_0_DATAOUT;
wire          AHB_IF_0_VALID;
wire          CLKOUT_net_0;
wire          CS_net_0;
wire          DEVRST_N;
wire          eSRAM_eNVM_access_0_FIC_0_CLK;
wire          eSRAM_eNVM_access_0_HPMS_READY;
wire   [31:0] eSRAM_eNVM_RW_0_ADDR;
wire   [31:0] eSRAM_eNVM_RW_0_DATAOUT;
wire   [4:0]  eSRAM_eNVM_RW_0_ram_waddr;
wire   [31:0] eSRAM_eNVM_RW_0_ram_wdata;
wire          eSRAM_eNVM_RW_0_ram_wen;
wire          eSRAM_eNVM_RW_0_READ;
wire          eSRAM_eNVM_RW_0_WRITE;
wire          FAB_RESET_N;
wire          MISO;
wire          MOSI_net_0;
wire   [31:0] PRDATA_net_0;
wire          PWRITE;
wire   [7:0]  RD_net_0;
wire          ss_n_net_0;
wire          start_esram;
wire   [31:0] TPSRAM_0_RD;
wire          ss_n_net_1;
wire          MOSI_net_1;
wire          CLKOUT_net_1;
wire          CS_net_1;
wire   [7:0]  RD_net_1;
wire   [31:0] PRDATA_net_1;
wire   [31:8] RD_slice_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [2:0]  HSIZE_IN_const_net_0;
wire          VCC_net;
wire          GND_net;
wire   [4:0]  RADDR_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign HSIZE_IN_const_net_0 = 3'h2;
assign VCC_net              = 1'b1;
assign GND_net              = 1'b0;
assign RADDR_const_net_0    = 5'h00;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign ss_n_net_1   = ss_n_net_0;
assign ss_n         = ss_n_net_1;
assign MOSI_net_1   = MOSI_net_0;
assign MOSI         = MOSI_net_1;
assign CLKOUT_net_1 = CLKOUT_net_0;
assign CLKOUT       = CLKOUT_net_1;
assign CS_net_1     = CS_net_0;
assign CS           = CS_net_1;
assign RD_net_1     = RD_net_0;
assign RD[7:0]      = RD_net_1;
assign PRDATA_net_1 = PRDATA_net_0;
assign PRDATA[31:0] = PRDATA_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign RD_net_0   = TPSRAM_0_RD[7:0];
assign RD_slice_0 = TPSRAM_0_RD[31:8];
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AHB_IF
AHB_IF #( 
        .Data_size   ( 32 ),
        .Idle_1      ( 0 ),
        .Read_FIC_0  ( 4 ),
        .Read_FIC_1  ( 5 ),
        .Read_FIC_2  ( 6 ),
        .Write_FIC_0 ( 1 ),
        .Write_FIC_1 ( 2 ),
        .Write_FIC_2 ( 3 ) )
AHB_IF_0(
        // Inputs
        .HCLK     ( eSRAM_eNVM_access_0_FIC_0_CLK ),
        .HRESETn  ( eSRAM_eNVM_access_0_HPMS_READY ),
        .READ     ( eSRAM_eNVM_RW_0_READ ),
        .WRITE    ( eSRAM_eNVM_RW_0_WRITE ),
        .HREADY   ( AHB_IF_0_BIF_1_HREADY ),
        .ADDR     ( eSRAM_eNVM_RW_0_ADDR ),
        .DATAIN   ( eSRAM_eNVM_RW_0_DATAOUT ),
        .HSIZE_IN ( HSIZE_IN_const_net_0 ),
        .HRDATA   ( AHB_IF_0_BIF_1_HRDATA ),
        .HRESP    ( AHB_IF_0_BIF_1_HRESP ),
        // Outputs
        .HWRITE   ( AHB_IF_0_BIF_1_HWRITE ),
        .AHB_BUSY ( AHB_IF_0_AHB_BUSY ),
        .VALID    ( AHB_IF_0_VALID ),
        .DATAOUT  ( AHB_IF_0_DATAOUT ),
        .HADDR    ( AHB_IF_0_BIF_1_HADDR ),
        .HTRANS   ( AHB_IF_0_BIF_1_HTRANS ),
        .HSIZE    ( AHB_IF_0_BIF_1_HSIZE ),
        .HBURST   ( AHB_IF_0_BIF_1_HBURST ),
        .HPROT    ( AHB_IF_0_BIF_1_HPROT ),
        .HWDATA   ( AHB_IF_0_BIF_1_HWDATA ),
        .RESP_err (  ) 
        );

//--------eSRAM_eNVM_access
eSRAM_eNVM_access eSRAM_eNVM_access_0(
        // Inputs
        .FAB_RESET_N                         ( FAB_RESET_N ),
        .HPMS_FIC_0_USER_MASTER_HWRITE_M0    ( AHB_IF_0_BIF_1_HWRITE ),
        .HPMS_FIC_0_USER_MASTER_HMASTLOCK_M0 ( GND_net ), // tied to 1'b0 from definition
        .DEVRST_N                            ( DEVRST_N ),
        .HPMS_FIC_0_USER_MASTER_HADDR_M0     ( AHB_IF_0_BIF_1_HADDR ),
        .HPMS_FIC_0_USER_MASTER_HTRANS_M0    ( AHB_IF_0_BIF_1_HTRANS ),
        .HPMS_FIC_0_USER_MASTER_HSIZE_M0     ( AHB_IF_0_BIF_1_HSIZE ),
        .HPMS_FIC_0_USER_MASTER_HBURST_M0    ( AHB_IF_0_BIF_1_HBURST ),
        .HPMS_FIC_0_USER_MASTER_HPROT_M0     ( AHB_IF_0_BIF_1_HPROT ),
        .HPMS_FIC_0_USER_MASTER_HWDATA_M0    ( AHB_IF_0_BIF_1_HWDATA ),
        // Outputs
        .POWER_ON_RESET_N                    (  ),
        .INIT_DONE                           (  ),
        .HPMS_FIC_0_USER_MASTER_HREADY_M0    ( AHB_IF_0_BIF_1_HREADY ),
        .FIC_0_CLK                           ( eSRAM_eNVM_access_0_FIC_0_CLK ),
        .FIC_0_LOCK                          (  ),
        .HPMS_READY                          ( eSRAM_eNVM_access_0_HPMS_READY ),
        .COMM_BLK_INT                        (  ),
        .HPMS_FIC_0_USER_MASTER_HRDATA_M0    ( AHB_IF_0_BIF_1_HRDATA ),
        .HPMS_FIC_0_USER_MASTER_HRESP_M0     ( AHB_IF_0_BIF_1_HRESP ),
        .HPMS_INT_M2F                        (  ) 
        );

//--------eSRAM_eNVM_RW
eSRAM_eNVM_RW eSRAM_eNVM_RW_0(
        // Inputs
        .CLK         ( eSRAM_eNVM_access_0_FIC_0_CLK ),
        .RESETn      ( eSRAM_eNVM_access_0_HPMS_READY ),
        .start_envm  ( VCC_net ),
        .start_esram ( start_esram ),
        .valid       ( AHB_IF_0_VALID ),
        .busy        ( AHB_IF_0_AHB_BUSY ),
        .DATAIN      ( AHB_IF_0_DATAOUT ),
        // Outputs
        .READ        ( eSRAM_eNVM_RW_0_READ ),
        .WRITE       ( eSRAM_eNVM_RW_0_WRITE ),
        .ram_wen     ( eSRAM_eNVM_RW_0_ram_wen ),
        .ADDR        ( eSRAM_eNVM_RW_0_ADDR ),
        .DATAOUT     ( eSRAM_eNVM_RW_0_DATAOUT ),
        .ram_waddr   ( eSRAM_eNVM_RW_0_ram_waddr ),
        .ram_wdata   ( eSRAM_eNVM_RW_0_ram_wdata ) 
        );

//--------SPI_Master
SPI_Master SPI_Master_0(
        // Inputs
        .clk    ( eSRAM_eNVM_access_0_FIC_0_CLK ),
        .reset  ( eSRAM_eNVM_access_0_HPMS_READY ),
        .enable ( VCC_net ),
        .cpol   ( VCC_net ),
        .cpha   ( VCC_net ),
        .PWRITE ( PWRITE ),
        .MISO   ( MISO ),
        .PADDR  ( eSRAM_eNVM_RW_0_ram_waddr ),
        .PWDATA ( eSRAM_eNVM_RW_0_ram_wdata ),
        // Outputs
        .CS     ( CS_net_0 ),
        .ss_n   ( ss_n_net_0 ),
        .CLKOUT ( CLKOUT_net_0 ),
        .MOSI   ( MOSI_net_0 ),
        .PRDATA ( PRDATA_net_0 ) 
        );

//--------eSRAM_eNVM_access_top_TPSRAM_0_TPSRAM   -   Actel:SgCore:TPSRAM:1.0.101
eSRAM_eNVM_access_top_TPSRAM_0_TPSRAM TPSRAM_0(
        // Inputs
        .WEN   ( eSRAM_eNVM_RW_0_ram_wen ),
        .REN   ( GND_net ),
        .CLK   ( eSRAM_eNVM_access_0_FIC_0_CLK ),
        .WD    ( eSRAM_eNVM_RW_0_ram_wdata ),
        .WADDR ( eSRAM_eNVM_RW_0_ram_waddr ),
        .RADDR ( RADDR_const_net_0 ),
        // Outputs
        .RD    ( TPSRAM_0_RD ) 
        );


endmodule
