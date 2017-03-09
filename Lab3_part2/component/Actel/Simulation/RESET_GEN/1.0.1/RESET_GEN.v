`timescale 1ns/1fs

module RESET_GEN(RESET); 

   parameter DELAY  = 1000;  
   parameter LOGIC_LEVEL = 0 ;
   
   output RESET;
   reg RESET; 

   initial
   begin 
		if (LOGIC_LEVEL == 0)
            begin
      		RESET = 1'b0; 
      		#DELAY
      		RESET = 1'b1;
		end
            else 
            begin
			RESET = 1'b1; 
      		#DELAY
      		RESET = 1'b0;
		end
   end

endmodule