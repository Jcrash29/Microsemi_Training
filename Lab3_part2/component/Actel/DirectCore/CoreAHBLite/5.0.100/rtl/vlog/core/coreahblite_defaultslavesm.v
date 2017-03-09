// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2010 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:	CoreAHBLite default slave state machine logic for
//				matrix (2 masters by 16 slaves)
//
// Revision Information:
// Date			Description
// ----			-----------------------------------------
// 10Feb10		Production Release Version 3.1
//
// SVN Revision Information:
// SVN $Revision: 11955 $
// SVN $Date: 2010-01-30 15:35:13 -0800 (Sat, 30 Jan 2010) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
// 1. best viewed with tabstops set to "4" (tabs used throughout file)
//
// *********************************************************************/
`timescale 1ns/1ps
module COREAHBLITE_DEFAULTSLAVESM
(
input						HCLK,
input						HRESETN,
input						DEFSLAVEDATASEL,
output	reg					DEFSLAVEDATAREADY,
output	reg					HRESP_DEFAULT
);
localparam IDLE				= 1'b0;
localparam HRESPEXTEND		= 1'b1;
reg							defSlaveSMNextState;
reg							defSlaveSMCurrentState;
    always @ ( * )
    begin
        DEFSLAVEDATAREADY = 1'b1;
        HRESP_DEFAULT = 1'b0;
        case ( defSlaveSMCurrentState )
        IDLE:
        begin
            if ( DEFSLAVEDATASEL )
            begin
                DEFSLAVEDATAREADY = 1'b0;
                HRESP_DEFAULT = 1'b1;
                defSlaveSMNextState = HRESPEXTEND;
            end
            else
                defSlaveSMNextState = IDLE;
        end
        HRESPEXTEND:
        begin
            HRESP_DEFAULT = 1'b1;
            defSlaveSMNextState = IDLE;
        end
        default:
            defSlaveSMNextState = IDLE;
        endcase
    end
    always @ ( posedge HCLK or negedge HRESETN )
    begin
        if ( !HRESETN )
            defSlaveSMCurrentState <= IDLE;
        else
            defSlaveSMCurrentState <= defSlaveSMNextState;
    end
endmodule 
