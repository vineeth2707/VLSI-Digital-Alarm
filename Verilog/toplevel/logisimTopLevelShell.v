

module logisimTopLevelShell( AM_PM_0,
                             AlarmEnable_0,
                             D_Mins_0,
                             D_Mins_1,
                             D_Mins_2,
                             D_Mins_3,
                             D_Mins_4,
                             D_Mins_5,
                             D_hours_0,
                             D_hours_1,
                             D_hours_2,
                             D_hours_3,
                             D_hours_4,
                             D_hours_5,
                             D_secs_0,
                             D_secs_1,
                             D_secs_2,
                             D_secs_3,
                             D_secs_4,
                             D_secs_5,
                             HO_O_Segment_A,
                             HO_O_Segment_B,
                             HO_O_Segment_C,
                             HO_O_Segment_D,
                             HO_O_Segment_E,
                             HO_O_Segment_F,
                             HO_O_Segment_G,
                             HT_O_Segment_A,
                             HT_O_Segment_B,
                             HT_O_Segment_C,
                             HT_O_Segment_D,
                             HT_O_Segment_E,
                             HT_O_Segment_F,
                             HT_O_Segment_G,
                             LoadAlarm_0,
                             LoadTime_0,
                             MO_O_Segment_A,
                             MO_O_Segment_B,
                             MO_O_Segment_C,
                             MO_O_Segment_D,
                             MO_O_Segment_E,
                             MO_O_Segment_F,
                             MO_O_Segment_G,
                             MT_O_Segment_A,
                             MT_O_Segment_B,
                             MT_O_Segment_C,
                             MT_O_Segment_D,
                             fpgaGlobalClock,
                             n_Reset_0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input AM_PM_0;
   input AlarmEnable_0;
   input D_Mins_0;
   input D_Mins_1;
   input D_Mins_2;
   input D_Mins_3;
   input D_Mins_4;
   input D_Mins_5;
   input D_hours_0;
   input D_hours_1;
   input D_hours_2;
   input D_hours_3;
   input D_hours_4;
   input D_hours_5;
   input D_secs_0;
   input D_secs_1;
   input D_secs_2;
   input D_secs_3;
   input D_secs_4;
   input D_secs_5;
   input LoadAlarm_0;
   input LoadTime_0;
   input fpgaGlobalClock;
   input n_Reset_0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output HO_O_Segment_A;
   output HO_O_Segment_B;
   output HO_O_Segment_C;
   output HO_O_Segment_D;
   output HO_O_Segment_E;
   output HO_O_Segment_F;
   output HO_O_Segment_G;
   output HT_O_Segment_A;
   output HT_O_Segment_B;
   output HT_O_Segment_C;
   output HT_O_Segment_D;
   output HT_O_Segment_E;
   output HT_O_Segment_F;
   output HT_O_Segment_G;
   output MO_O_Segment_A;
   output MO_O_Segment_B;
   output MO_O_Segment_C;
   output MO_O_Segment_D;
   output MO_O_Segment_E;
   output MO_O_Segment_F;
   output MO_O_Segment_G;
   output MT_O_Segment_A;
   output MT_O_Segment_B;
   output MT_O_Segment_C;
   output MT_O_Segment_D;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire        s_AM_PM;
   wire        s_AlarmEnable;
   wire [5:0]  s_D_Mins;
   wire [5:0]  s_D_hours;
   wire [5:0]  s_D_secs;
   wire        s_LoadAlarm;
   wire        s_LoadTime;
   wire        s_Reset;
   wire        s_fpgaTick;
   wire [4:0]  s_logisimClockTree0;
   wire [55:0] s_logisimOutputBubbles;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign HO_O_Segment_A = s_logisimOutputBubbles[32];
   assign HO_O_Segment_B = s_logisimOutputBubbles[33];
   assign HO_O_Segment_C = s_logisimOutputBubbles[34];
   assign HO_O_Segment_D = s_logisimOutputBubbles[35];
   assign HO_O_Segment_E = s_logisimOutputBubbles[36];
   assign HO_O_Segment_F = s_logisimOutputBubbles[37];
   assign HO_O_Segment_G = s_logisimOutputBubbles[38];
   assign HT_O_Segment_A = s_logisimOutputBubbles[48];
   assign HT_O_Segment_B = s_logisimOutputBubbles[49];
   assign HT_O_Segment_C = s_logisimOutputBubbles[50];
   assign HT_O_Segment_D = s_logisimOutputBubbles[51];
   assign HT_O_Segment_E = s_logisimOutputBubbles[52];
   assign HT_O_Segment_F = s_logisimOutputBubbles[53];
   assign HT_O_Segment_G = s_logisimOutputBubbles[54];
   assign MO_O_Segment_A = s_logisimOutputBubbles[24];
   assign MO_O_Segment_B = s_logisimOutputBubbles[25];
   assign MO_O_Segment_C = s_logisimOutputBubbles[26];
   assign MO_O_Segment_D = s_logisimOutputBubbles[27];
   assign MO_O_Segment_E = s_logisimOutputBubbles[28];
   assign MO_O_Segment_F = s_logisimOutputBubbles[29];
   assign MO_O_Segment_G = s_logisimOutputBubbles[30];
   assign MT_O_Segment_A = s_logisimOutputBubbles[8];
   assign MT_O_Segment_B = s_logisimOutputBubbles[9];
   assign MT_O_Segment_C = s_logisimOutputBubbles[10];
   assign MT_O_Segment_D = s_logisimOutputBubbles[11];
   assign s_AM_PM        = AM_PM_0;
   assign s_AlarmEnable  = AlarmEnable_0;
   assign s_D_Mins[0]    = D_Mins_0;
   assign s_D_Mins[1]    = D_Mins_1;
   assign s_D_Mins[2]    = D_Mins_2;
   assign s_D_Mins[3]    = D_Mins_3;
   assign s_D_Mins[4]    = D_Mins_4;
   assign s_D_Mins[5]    = D_Mins_5;
   assign s_D_hours[0]   = D_hours_0;
   assign s_D_hours[1]   = D_hours_1;
   assign s_D_hours[2]   = D_hours_2;
   assign s_D_hours[3]   = D_hours_3;
   assign s_D_hours[4]   = D_hours_4;
   assign s_D_hours[5]   = D_hours_5;
   assign s_D_secs[0]    = D_secs_0;
   assign s_D_secs[1]    = D_secs_1;
   assign s_D_secs[2]    = D_secs_2;
   assign s_D_secs[3]    = D_secs_3;
   assign s_D_secs[4]    = D_secs_4;
   assign s_D_secs[5]    = D_secs_5;
   assign s_LoadAlarm    = LoadAlarm_0;
   assign s_LoadTime     = LoadTime_0;
   assign s_Reset        = ~n_Reset_0;

   /*******************************************************************************
   ** The clock tree components are defined here                                 **
   *******************************************************************************/
   logisimTickGenerator #(.nrOfBits(10),
                          .reloadValue(63))
      BASE_0 (.FPGAClock(fpgaGlobalClock),
              .FPGATick(s_fpgaTick));

   LogisimClockComponent #(.highTicks(1),
                           .lowTicks(1),
                           .nrOfBits(1),
                           .phase(1))
      Clock_1sec (.clockBus(s_logisimClockTree0),
                  .clockTick(s_fpgaTick),
                  .globalClock(fpgaGlobalClock));

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.AM_PM(s_AM_PM),
                     .AlarmEnable(s_AlarmEnable),
                     .D_Mins(s_D_Mins),
                     .D_hours(s_D_hours),
                     .D_secs(s_D_secs),
                     .LoadAlarm(s_LoadAlarm),
                     .LoadTime(s_LoadTime),
                     .Reset(s_Reset),
                     .logisimClockTree0(s_logisimClockTree0),
                     .logisimOutputBubbles(s_logisimOutputBubbles));
endmodule
