///////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------------------------------------
//-- Title      : AHB Master Interface
//-------------------------------------------------------------------------------
//-- File       : eSRAM_eNVM_RW.v
//-- Author     : Corporate Applications Engineering
//-- Company    : Microsemi Corporation
//-- Device     : IGLOO2
//-- Standard   : Verilog
//-------------------------------------------------------------------------------
//-- Description: This code implementes the eNVM,eSRAM write and read command sequences to AHB master logic. 
//-------------------------------------------------------------------------------
//-- Copyright (c) 2013   Microsemi Corporation
//--                      All rights reserved.
//-------------------------------------------------------------------------------
//-- Revisions  : V1.0
//-------------------------------------------------------------------------------
/////////////////////////////////////////////////////////////////////////////////////////////////// 


//`define ENVM0_BASE 		  32'h60080000
//`define ENVM0_WD 		      ENVM0_BASE+8'h80
//`define ENVM0_STATUS 	      ENVM0_BASE+12'h120
//`define ENVM0_CMD 		  ENVM0_BASE+12h'148
//`define PROG_ADS 		      32'h08000000
//`define VERIFY_ADS 		  32'h10000000
//`define ENVM_CR             32'h4003800C

module eSRAM_eNVM_RW(
// Generic Signals
input      wire         CLK,
input      wire         RESETn,

//Interface to user 
input      wire         start_envm,
input      wire         start_esram,

//Interface to AHB Master logic
input      wire         valid,
input      wire  [31:0] DATAIN,
input      wire         busy,
output     reg          READ,
output     reg          WRITE,
output     wire  [31:0] ADDR,
output     wire  [31:0] DATAOUT,

//Interface to Fabric SRAM
output     reg          ram_wen,
output     reg   [4:0]  ram_waddr,
output     reg  [31:0]  ram_wdata

);

reg [31:0] data,addr_temp;
reg [4:0] data_cnt;
reg start_envm_reg,start_esram_reg,start_envm_reg1,start_esram_reg1,start_envm_reg2,start_esram_reg2,envm_release_reg;
wire envm_select,esram_select;

// eNVM and eSRAM FSM States

reg [4:0] current_state;
parameter [4:0] Idle_ESRAM_ENVM = 5'b00000,
                ENVM_Idle_0     = 5'b00001,
                ENVM_Idle_1     = 5'b00010,
                ENVM0_ACCESS1   = 5'b00011,
                ENVM0_ACCESS2   = 5'b00100,
                ENVM0_WD        = 5'b00101,
                Fill_WD         = 5'b00110,
                CMD_Write       = 5'b00111,
                ENVM0_Prog      = 5'b01000,
                ENVM_INIT_DONE  = 5'b01001,
                ESRAM_0         = 5'b01010,
                ESRAM_1         = 5'b01011,
                ESRAM_2         = 5'b01100,
                Read_0          = 5'b01101,
                Read_1          = 5'b01110,
                Read_2          = 5'b01111,
                ENVM0_RELEASE   = 5'b10000;

assign ADDR = addr_temp;
assign DATAOUT = data;

assign envm_select = start_envm_reg2 & ~start_envm_reg1;
assign esram_select = start_esram_reg2 & ~start_esram_reg1;

