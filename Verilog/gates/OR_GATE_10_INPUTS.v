

module OR_GATE_10_INPUTS( input1,
                          input10,
                          input2,
                          input3,
                          input4,
                          input5,
                          input6,
                          input7,
                          input8,
                          input9,
                          result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter [64:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input input1;
   input input10;
   input input2;
   input input3;
   input input4;
   input input5;
   input input6;
   input input7;
   input input8;
   input input9;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_realInput1;
   wire s_realInput10;
   wire s_realInput2;
   wire s_realInput3;
   wire s_realInput4;
   wire s_realInput5;
   wire s_realInput6;
   wire s_realInput7;
   wire s_realInput8;
   wire s_realInput9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;
   assign  s_realInput3 = (BubblesMask[2] == 1'b0) ? input3 : ~input3;
   assign  s_realInput4 = (BubblesMask[3] == 1'b0) ? input4 : ~input4;
   assign  s_realInput5 = (BubblesMask[4] == 1'b0) ? input5 : ~input5;
   assign  s_realInput6 = (BubblesMask[5] == 1'b0) ? input6 : ~input6;
   assign  s_realInput7 = (BubblesMask[6] == 1'b0) ? input7 : ~input7;
   assign  s_realInput8 = (BubblesMask[7] == 1'b0) ? input8 : ~input8;
   assign  s_realInput9 = (BubblesMask[8] == 1'b0) ? input9 : ~input9;
   assign  s_realInput10 = (BubblesMask[9] == 1'b0) ? input10 : ~input10;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   assign result = s_realInput1|
                   s_realInput2|
                   s_realInput3|
                   s_realInput4|
                   s_realInput5|
                   s_realInput6|
                   s_realInput7|
                   s_realInput8|
                   s_realInput9|
                   s_realInput10;

endmodule
