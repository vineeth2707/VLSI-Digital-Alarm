

module Bin_to_BCD( D0,
                   D1,
                   D2,
                   D3,
                   D4,
                   D5,
                   O0,
                   O1,
                   O2,
                   O3,
                   T0,
                   T1,
                   T2,
                   T3,
                   logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       D0;
   input       D1;
   input       D2;
   input       D3;
   input       D4;
   input       D5;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output O0;
   output O1;
   output O2;
   output O3;
   output T0;
   output T1;
   output T2;
   output T3;

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
   wire s_logisimNet30;
   wire s_logisimNet31;
   wire s_logisimNet32;
   wire s_logisimNet33;
   wire s_logisimNet34;
   wire s_logisimNet35;
   wire s_logisimNet36;
   wire s_logisimNet37;
   wire s_logisimNet38;
   wire s_logisimNet39;
   wire s_logisimNet4;
   wire s_logisimNet40;
   wire s_logisimNet41;
   wire s_logisimNet42;
   wire s_logisimNet43;
   wire s_logisimNet44;
   wire s_logisimNet45;
   wire s_logisimNet46;
   wire s_logisimNet47;
   wire s_logisimNet48;
   wire s_logisimNet49;
   wire s_logisimNet5;
   wire s_logisimNet50;
   wire s_logisimNet51;
   wire s_logisimNet52;
   wire s_logisimNet53;
   wire s_logisimNet54;
   wire s_logisimNet55;
   wire s_logisimNet56;
   wire s_logisimNet57;
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
   assign s_logisimNet10 = D3;
   assign s_logisimNet29 = D0;
   assign s_logisimNet3  = D2;
   assign s_logisimNet6  = D5;
   assign s_logisimNet7  = D4;
   assign s_logisimNet8  = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign O3 = s_logisimNet33;
   assign O2 = s_logisimNet22;
   assign O1 = s_logisimNet48;
   assign O0 = s_logisimNet29;
   assign T3 = s_logisimNet35;
   assign T2 = s_logisimNet42;
   assign T1 = s_logisimNet14;
   assign T0 = s_logisimNet27;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet5 = ~s_logisimNet8;

   // NOT Gate
   assign s_logisimNet15 = ~s_logisimNet7;

   // NOT Gate
   assign s_logisimNet0 = ~s_logisimNet3;

   // NOT Gate
   assign s_logisimNet1 = ~s_logisimNet6;

   // NOT Gate
   assign s_logisimNet16 = ~s_logisimNet10;

   // Constant
   assign  s_logisimNet35  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_1 (.input1(s_logisimNet6),
               .input2(s_logisimNet16),
               .input3(s_logisimNet3),
               .input4(s_logisimNet5),
               .result(s_logisimNet34));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_2 (.input1(s_logisimNet6),
               .input2(s_logisimNet7),
               .input3(s_logisimNet16),
               .input4(s_logisimNet3),
               .input5(s_logisimNet8),
               .result(s_logisimNet18));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_3 (.input1(s_logisimNet1),
               .input2(s_logisimNet7),
               .input3(s_logisimNet16),
               .input4(s_logisimNet0),
               .input5(s_logisimNet8),
               .result(s_logisimNet9));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_4 (.input1(s_logisimNet6),
               .input2(s_logisimNet15),
               .input3(s_logisimNet3),
               .input4(s_logisimNet5),
               .result(s_logisimNet44));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_5 (.input1(s_logisimNet6),
               .input2(s_logisimNet15),
               .input3(s_logisimNet16),
               .input4(s_logisimNet3),
               .input5(s_logisimNet8),
               .result(s_logisimNet38));

   OR_GATE_6_INPUTS #(.BubblesMask({2'b00, 4'h0}))
      GATES_6 (.input1(s_logisimNet51),
               .input2(s_logisimNet9),
               .input3(s_logisimNet38),
               .input4(s_logisimNet57),
               .input5(s_logisimNet46),
               .input6(s_logisimNet41),
               .result(s_logisimNet33));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_7 (.input1(s_logisimNet6),
               .input2(s_logisimNet16),
               .input3(s_logisimNet3),
               .result(s_logisimNet45));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_8 (.input1(s_logisimNet1),
               .input2(s_logisimNet7),
               .input3(s_logisimNet10),
               .input4(s_logisimNet3),
               .input5(s_logisimNet5),
               .result(s_logisimNet41));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_9 (.input1(s_logisimNet1),
               .input2(s_logisimNet15),
               .input3(s_logisimNet10),
               .input4(s_logisimNet8),
               .result(s_logisimNet19));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_10 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet10),
                .input4(s_logisimNet8),
                .result(s_logisimNet26));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_11 (.input1(s_logisimNet15),
                .input2(s_logisimNet16),
                .input3(s_logisimNet3),
                .input4(s_logisimNet5),
                .result(s_logisimNet2));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_12 (.input1(s_logisimNet7),
                .input2(s_logisimNet10),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet40));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet6),
                .input2(s_logisimNet10),
                .result(s_logisimNet12));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet6),
                .input2(s_logisimNet7),
                .result(s_logisimNet20));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_15 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .result(s_logisimNet30));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_16 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet10),
                .input4(s_logisimNet3),
                .result(s_logisimNet43));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_17 (.input1(s_logisimNet1),
                .input2(s_logisimNet10),
                .input3(s_logisimNet3),
                .input4(s_logisimNet8),
                .result(s_logisimNet50));

   OR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_18 (.input1(s_logisimNet19),
                .input2(s_logisimNet53),
                .input3(s_logisimNet55),
                .input4(s_logisimNet50),
                .input5(s_logisimNet25),
                .input6(s_logisimNet45),
                .input7(s_logisimNet54),
                .input8(s_logisimNet4),
                .result(s_logisimNet27));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_19 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet0),
                .input4(s_logisimNet5),
                .result(s_logisimNet52));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_20 (.input1(s_logisimNet7),
                .input2(s_logisimNet16),
                .input3(s_logisimNet0),
                .input4(s_logisimNet8),
                .result(s_logisimNet4));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_21 (.input1(s_logisimNet6),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .result(s_logisimNet54));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_22 (.input1(s_logisimNet24),
                .input2(s_logisimNet11),
                .input3(s_logisimNet56),
                .input4(s_logisimNet47),
                .result(s_logisimNet14));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_23 (.input1(s_logisimNet7),
                .input2(s_logisimNet10),
                .input3(s_logisimNet3),
                .result(s_logisimNet47));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_24 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .input4(s_logisimNet5),
                .result(s_logisimNet21));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_25 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .input4(s_logisimNet3),
                .result(s_logisimNet37));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_26 (.input1(s_logisimNet6),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .input5(s_logisimNet5),
                .result(s_logisimNet36));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_27 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet16),
                .input4(s_logisimNet0),
                .input5(s_logisimNet5),
                .result(s_logisimNet39));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_28 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet16),
                .input4(s_logisimNet0),
                .result(s_logisimNet55));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_29 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .input4(s_logisimNet8),
                .result(s_logisimNet17));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_30 (.input1(s_logisimNet1),
                .input2(s_logisimNet16),
                .input3(s_logisimNet3),
                .input4(s_logisimNet8),
                .result(s_logisimNet28));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_31 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .input5(s_logisimNet5),
                .result(s_logisimNet57));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_32 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet10),
                .input4(s_logisimNet3),
                .result(s_logisimNet53));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_33 (.input1(s_logisimNet6),
                .input2(s_logisimNet10),
                .input3(s_logisimNet3),
                .input4(s_logisimNet8),
                .result(s_logisimNet32));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_34 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet3),
                .result(s_logisimNet11));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_35 (.input1(s_logisimNet12),
                .input2(s_logisimNet20),
                .result(s_logisimNet42));

   OR_GATE_10_INPUTS #(.BubblesMask({2'b00, 8'h00}))
      GATES_36 (.input1(s_logisimNet31),
                .input10(s_logisimNet43),
                .input2(s_logisimNet52),
                .input3(s_logisimNet18),
                .input4(s_logisimNet40),
                .input5(s_logisimNet30),
                .input6(s_logisimNet2),
                .input7(s_logisimNet37),
                .input8(s_logisimNet44),
                .input9(s_logisimNet23),
                .result(s_logisimNet22));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_37 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .result(s_logisimNet25));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_38 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet3),
                .input4(s_logisimNet8),
                .result(s_logisimNet23));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_39 (.input1(s_logisimNet6),
                .input2(s_logisimNet7),
                .input3(s_logisimNet16),
                .input4(s_logisimNet0),
                .input5(s_logisimNet5),
                .result(s_logisimNet51));

   OR_GATE_10_INPUTS #(.BubblesMask({2'b00, 8'h00}))
      GATES_40 (.input1(s_logisimNet17),
                .input10(s_logisimNet32),
                .input2(s_logisimNet49),
                .input3(s_logisimNet39),
                .input4(s_logisimNet28),
                .input5(s_logisimNet13),
                .input6(s_logisimNet21),
                .input7(s_logisimNet26),
                .input8(s_logisimNet34),
                .input9(s_logisimNet36),
                .result(s_logisimNet48));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_41 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .result(s_logisimNet56));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_42 (.input1(s_logisimNet6),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .input5(s_logisimNet8),
                .result(s_logisimNet46));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_43 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .result(s_logisimNet24));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_44 (.input1(s_logisimNet1),
                .input2(s_logisimNet15),
                .input3(s_logisimNet10),
                .input4(s_logisimNet3),
                .input5(s_logisimNet5),
                .result(s_logisimNet49));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_45 (.input1(s_logisimNet1),
                .input2(s_logisimNet7),
                .input3(s_logisimNet10),
                .input4(s_logisimNet0),
                .input5(s_logisimNet8),
                .result(s_logisimNet13));

   AND_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_46 (.input1(s_logisimNet6),
                .input2(s_logisimNet15),
                .input3(s_logisimNet16),
                .input4(s_logisimNet0),
                .input5(s_logisimNet8),
                .result(s_logisimNet31));


endmodule
