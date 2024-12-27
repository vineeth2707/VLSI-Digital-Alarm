

module main( AM_PM,
             AlarmEnable,
             D_Mins,
             D_hours,
             D_secs,
             LoadAlarm,
             LoadTime,
             Reset,
             logisimClockTree0,
             logisimOutputBubbles );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       AM_PM;
   input       AlarmEnable;
   input [5:0] D_Mins;
   input [5:0] D_hours;
   input [5:0] D_secs;
   input       LoadAlarm;
   input       LoadTime;
   input       Reset;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [55:0] logisimOutputBubbles;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus0;
   wire [5:0] s_logisimBus106;
   wire [1:0] s_logisimBus109;
   wire [5:0] s_logisimBus110;
   wire [3:0] s_logisimBus111;
   wire [6:0] s_logisimBus116;
   wire [6:0] s_logisimBus120;
   wire [3:0] s_logisimBus127;
   wire [3:0] s_logisimBus128;
   wire [3:0] s_logisimBus129;
   wire [6:0] s_logisimBus130;
   wire [3:0] s_logisimBus133;
   wire [3:0] s_logisimBus15;
   wire [1:0] s_logisimBus17;
   wire [3:0] s_logisimBus19;
   wire [3:0] s_logisimBus2;
   wire [3:0] s_logisimBus20;
   wire [3:0] s_logisimBus23;
   wire [3:0] s_logisimBus25;
   wire [3:0] s_logisimBus26;
   wire [3:0] s_logisimBus27;
   wire [3:0] s_logisimBus32;
   wire [3:0] s_logisimBus34;
   wire [3:0] s_logisimBus36;
   wire [3:0] s_logisimBus37;
   wire [3:0] s_logisimBus4;
   wire [5:0] s_logisimBus42;
   wire [3:0] s_logisimBus43;
   wire [3:0] s_logisimBus49;
   wire [3:0] s_logisimBus51;
   wire [3:0] s_logisimBus54;
   wire [1:0] s_logisimBus56;
   wire [3:0] s_logisimBus59;
   wire [3:0] s_logisimBus6;
   wire [6:0] s_logisimBus60;
   wire [3:0] s_logisimBus62;
   wire [3:0] s_logisimBus68;
   wire [3:0] s_logisimBus79;
   wire [3:0] s_logisimBus80;
   wire [3:0] s_logisimBus85;
   wire [3:0] s_logisimBus86;
   wire [3:0] s_logisimBus89;
   wire [3:0] s_logisimBus92;
   wire [6:0] s_logisimBus99;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet100;
   wire       s_logisimNet101;
   wire       s_logisimNet102;
   wire       s_logisimNet103;
   wire       s_logisimNet104;
   wire       s_logisimNet105;
   wire       s_logisimNet107;
   wire       s_logisimNet108;
   wire       s_logisimNet11;
   wire       s_logisimNet112;
   wire       s_logisimNet113;
   wire       s_logisimNet114;
   wire       s_logisimNet115;
   wire       s_logisimNet117;
   wire       s_logisimNet118;
   wire       s_logisimNet119;
   wire       s_logisimNet12;
   wire       s_logisimNet121;
   wire       s_logisimNet122;
   wire       s_logisimNet123;
   wire       s_logisimNet124;
   wire       s_logisimNet125;
   wire       s_logisimNet126;
   wire       s_logisimNet13;
   wire       s_logisimNet131;
   wire       s_logisimNet132;
   wire       s_logisimNet134;
   wire       s_logisimNet135;
   wire       s_logisimNet136;
   wire       s_logisimNet137;
   wire       s_logisimNet138;
   wire       s_logisimNet139;
   wire       s_logisimNet14;
   wire       s_logisimNet140;
   wire       s_logisimNet141;
   wire       s_logisimNet142;
   wire       s_logisimNet143;
   wire       s_logisimNet144;
   wire       s_logisimNet145;
   wire       s_logisimNet146;
   wire       s_logisimNet147;
   wire       s_logisimNet148;
   wire       s_logisimNet149;
   wire       s_logisimNet150;
   wire       s_logisimNet151;
   wire       s_logisimNet152;
   wire       s_logisimNet153;
   wire       s_logisimNet154;
   wire       s_logisimNet155;
   wire       s_logisimNet156;
   wire       s_logisimNet157;
   wire       s_logisimNet158;
   wire       s_logisimNet159;
   wire       s_logisimNet16;
   wire       s_logisimNet160;
   wire       s_logisimNet161;
   wire       s_logisimNet162;
   wire       s_logisimNet163;
   wire       s_logisimNet164;
   wire       s_logisimNet165;
   wire       s_logisimNet166;
   wire       s_logisimNet167;
   wire       s_logisimNet168;
   wire       s_logisimNet169;
   wire       s_logisimNet170;
   wire       s_logisimNet171;
   wire       s_logisimNet172;
   wire       s_logisimNet173;
   wire       s_logisimNet174;
   wire       s_logisimNet175;
   wire       s_logisimNet176;
   wire       s_logisimNet177;
   wire       s_logisimNet178;
   wire       s_logisimNet179;
   wire       s_logisimNet18;
   wire       s_logisimNet180;
   wire       s_logisimNet181;
   wire       s_logisimNet182;
   wire       s_logisimNet183;
   wire       s_logisimNet184;
   wire       s_logisimNet185;
   wire       s_logisimNet186;
   wire       s_logisimNet187;
   wire       s_logisimNet188;
   wire       s_logisimNet189;
   wire       s_logisimNet190;
   wire       s_logisimNet191;
   wire       s_logisimNet192;
   wire       s_logisimNet193;
   wire       s_logisimNet194;
   wire       s_logisimNet195;
   wire       s_logisimNet196;
   wire       s_logisimNet197;
   wire       s_logisimNet198;
   wire       s_logisimNet199;
   wire       s_logisimNet200;
   wire       s_logisimNet201;
   wire       s_logisimNet202;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet24;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet33;
   wire       s_logisimNet35;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet55;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet61;
   wire       s_logisimNet63;
   wire       s_logisimNet64;
   wire       s_logisimNet65;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet69;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet75;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet78;
   wire       s_logisimNet8;
   wire       s_logisimNet81;
   wire       s_logisimNet82;
   wire       s_logisimNet83;
   wire       s_logisimNet84;
   wire       s_logisimNet87;
   wire       s_logisimNet88;
   wire       s_logisimNet9;
   wire       s_logisimNet90;
   wire       s_logisimNet91;
   wire       s_logisimNet93;
   wire       s_logisimNet94;
   wire       s_logisimNet95;
   wire       s_logisimNet96;
   wire       s_logisimNet97;
   wire       s_logisimNet98;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All clock generator connections are defined here                           **
   *******************************************************************************/
   assign s_logisimNet1 = logisimClockTree0[0];

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus62[0] = s_logisimNet1;
   assign s_logisimBus62[1] = s_logisimNet1;
   assign s_logisimBus62[2] = s_logisimNet1;
   assign s_logisimBus62[3] = s_logisimNet1;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus106[5:0] = D_secs;
   assign s_logisimBus110[5:0] = D_Mins;
   assign s_logisimBus42[5:0]  = D_hours;
   assign s_logisimNet13       = Reset;
   assign s_logisimNet14       = LoadTime;
   assign s_logisimNet18       = AlarmEnable;
   assign s_logisimNet22       = LoadAlarm;
   assign s_logisimNet57       = AM_PM;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet28  =  1'b0;


   // Power
   assign  s_logisimNet47  =  1'b1;


   // Constant
   assign  s_logisimBus15[3:0]  =  4'hA;


   // Constant
   assign  s_logisimBus127[3:0]  =  4'h6;


   // Constant
   assign  s_logisimBus20[3:0]  =  4'hA;


   // Constant
   assign  s_logisimBus128[3:0]  =  4'h6;


   // Constant
   assign  s_logisimBus23[3:0]  =  4'hA;


   // Constant
   assign  s_logisimBus129[3:0]  =  4'h2;


   // 7-Segment Display: Status
   assign logisimOutputBubbles[0] = s_logisimBus130[6];
   assign logisimOutputBubbles[1] = s_logisimBus130[5];
   assign logisimOutputBubbles[2] = s_logisimBus130[4];
   assign logisimOutputBubbles[3] = s_logisimBus130[3];
   assign logisimOutputBubbles[4] = s_logisimBus130[2];
   assign logisimOutputBubbles[5] = s_logisimBus130[1];
   assign logisimOutputBubbles[6] = s_logisimBus130[0];
   assign logisimOutputBubbles[7] = s_logisimNet16;

   // 7-Segment Display: MT_O
   assign logisimOutputBubbles[10] = s_logisimNet76;
   assign logisimOutputBubbles[11] = s_logisimNet38;
   assign logisimOutputBubbles[12] = s_logisimNet96;
   assign logisimOutputBubbles[13] = s_logisimNet52;
   assign logisimOutputBubbles[14] = s_logisimNet87;
   assign logisimOutputBubbles[15] = s_logisimNet16;
   assign logisimOutputBubbles[8]  = s_logisimNet24;
   assign logisimOutputBubbles[9]  = s_logisimNet5;

   // 7-Segment Display: SO_O
   assign logisimOutputBubbles[16] = s_logisimNet65;
   assign logisimOutputBubbles[17] = s_logisimNet93;
   assign logisimOutputBubbles[18] = s_logisimNet131;
   assign logisimOutputBubbles[19] = s_logisimNet44;
   assign logisimOutputBubbles[20] = s_logisimNet97;
   assign logisimOutputBubbles[21] = s_logisimNet46;
   assign logisimOutputBubbles[22] = s_logisimNet77;
   assign logisimOutputBubbles[23] = s_logisimNet16;

   // Constant
   assign  s_logisimBus116[6:0]  =  {3'b000, 4'h0};


   // Constant
   assign  s_logisimBus99[6:0]  =  {3'b111, 4'h7};


   // NOT Gate
   assign s_logisimNet82 = ~s_logisimBus109[1];

   // Constant
   assign  s_logisimBus60[6:0]  =  {3'b110, 4'h7};


   // 7-Segment Display: MO_O
   assign logisimOutputBubbles[24] = s_logisimNet50;
   assign logisimOutputBubbles[25] = s_logisimNet58;
   assign logisimOutputBubbles[26] = s_logisimNet117;
   assign logisimOutputBubbles[27] = s_logisimNet10;
   assign logisimOutputBubbles[28] = s_logisimNet9;
   assign logisimOutputBubbles[29] = s_logisimNet113;
   assign logisimOutputBubbles[30] = s_logisimNet114;
   assign logisimOutputBubbles[31] = s_logisimNet1;

   // Constant
   assign  s_logisimBus120[6:0]  =  {3'b000, 4'hE};


   // 7-Segment Display: HO_O
   assign logisimOutputBubbles[32] = s_logisimNet3;
   assign logisimOutputBubbles[33] = s_logisimNet108;
   assign logisimOutputBubbles[34] = s_logisimNet75;
   assign logisimOutputBubbles[35] = s_logisimNet121;
   assign logisimOutputBubbles[36] = s_logisimNet61;
   assign logisimOutputBubbles[37] = s_logisimNet40;
   assign logisimOutputBubbles[38] = s_logisimNet41;
   assign logisimOutputBubbles[39] = s_logisimNet1;

   // 7-Segment Display: ST_O
   assign logisimOutputBubbles[40] = s_logisimNet30;
   assign logisimOutputBubbles[41] = s_logisimNet31;
   assign logisimOutputBubbles[42] = s_logisimNet88;
   assign logisimOutputBubbles[43] = s_logisimNet63;
   assign logisimOutputBubbles[44] = s_logisimNet55;
   assign logisimOutputBubbles[45] = s_logisimNet67;
   assign logisimOutputBubbles[46] = s_logisimNet33;
   assign logisimOutputBubbles[47] = s_logisimNet16;

   // 7-Segment Display: HT_O
   assign logisimOutputBubbles[48] = s_logisimNet132;
   assign logisimOutputBubbles[49] = s_logisimNet95;
   assign logisimOutputBubbles[50] = s_logisimNet48;
   assign logisimOutputBubbles[51] = s_logisimNet112;
   assign logisimOutputBubbles[52] = s_logisimNet7;
   assign logisimOutputBubbles[53] = s_logisimNet8;
   assign logisimOutputBubbles[54] = s_logisimNet72;
   assign logisimOutputBubbles[55] = s_logisimNet16;

   // Constant
   assign  s_logisimBus133[3:0]  =  4'h2;


   // Constant
   assign  s_logisimBus49[3:0]  =  4'h1;


   // Ground
   assign  s_logisimNet16  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet1),
               .input2(s_logisimNet14),
               .result(s_logisimNet135));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet21),
               .input2(s_logisimNet11),
               .result(s_logisimNet104));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_3 (.aEqualsB(s_logisimNet11),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus4[3:0]),
               .dataB(s_logisimBus15[3:0]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_4 (.clear(s_logisimNet104),
                .clock(s_logisimNet135),
                .compareOut(),
                .countValue(s_logisimBus4[3:0]),
                .enable(s_logisimNet47),
                .load(s_logisimNet14),
                .loadData(s_logisimBus32[3:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet47));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_5 (.clear(s_logisimNet101),
                .clock(s_logisimNet125),
                .compareOut(),
                .countValue(s_logisimBus26[3:0]),
                .enable(s_logisimNet47),
                .load(s_logisimNet14),
                .loadData(s_logisimBus51[3:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet47));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet11),
               .input2(s_logisimNet14),
               .result(s_logisimNet125));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_7 (.aEqualsB(s_logisimNet69),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus26[3:0]),
               .dataB(s_logisimBus127[3:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet21),
               .input2(s_logisimNet69),
               .result(s_logisimNet101));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet21),
               .input2(s_logisimNet74),
               .result(s_logisimNet100));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_10 (.aEqualsB(s_logisimNet12),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus34[3:0]),
                .dataB(s_logisimBus20[3:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet69),
                .input2(s_logisimNet14),
                .result(s_logisimNet134));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_12 (.clear(s_logisimNet100),
                 .clock(s_logisimNet124),
                 .compareOut(),
                 .countValue(s_logisimBus27[3:0]),
                 .enable(s_logisimNet47),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus54[3:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet47));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_13 (.clear(s_logisimNet103),
                 .clock(s_logisimNet134),
                 .compareOut(),
                 .countValue(s_logisimBus34[3:0]),
                 .enable(s_logisimNet47),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus68[3:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet47));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet12),
                .input2(s_logisimNet14),
                .result(s_logisimNet124));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_15 (.aEqualsB(s_logisimNet74),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus27[3:0]),
                .dataB(s_logisimBus128[3:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet21),
                .input2(s_logisimNet12),
                .result(s_logisimNet103));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_17 (.aEqualsB(s_logisimNet71),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus25[3:0]),
                .dataB(s_logisimBus129[3:0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet73),
                .input2(s_logisimNet14),
                .result(s_logisimNet126));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet21),
                .input2(s_logisimNet73),
                .result(s_logisimNet102));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_20 (.clear(s_logisimNet105),
                 .clock(s_logisimNet126),
                 .compareOut(),
                 .countValue(s_logisimBus25[3:0]),
                 .enable(s_logisimNet47),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus89[3:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet47));

   LogisimCounter #(.invertClock(0),
                    .maxVal(4'hF),
                    .mode(0),
                    .width(4))
      MEMORY_21 (.clear(s_logisimNet102),
                 .clock(s_logisimNet136),
                 .compareOut(),
                 .countValue(s_logisimBus6[3:0]),
                 .enable(s_logisimNet47),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus36[3:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet47));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet21),
                .input2(s_logisimNet71),
                .result(s_logisimNet105));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet74),
                .input2(s_logisimNet14),
                .result(s_logisimNet136));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_24 (.aEqualsB(s_logisimNet73),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus6[3:0]),
                .dataB(s_logisimBus23[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(2))
      MEMORY_25 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet47),
                 .d(s_logisimBus109[1:0]),
                 .q(s_logisimBus56[1:0]),
                 .reset(s_logisimNet13),
                 .tick(logisimClockTree0[2]));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_26 (.clock(s_logisimNet64),
                 .d(s_logisimNet82),
                 .preset(1'b0),
                 .q(s_logisimBus109[1]),
                 .qBar(s_logisimBus109[0]),
                 .reset(s_logisimNet13),
                 .tick(1'b1));

   Multiplexer_bus_4 #(.nrOfBits(7))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus116[6:0]),
                  .muxIn_1(s_logisimBus99[6:0]),
                  .muxIn_2(s_logisimBus60[6:0]),
                  .muxIn_3(s_logisimBus120[6:0]),
                  .muxOut(s_logisimBus130[6:0]),
                  .sel(s_logisimBus56[1:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_28 (.input1(s_logisimNet123),
                .input2(s_logisimNet91),
                .result(s_logisimNet90));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_29 (.aEqualsB(s_logisimNet91),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus25[3:0]),
                .dataB(s_logisimBus49[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_30 (.aEqualsB(s_logisimNet123),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus133[3:0]),
                .dataB(s_logisimBus6[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_31 (.input1(s_logisimNet57),
                .input2(s_logisimNet14),
                .result(s_logisimNet115));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_32 (.input1(s_logisimNet90),
                .input2(s_logisimNet13),
                .result(s_logisimNet21));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_33 (.input1(s_logisimNet115),
                .input2(s_logisimNet90),
                .result(s_logisimNet64));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_34 (.enable(1'b1),
                  .muxIn_0(s_logisimBus6[3:0]),
                  .muxIn_1(s_logisimBus36[3:0]),
                  .muxIn_2(s_logisimBus59[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus111[3:0]),
                  .sel(s_logisimBus17[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_35 (.enable(1'b1),
                  .muxIn_0(s_logisimBus25[3:0]),
                  .muxIn_1(s_logisimBus89[3:0]),
                  .muxIn_2(s_logisimBus85[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus92[3:0]),
                  .sel(s_logisimBus17[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_36 (.enable(1'b1),
                  .muxIn_0(s_logisimBus34[3:0]),
                  .muxIn_1(s_logisimBus68[3:0]),
                  .muxIn_2(s_logisimBus2[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus43[3:0]),
                  .sel(s_logisimBus17[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_37 (.enable(1'b1),
                  .muxIn_0(s_logisimBus26[3:0]),
                  .muxIn_1(s_logisimBus51[3:0]),
                  .muxIn_2(s_logisimBus80[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus37[3:0]),
                  .sel(s_logisimBus17[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_38 (.enable(1'b1),
                  .muxIn_0(s_logisimBus27[3:0]),
                  .muxIn_1(s_logisimBus54[3:0]),
                  .muxIn_2(s_logisimBus79[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus19[3:0]),
                  .sel(s_logisimBus17[1:0]));

   Multiplexer_bus_4 #(.nrOfBits(4))
      PLEXERS_39 (.enable(1'b1),
                  .muxIn_0(s_logisimBus4[3:0]),
                  .muxIn_1(s_logisimBus32[3:0]),
                  .muxIn_2(s_logisimBus0[3:0]),
                  .muxIn_3(s_logisimBus62[3:0]),
                  .muxOut(s_logisimBus86[3:0]),
                  .sel(s_logisimBus17[1:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_40 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus54[3:0]),
                 .q(s_logisimBus79[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_41 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus68[3:0]),
                 .q(s_logisimBus2[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_42 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus36[3:0]),
                 .q(s_logisimBus59[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_43 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus89[3:0]),
                 .q(s_logisimBus85[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   /* Priority_Encoder #(.nrOfInputBits(4),
                      .nrOfSelectBits(2))
      PLEXERS_44 (.address(s_logisimBus17[1:0]),
                  .enable(1'b1),
                  .enableOut(),
                  .groupSelect(),
                  .inputVector({s_logisimNet29,
                                s_logisimNet22,
                                s_logisimNet14,
                                s_logisimNet47})); */
                            
   priority_encoder PLEXERS_44 (.A0(s_logisimBus17[0]),
                                .A1(s_logisimBus17[1]),
                                .Y0(s_logisimNet47),.Y1(s_logisimNet14),.Y2(s_logisimNet22),.Y3(s_logisimNet29));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_45 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus51[3:0]),
                 .q(s_logisimBus80[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_46 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus32[3:0]),
                 .q(s_logisimBus0[3:0]),
                 .reset(1'b0),
                 .tick(logisimClockTree0[2]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_47 (.aEqualsB(s_logisimNet45),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus25[3:0]),
                .dataB(s_logisimBus85[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_48 (.aEqualsB(s_logisimNet122),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus6[3:0]),
                .dataB(s_logisimBus59[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_49 (.aEqualsB(s_logisimNet118),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus27[3:0]),
                .dataB(s_logisimBus79[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_50 (.aEqualsB(s_logisimNet39),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus34[3:0]),
                .dataB(s_logisimBus2[3:0]));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_51 (.input1(s_logisimNet39),
                .input2(s_logisimNet118),
                .input3(s_logisimNet122),
                .input4(s_logisimNet45),
                .result(s_logisimNet81));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_52 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimNet81),
                 .q(s_logisimNet29),
                 .reset(s_logisimNet35),
                 .tick(logisimClockTree0[2]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_53 (.input1(s_logisimNet98),
                .input2(s_logisimNet13),
                .result(s_logisimNet35));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_54 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimNet11),
                 .q(s_logisimNet98),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Bin_to_BCD   Sec_c (.D0(s_logisimBus106[5]),
                       .D1(s_logisimBus106[4]),
                       .D2(s_logisimBus106[3]),
                       .D3(s_logisimBus106[2]),
                       .D4(s_logisimBus106[1]),
                       .D5(s_logisimBus106[0]),
                       .O0(s_logisimBus51[0]),
                       .O1(s_logisimBus51[1]),
                       .O2(s_logisimBus51[2]),
                       .O3(s_logisimBus51[3]),
                       .T0(s_logisimBus32[0]),
                       .T1(s_logisimBus32[1]),
                       .T2(s_logisimBus32[2]),
                       .T3(s_logisimBus32[3]),
                       .logisimClockTree0(logisimClockTree0));

   Bin_to_BCD   Min_c (.D0(s_logisimBus110[5]),
                       .D1(s_logisimBus110[4]),
                       .D2(s_logisimBus110[3]),
                       .D3(s_logisimBus110[2]),
                       .D4(s_logisimBus110[1]),
                       .D5(s_logisimBus110[0]),
                       .O0(s_logisimBus54[0]),
                       .O1(s_logisimBus54[1]),
                       .O2(s_logisimBus54[2]),
                       .O3(s_logisimBus54[3]),
                       .T0(s_logisimBus68[0]),
                       .T1(s_logisimBus68[1]),
                       .T2(s_logisimBus68[2]),
                       .T3(s_logisimBus68[3]),
                       .logisimClockTree0(logisimClockTree0));

   Bin_to_BCD   Hour_c (.D0(s_logisimBus42[5]),
                        .D1(s_logisimBus42[4]),
                        .D2(s_logisimBus42[3]),
                        .D3(s_logisimBus42[2]),
                        .D4(s_logisimBus42[1]),
                        .D5(s_logisimBus42[0]),
                        .O0(s_logisimBus89[0]),
                        .O1(s_logisimBus89[1]),
                        .O2(s_logisimBus89[2]),
                        .O3(s_logisimBus89[3]),
                        .T0(s_logisimBus36[0]),
                        .T1(s_logisimBus36[1]),
                        .T2(s_logisimBus36[2]),
                        .T3(s_logisimBus36[3]),
                        .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Sec_seg (.A(s_logisimNet30),
                          .B(s_logisimNet31),
                          .C(s_logisimNet88),
                          .D(s_logisimNet63),
                          .D0(s_logisimBus37[0]),
                          .D1(s_logisimBus37[1]),
                          .D2(s_logisimBus37[2]),
                          .D3(s_logisimBus37[3]),
                          .E(s_logisimNet55),
                          .F(s_logisimNet67),
                          .G(s_logisimNet33),
                          .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Hour_seg2 (.A(s_logisimNet3),
                            .B(s_logisimNet108),
                            .C(s_logisimNet75),
                            .D(s_logisimNet121),
                            .D0(s_logisimBus111[0]),
                            .D1(s_logisimBus111[1]),
                            .D2(s_logisimBus111[2]),
                            .D3(s_logisimBus111[3]),
                            .E(s_logisimNet61),
                            .F(s_logisimNet40),
                            .G(s_logisimNet41),
                            .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Hour_seg (.A(s_logisimNet132),
                           .B(s_logisimNet95),
                           .C(s_logisimNet48),
                           .D(s_logisimNet112),
                           .D0(s_logisimBus92[0]),
                           .D1(s_logisimBus92[1]),
                           .D2(s_logisimBus92[2]),
                           .D3(s_logisimBus92[3]),
                           .E(s_logisimNet7),
                           .F(s_logisimNet8),
                           .G(s_logisimNet72),
                           .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Min_seg2 (.A(s_logisimNet50),
                           .B(s_logisimNet58),
                           .C(s_logisimNet117),
                           .D(s_logisimNet10),
                           .D0(s_logisimBus43[0]),
                           .D1(s_logisimBus43[1]),
                           .D2(s_logisimBus43[2]),
                           .D3(s_logisimBus43[3]),
                           .E(s_logisimNet9),
                           .F(s_logisimNet113),
                           .G(s_logisimNet114),
                           .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Min_seg (.A(s_logisimNet24),
                          .B(s_logisimNet5),
                          .C(s_logisimNet76),
                          .D(s_logisimNet38),
                          .D0(s_logisimBus19[0]),
                          .D1(s_logisimBus19[1]),
                          .D2(s_logisimBus19[2]),
                          .D3(s_logisimBus19[3]),
                          .E(s_logisimNet96),
                          .F(s_logisimNet52),
                          .G(s_logisimNet87),
                          .logisimClockTree0(logisimClockTree0));

   BCD_to_7seg   Sec_seg2 (.A(s_logisimNet65),
                           .B(s_logisimNet93),
                           .C(s_logisimNet131),
                           .D(s_logisimNet44),
                           .D0(s_logisimBus86[0]),
                           .D1(s_logisimBus86[1]),
                           .D2(s_logisimBus86[2]),
                           .D3(s_logisimBus86[3]),
                           .E(s_logisimNet97),
                           .F(s_logisimNet46),
                           .G(s_logisimNet77),
                           .logisimClockTree0(logisimClockTree0));

endmodule
