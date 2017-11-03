module SCALER_tp();

reg VTCLK;
reg XRST;
reg IHSYNC;
reg IVSYNC;
reg IDATA_EN;
reg [9:0] IDATA0;
reg [9:0] IDATA1;
reg [9:0] IDATA2;
reg [9:0] IDATA3;
wire OHSYNC;
wire OVSYNC;
wire ODATA_EN;
wire [9:0] ODATA0;
wire [9:0] ODATA1;
wire [9:0] ODATA2;
wire [9:0] ODATA3;
reg [10:0] RG_SCL_INPUT_WIDTH;
reg [10:0] RG_SCL_INPUT_HEIGHT;
reg [15:0] RG_SCL_SCALE_H;
reg [15:0] RG_SCL_SCALE_V;
reg [20:0] RG_SCL_SCALE_H_REC;
reg [20:0] RG_SCL_SCALE_V_REC;
reg [1:0]  RG_SCL_FIRST_BAYER_COLOR;
wire [10:0] RG_SCL_OUTPUT_WIDTH;
wire [10:0] RG_SCL_OUTPUT_HEIGHT;

parameter STEP = 100;
parameter STEP2 = 200;

always begin
  #STEP VTCLK = 1;
  #STEP VTCLK = 0;
end

initial begin
VTCLK = 0; XRST = 1;
IHSYNC = 0; IVSYNC = 0; 
IDATA_EN = 0;
IDATA0 = 0; IDATA1 = 0; IDATA2 = 0; IDATA3 = 0;
RG_SCL_INPUT_WIDTH = 11'd1920;
RG_SCL_INPUT_HEIGHT = 11'd1080;
RG_SCL_SCALE_H = 16'h8000;
RG_SCL_SCALE_V = 16'h8000;
RG_SCL_SCALE_H_REC = 21'b000001000000000000000;
RG_SCL_SCALE_V_REC = 21'b000001000000000000000;
#(STEP) XRST = 0;
#(STEP2) XRST = 1;
#(STEP2) IHSYNC = 1; IVSYNC = 1;
#STEP2 IHSYNC = 0; IVSYNC = 0;
//1line
#(STEP2 * 8 + STEP2 * 960 + STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//2line
#(STEP2 * 8 + STEP2 * 960 + STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//3line
#(STEP2 * 8) IDATA_EN = 1;
#(STEP2 * 960) IDATA_EN = 0;
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//4line
#(STEP2 * 8) IDATA_EN = 1;
#(STEP2 * 960) IDATA_EN = 0;
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//5line
#(STEP2 * 8) IDATA_EN = 1;
#(STEP2 * 960) IDATA_EN = 0;
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//6line
#(STEP2 * 8) IDATA_EN = 1;
#(STEP2 * 960) IDATA_EN = 0;
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//7line
#(STEP2 * 8) IDATA_EN = 1;
#(STEP2 * 960) IDATA_EN = 0;
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
//540line
//4line
//4line
#(STEP2 * 8) 
#(STEP2 * 960)
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
#(STEP2 * 8) 
#(STEP2 * 960)
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
#(STEP2 * 8) 
#(STEP2 * 960)
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
#(STEP2 * 8) 
#(STEP2 * 960)
#(STEP2 * 24) IHSYNC = 1;
#STEP2 IHSYNC = 0;
$finish;
end

SCL_TOP SCL_TOP (
                 .VTCLK                       (VTCLK)
                ,.XRST                        (XRST)
                ,.IVSYNC                      (IVSYNC)
                ,.IHSYNC                      (IHSYNC)
                ,.IDATA_EN                    (IDATA_EN)
                ,.IDATA0                      (IDATA0)    
                ,.IDATA1                      (IDATA1)    
                ,.IDATA2                      (IDATA2)    
                ,.IDATA3                      (IDATA3)    
                ,.OVSYNC                      (OHSYNC)    
                ,.OHSYNC                      (OVSYNC)    
                ,.ODATA_EN                    (ODATA_EN)    
                ,.ODATA0                      (ODATA0)    
                ,.ODATA1                      (ODATA1)    
                ,.ODATA2                      (ODATA2)    
                ,.ODATA3                      (ODATA3)    
                ,.RG_SCL_INPUT_WIDTH          (RG_SCL_INPUT_WIDTH)    
                ,.RG_SCL_INPUT_HEIGHT         (RG_SCL_INPUT_HEIGHT)    
                ,.RG_SCL_SCALE_H              (RG_SCL_SCALE_H)    
                ,.RG_SCL_SCALE_V              (RG_SCL_SCALE_V)    
                ,.RG_SCL_SCALE_H_REC          (RG_SCL_SCALE_H_REC)    
                ,.RG_SCL_SCALE_V_REC          (RG_SCL_SCALE_V_REC)    
                ,.RG_SCL_FIRST_BAYER_COLOR    (RG_SCL_FIRST_BAYER_COLOR)    
                ,.RG_SCL_OUTPUT_WIDTH         (RG_SCL_OUTPUT_WIDTH)    
                ,.RG_SCL_OUTPUT_HEIGHT        (RG_SCL_OUTPUT_HEIGHT)   
                );

initial begin
  $monitor("a=%b, b=%b", RG_SCL_OUTPUT_WIDTH, RG_SCL_OUTPUT_HEIGHT);
  $dumpfile("SCALER.vcd");
  $dumpvars;
end

endmodule
