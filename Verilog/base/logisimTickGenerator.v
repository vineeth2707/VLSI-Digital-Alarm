
module logisimTickGenerator( FPGAClock,
                             FPGATick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 10;
   parameter reloadValue = 10;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input FPGAClock;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output FPGATick;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [nrOfBits-1:0] s_countNext;
   wire                s_tickNext;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [nrOfBits-1:0] s_countReg;
   reg                s_tickReg;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the output is defined                                                 **
   *******************************************************************************/
   assign  FPGATick  =  s_tickReg;

   /*******************************************************************************
   ** Here the update logic is defined                                           **
   *******************************************************************************/
   assign s_tickNext  = (s_countReg == 0) ? 1'b1 : 1'b0;
   assign s_countNext = (s_countReg == 0) ? reloadValue-1 : s_countReg-1;

   /*******************************************************************************
   ** Here the simulation only initial is defined                                **
   *******************************************************************************/
   initial
   begin
      s_countReg = 0;
      s_tickReg  = 1'b0;
   end

   /*******************************************************************************
   ** Here the flipflops are defined                                             **
   *******************************************************************************/
   always @(posedge FPGAClock)
   begin
       s_countReg = s_countNext;
       s_tickReg  = s_tickNext;
   end

endmodule
