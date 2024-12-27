
module BCD_to_7seg( A,
                    B,
                    C,
                    D,
                    D0,
                    D1,
                    D2,
                    D3,
                    E,
                    F,
                    G,
                    logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       D0;
   input       D1;
   input       D2;
   input       D3;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output A;
   output B;
   output C;
   output D;
   output E;
   output F;
   output G;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet10;
   wire s_logisimNet11;
   wire s_logisimNet12;
   wire s_logisimNet13;
   wire s_logisimNet14;
   wire s_logisimNet15;
   wire s_logisimNet16;
   wire s_logisimNet17;
   wire s_logisimNet18;
   wire s_logisimNet19;
   wire s_logisimNet2;
   wire s_logisimNet20;
   wire s_logisimNet21;
   wire s_logisimNet22;
   wire s_logisimNet23;
   wire s_logisimNet24;
   wire s_logisimNet25;
   wire s_logisimNet26;
   wire s_logisimNet27;
   wire s_logisimNet28;
   wire s_logisimNet29;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;
   wire s_logisimNet8;
   wire s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1  = D2;
   assign s_logisimNet12 = D3;
   assign s_logisimNet21 = D0;
   assign s_logisimNet6  = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign A = s_logisimNet29;
   assign B = s_logisimNet19;
   assign C = s_logisimNet22;
   assign D = s_logisimNet3;
   assign E = s_logisimNet10;
   assign F = s_logisimNet18;
   assign G = s_logisimNet11;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimNet6;

   // NOT Gate
   assign s_logisimNet0 = ~s_logisimNet1;

   // NOT Gate
   assign s_logisimNet2 = ~s_logisimNet21;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet6),
               .input2(s_logisimNet2),
               .result(s_logisimNet26));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_2 (.input1(s_logisimNet17),
               .input2(s_logisimNet7),
               .input3(s_logisimNet14),
               .input4(s_logisimNet12),
               .result(s_logisimNet18));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet6),
               .input2(s_logisimNet2),
               .result(s_logisimNet8));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet16),
               .input2(s_logisimNet8),
               .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet1),
               .input2(s_logisimNet21),
               .result(s_logisimNet20));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet1),
               .input2(s_logisimNet4),
               .result(s_logisimNet25));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet1),
               .input2(s_logisimNet4),
               .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet6),
               .input2(s_logisimNet21),
               .result(s_logisimNet24));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimNet0),
               .input2(s_logisimNet27),
               .input3(s_logisimNet24),
               .result(s_logisimNet19));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet0),
                .input2(s_logisimNet2),
                .result(s_logisimNet16));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_11 (.input1(s_logisimNet9),
                .input2(s_logisimNet15),
                .input3(s_logisimNet5),
                .input4(s_logisimNet23),
                .input5(s_logisimNet12),
                .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet0),
                .input2(s_logisimNet2),
                .result(s_logisimNet9));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_13 (.input1(s_logisimNet13),
                .input2(s_logisimNet6),
                .input3(s_logisimNet20),
                .input4(s_logisimNet12),
                .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet6),
                .input2(s_logisimNet2),
                .result(s_logisimNet23));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet1),
                .input2(s_logisimNet2),
                .result(s_logisimNet14));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_16 (.input1(s_logisimNet1),
                .input2(s_logisimNet4),
                .input3(s_logisimNet21),
                .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet0),
                .input2(s_logisimNet6),
                .result(s_logisimNet28));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet0),
                .input2(s_logisimNet6),
                .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet0),
                .input2(s_logisimNet2),
                .result(s_logisimNet13));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_20 (.input1(s_logisimNet28),
                .input2(s_logisimNet25),
                .input3(s_logisimNet12),
                .input4(s_logisimNet26),
                .result(s_logisimNet11));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet4),
                .input2(s_logisimNet2),
                .result(s_logisimNet27));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_22 (.input1(s_logisimNet4),
                .input2(s_logisimNet21),
                .input3(s_logisimNet1),
                .result(s_logisimNet22));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet4),
                .input2(s_logisimNet2),
                .result(s_logisimNet17));


endmodule