always@(posedge CLK, negedge RESETn)
begin
	if(RESETn  == 1'b0)
	    begin	     
	   		 start_envm_reg     <= 1'b0;
	   		 start_envm_reg1     <= 1'b0;
	   		 start_envm_reg2     <= 1'b0;
		     start_esram_reg    <= 1'b0;
		     start_esram_reg1    <= 1'b0;
		     start_esram_reg2    <= 1'b0;
		 end
	else
		begin
	   		 start_envm_reg     <= start_envm;
	   		 start_envm_reg1     <= start_envm_reg;
	   		 start_envm_reg2     <= start_envm_reg1;

		     start_esram_reg    <= start_esram;
		     start_esram_reg1    <= start_esram_reg;
		     start_esram_reg2    <= start_esram_reg1;
		end

end

always@(posedge CLK, negedge RESETn )
begin
    if(RESETn  == 1'b0)
        begin	     
	    WRITE               <=  1'b0;	     
	    READ                <=  1'b0;
		data			    <=  32'h00000000;
	    current_state       <=  Idle_ESRAM_ENVM;   
        ram_wen             <= 1'b0;
        ram_waddr           <= 5'b00000;
		envm_release_reg    <= 1'b0;
        data_cnt            <= 5'b00000;  
	    end
    else
        begin
        case (current_state)
            Idle_ESRAM_ENVM : 
                begin
	    		WRITE               <=  1'b0;	     
	     		READ                <=  1'b0;
		 		data			    <=  32'h00000000;    
		 		ram_wen             <= 1'b0;
         		ram_waddr           <= 5'b00000;
                data_cnt            <= 5'b00000;
                if ( esram_select == 1'b1)           // selecting eNVM or eSRAM
                    begin
					current_state   <=  ESRAM_0;  
                    end
                else if (envm_select == 1'b1)
                    begin
					current_state   <=  ENVM_Idle_0;
                    end
                else
                    begin
                    current_state   <=  Idle_ESRAM_ENVM;   
                    end
                end	

            ENVM_Idle_0:
                begin
                if( busy  == 1'b0 )
                    begin
					WRITE					  <=  1'b0;
					READ                      <=  1'b1;
					addr_temp				  <=  32'h60080120; //ENVM0_STATUS;					
					current_state             <=  ENVM_Idle_1;
					end
				else 
					begin
					WRITE					  <=  1'b0;
					READ                      <=  1'b1;
					addr_temp				  <=  32'h60080120; //ENVM0_STATUS;					
					current_state             <=  ENVM_Idle_0;
					end
                end

            ENVM_Idle_1: 
                begin
				if ( DATAIN[0] == 1'b1)
                    begin
                 	if( busy  == 1'b0 )
                        begin
						WRITE                       <=  1'b1;	
						READ                        <=  1'b0;					
						addr_temp       			<=  32'h600801FC; //ENVM0_REQACCESS;
						data						<=  32'h00000001;
	                    current_state               <=  ENVM0_ACCESS1;                       
	                  	end	 
					 else       
						begin
						WRITE                       <=  1'b1;	
						READ                        <=  1'b0;						
						addr_temp       			<=  32'h600801FC; //ENVM0_REQACCESS;
						data						<=  32'h00000001;
	                    current_state               <=  ENVM_Idle_1;
						end
         			end
	              else
	                  begin
	                    current_state               <=  ENVM_Idle_1;
	                  end
	            end

            ENVM0_ACCESS1: //requesting access
	            begin
				if ( busy  == 1'b0 )
                    begin
					READ                      <=  1'b1;
					WRITE                     <=  1'b0;
					current_state             <=  ENVM0_ACCESS2; 
    	            end
				else
                    begin
				    current_state             <=  ENVM0_ACCESS1;   
                    end
				end

			ENVM0_ACCESS2: //checking access
	            begin
                if ( DATAIN[2:0] == 3'b110 )
                    begin		
					WRITE                     <=  1'b1;	
					READ                      <=  1'b0;					
					addr_temp       		  <= 32'h4003800C; 	
					data					  <= 32'h000001FF1;	// setting the FREQRNG parameter to 15 decimal		
				  	current_state             <=  ENVM0_WD;
					end 
                else 
                    begin
					current_state              <=  ENVM0_ACCESS2; 
    	            end					
				end
            ENVM0_WD :
                begin
                if ( busy  == 1'b0 )
	                begin   
				   	WRITE                     <=  1'b1;	
					READ                      <=  1'b0;					
					addr_temp       		  <=  32'h60080080; //ENVM0_WD;	
					data					  <=  32'h00000000;			
				  	current_state             <=  Fill_WD;
    	            end
				else
					begin
				    current_state             <=  ENVM0_WD;                    
	                end
                end

	        Fill_WD:                    //fill wd buffer             
	            begin
    	        if ( busy  == 1'b0 )
                    begin
					READ                      <=  1'b0;
					addr_temp				  <=  addr_temp + 4;						
					data					  <=  data + 1;
                    data_cnt                  <=  data_cnt +1'b1;
					current_state             <=  Fill_WD; 
                    if ( data_cnt == 5'b11111 )	
                        begin
                        current_state            <=  CMD_Write;
                        WRITE                    <=  1'b0;
                        end
                     else
                        begin
                        current_state            <=  Fill_WD; 
                        WRITE                    <=  1'b1;
                        end
                    end
                else
                    begin
				    current_state   <=  Fill_WD;                    
	                end
				end

	        CMD_Write:                  //issue write command
	            begin
                data_cnt <= 5'b00000;
				if ( busy  == 1'b0 )
                    begin
				 	WRITE                     <=  1'b1;
					addr_temp				  <=  32'h60080148; //ENVM0_CMD;						
					data					  <=  32'h08000c80; //PROG_ADS;     
					current_state             <=  ENVM0_Prog; 
                    end
				else
                    begin
				    current_state              <=  CMD_Write;                    
	                end
				end

			ENVM0_Prog:                 //wait for completing the eNVM programming
	            begin
				   if ( DATAIN[0] == 1'b1 )
					  begin
				        current_state   <=  ENVM_INIT_DONE;
					  end
				   else if ( busy  == 1'b0 )
	                  begin
						WRITE					  <=  1'b0;
						READ                      <=  1'b1;
						addr_temp				  <=  32'h60080120; //ENVM0_STATUS;					
						current_state             <=  ENVM0_Prog; 
    	              end
					else
					  begin
				        current_state             <=  ENVM0_Prog;                    
	                  end
				end

			ENVM_INIT_DONE:             //eNVM write completed 
	            begin
                envm_release_reg        <= 1'b1;
				ram_waddr               <= 5'b11111;
                addr_temp				<=  32'h60000c80;
                if ( busy  == 1'b0 && valid == 1'b1)
                    begin
                    READ                <=  1'b1;						
                    current_state       <=  Read_0;
					end
                else
                    begin				
                    current_state       <=  ENVM_INIT_DONE;
                    end
				end

//////////////////////// eSRAM write states////////////////////////

			ESRAM_0:
	            begin    
                data <= 32'ha1b2c300;
                if( busy  == 1'b0 )
                    begin
					WRITE					  <=  1'b1;
					READ                      <=  1'b0;
					addr_temp				  <=  32'h20000000; 					
					current_state             <=  ESRAM_1;
					end
				else 
					begin
					WRITE					  <=  1'b1;
					READ                      <=  1'b0;
					addr_temp				  <=  32'h20000000; 					
					current_state             <=  ESRAM_0;
					end
				end

            ESRAM_1: 
                begin
                if ( busy  == 1'b0 )
                    begin
					WRITE                     <=  1'b1;
					READ                      <=  1'b0;
					addr_temp				  <=  addr_temp + 4;						
					data					  <=  data + 1;
                    data_cnt                  <=  data_cnt +1'b1;
                    if ( data_cnt == 5'b11111 )				
                        current_state       <=  ESRAM_2;
                    else
                        current_state       <=  ESRAM_1; 
    	            end
                else
                    begin
                    current_state           <=  ESRAM_1;                    
                    end
                end
			ESRAM_2: 
	            begin
                data_cnt <= 5'b00000;
                WRITE                     <=  1'b0;
                ram_waddr                 <= 5'b11111;
                if ( busy  == 1'b0 )
                    begin
				  	READ                   <=  1'b1;						
                    addr_temp		       <=  32'h20000000;
                    current_state          <=  Read_0;
                    end
                else
                    begin				
                    current_state          <=  ESRAM_2;
                    end
				end
///////////////Read states //////////////////////////////////////////////

			Read_0 :
				begin

						if ( busy  == 1'b0 && valid == 1'b1)
	                 	 	begin
							READ                      <=  1'b1;
							ram_wdata 				  <= DATAIN;
							ram_wen                   <= 1'b0;
							addr_temp				  <=  addr_temp+4;
				            current_state             <=  Read_1;
							end
						else
							begin
							ram_wen                    <= 1'b0;
				            current_state              <=  Read_0;
							end
				end

			Read_1 :
				begin
                if (ram_waddr == 5'b11110)
                    begin
                    READ                      <=  1'b0;
                    current_state             <=  Read_2;
                    end
                 else
                    begin
                    READ                      <=  1'b1;
                    current_state             <=  Read_1;
                    if ( busy  == 1'b0 && valid == 1'b1)
                        begin
                        ram_wdata 				  <= DATAIN;
                        ram_wen                   <= 1'b1;
                        addr_temp				  <=  addr_temp+4;
                        ram_waddr                 <= ram_waddr +1'b1;
                        end
                    end
               
				end
			Read_2 :
				begin
						if ( busy  == 1'b0 && valid == 1'b1)
	                 	 	begin
							ram_wen                   <= 1'b1;
							ram_waddr                 <= ram_waddr +1'b1;
							ram_wdata 				  <= DATAIN;
				            current_state             <=  ENVM0_RELEASE;
							end
						else
							begin
				            current_state              <=  Read_2;
							end
				end
            ENVM0_RELEASE :   
				begin
				READ                      <=  1'b0;
				ram_wen                   <= 1'b0;
				if( envm_release_reg == 1'b1)
                    begin
                        if( busy  == 1'b0 )
                            begin
                            WRITE                       <=  1'b1;	
                            READ                        <=  1'b0;					
                            addr_temp       			<=  32'h600801FC;              //ENVM0_RELEASE  release eNVM access;
                            data						<=  32'h00000000;
                            envm_release_reg            <=  1'b0;
                            current_state               <=  Idle_ESRAM_ENVM;                       
                            end	 
                        else       
                            begin
                            WRITE                       <=  1'b1;	
                            READ                        <=  1'b0;						
                            addr_temp       			<=  32'h600801FC;             
                            data						<=  32'h00000000;
                            current_state               <=  ENVM0_RELEASE;
                            end
                    end
				else
					begin
					   current_state     <=  Idle_ESRAM_ENVM;
					end			
				end


        endcase
    end     
end
endmodule

