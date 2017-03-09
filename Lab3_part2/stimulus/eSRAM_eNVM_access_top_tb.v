/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Future Electronics Inc.
//
// File: eSRAM_eNVM_access_top_tb.v
// File history:
//      Rev. 1: 10/11/2016
//
// Description: 
//
// Testbench
//
// Targeted device: <Family::IGLOO2> <Die::M2GL025> <Package::256 VF>
// Author: Giovanna Franco
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2016   Future Electronics
//                      All rights reserved.
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Disclaimer of Warranty
// ALL MATERIALS, INFORMATION AND SERVICES ARE PROVIDED "AS-IS" AND "AS-AVAILABLE" FOR YOUR USE. 
// FUTURE ELECTRONICS DISCLAIMS ALL WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING 
// BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
// PURPOSE, TITLE, OR NON-INFRINGEMENT.
// YOU ACKNOWLEDGE AND AGREE THAT THE REFERENCE DESIGNS AND OTHER SUCH DESIGN MATERIALS INCLUDED 
// HEREIN ARE PROVIDED AS AN EXAMPLE ONLY AND THAT YOU WILL EXERCISE YOUR OWN INDEPENDENT ANALYSIS 
// AND JUDGEMENT IN YOUR USE OF THESE MATERIALS. FUTURE ELECTRONICS ASSUMES NO LIABILITY FOR YOUR 
// USE OF THESE MATERIALS FOR YOUR PRODUCT DESIGNS.
// 
// Indemnification
// You agree to indemnify, defend and hold Future Electronics and all of its agents, directors, 
// employees, information providers, licensors and licensees, and affiliated companies 
// (collectively, "Indemnified Parties"), harmless from and against any and all liability 
// and costs (including, without limitation, attorneys" fees and costs), incurred by the 
// Indemnified Parties in connection with any claim arising out of any breach by You of these 
// Terms and Conditions of Use or any representations or warranties made by You herein. 
// You will cooperate as fully as reasonably required in Future Electronics" defense of any claim. 
// Future Electronics reserves the right, at its own expense, to assume the exclusive defense and 
// control of any matter otherwise subject to indemnification by You and You shall not in any event 
// settle any matter without the written consent of Future Electronics.
// 
// Limitation of Liability
// UNDER NO CIRCUMSTANCES SHALL FUTURE ELECTRONICS, NOR ITS AGENTS, DIRECTORS, EMPLOYEES, 
// INFORMATION PROVIDERS, LICENSORS AND LICENSEE, AND AFFILIATED COMPANIES BE LIABLE FOR ANY DAMAGES, 
// INCLUDING WITHOUT LIMITATION, DIRECT, INDIRECT, INCIDENTAL, SPECIAL, PUNITIVE, CONSEQUENTIAL, OR 
// OTHER DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS, LOST REVENUES, OR SIMILAR ECONOMIC LOSS), 
// WHETHER IN CONTRACT, TORT, OR OTHERWISE, ARISING OUT OF THE USE OR INABILITY TO USE THE MATERIALS 
// PROVIDED AS A REFERENCE DESIGN, EVEN IF WE ARE ADVISED OF THE POSSIBILITY THEREOF, NOR FOR ANY CLAIM 
// BY A THIRD PARTY.
/////////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module eSRAM_eNVM_access_top_tb;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;
reg tstart_esram = 'b0;
reg tMISO = 'b0;
reg tPWRITE = 'b0;
reg tenable = 'b0;

wire [7:0]tRD = 'b0;
wire [31:0]tPRDATA = 'b0;
wire tss_n = 'b0;
wire tMOSI = 'b0;
wire tCLKOUT = 'b0;
wire tCS = 'b0;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
        tPWRITE <= 'b1;
        tenable <= 'b1;
    #(SYSCLK_PERIOD * 10000000)
        tPWRITE <= 'b0;
        tMISO <= 'b1;
        
    //#(SYSCLK_PERIOD * 100 )  
     //tstart_esram = 1'b1;

    //#(SYSCLK_PERIOD * 2 )  
    // tstart_esram = 1'b0;
//
   // #(SYSCLK_PERIOD * 100 )  
    // tstart_envm = 1'b1;
//
    //#(SYSCLK_PERIOD * 2 )  
    // tstart_envm = 1'b0;
    
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;




//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  eSRAM_eNVM_access_top
//////////////////////////////////////////////////////////////////////
eSRAM_eNVM_access_top eSRAM_eNVM_access_top_0 (
    // Inputs
    .DEVRST_N(NSYSRESET),
    .start_esram(tstart_esram),
    .MISO(tMISO),
    .FAB_RESET_N(NSYSRESET),
    .PWRITE(tPWRITE),

    // Outputs
    .RD(tRD),
    .PRDATA(tPRDATA),
    .ss_n(tss_n),
    .MOSI(tMOSI),
    .CLKOUT(tCLKOUT),
    .CS(tCS)

    // Inouts

);

endmodule

