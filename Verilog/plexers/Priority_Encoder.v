

/* module Priority_Encoder( address,
                         enable,
                         enableOut,
                         groupSelect,
                         inputVector );

   //*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   //*******************************************************************************
   parameter nrOfInputBits = 1;
   parameter nrOfSelectBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************
   input                     enable;
   input [nrOfInputBits-1:0] inputVector;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************
   output [nrOfSelectBits-1:0] address;
   output                      enableOut;
   output                      groupSelect;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************
   wire [5:0]  s_address;
   wire        s_inIsZero;
   wire [63:0] s_selectVector0;
   wire [31:0] s_selectVector1;
   wire [15:0] s_selectVector2;
   wire [7:0]  s_selectVector3;
   wire [3:0]  s_selectVector4;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************
   assign groupSelect = ~s_inIsZero&enable;
   assign enableOut = s_inIsZero&enable;
   assign address = (~enable) ? 0 : s_address[nrOfSelectBits-1:0];
   assign s_inIsZero = (inputVector == 0) ? 1'b1 : 1'b0;

   assign s_selectVector0[63:nrOfSelectBits] = 0;
   assign s_selectVector0[nrOfSelectBits-1:0] = inputVector;
   assign s_address[5] = (s_selectVector0[63:32] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector1 = (s_selectVector0[63:32] == 0) ? s_selectVector0[31:0] : s_selectVector0[63:32];
   assign s_address[4] = (s_selectVector1[31:16] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector2 = (s_selectVector1[31:16] == 0) ? s_selectVector1[15:0] : s_selectVector1[31:16];
   assign s_address[3] = (s_selectVector2[15:8] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector3 = (s_selectVector2[15:8] == 0) ? s_selectVector2[7:0] : s_selectVector2[15:8];
   assign s_address[2] = (s_selectVector3[7:4] == 0) ? 1'b0 : 1'b1;
   assign s_selectVector4 = (s_selectVector3[7:4] == 0) ? s_selectVector3[3:0] : s_selectVector2[7:4];
   assign s_address[1] = (s_selectVector4[3:2] == 0) ? 1'b0 : 1'b1;
   assign s_address[0] = (s_selectVector4[3:2] == 0) ? s_selectVector4[1] : s_selectVector4[3];

endmodule */
    
module priority_encoder(A0,A1,Y0,Y1,Y2,Y3);

input Y3, Y2, Y1, Y0;
output A0, A1;

assign A0 =  (Y3) ? 1 :
             (Y2) ? 1 :
             (Y1) ? 0 :
             (Y0) ? 0 : 1'b0;

  assign A1 =(Y3) ? 1 :
             (Y2) ? 0 :
             (Y1) ? 1 :
             (Y0) ? 0 : 1'b0;

endmodule
