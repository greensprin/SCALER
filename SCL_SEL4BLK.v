//==========================================================
//  Title     : SONY Mobile CIS
//  Comment   : DUBE block
//  Project   : 
//
//  File Name : 
//
//
//  CONFIDENTIAL AND PROPRIETARY PRODUCT OF SONY CORPORATION
//  Copyright (c) 2015 Sony Corporation.  All Rights Reserved.
//
//  Reference File Name     : (Generated by Excel)
//  Reference File Revision : (none)
//  Reference File Project  : 
//==========================================================



module                  SCL_SEL4BLK(
     VTCLK
    ,XRST
    ,RG_SCL_INPUT_WIDTH
    ,RG_SCL_INPUT_HEIGHT
    ,SCL_COTOI_OTOI_H
    ,SCL_COTOI_OTOI_V
    ,SCL_BUSY_BUSY
    ,SCL_SEL4BLK_LU_H
    ,SCL_SEL4BLK_LU_V
    ,SCL_SEL4BLK_EXCEP_H
    ,SCL_SEL4BLK_EXCEP_V
);


/*************************************************
INPUT , OUTPUT
*************************************************/
input           VTCLK;                          // 
input           XRST;                           // 
input   [10:0]  RG_SCL_INPUT_WIDTH;             // 
input   [10:0]  RG_SCL_INPUT_HEIGHT;            // 
input   [17:0]  SCL_COTOI_OTOI_H;               // 
input   [17:0]  SCL_COTOI_OTOI_V;               // 
input           SCL_BUSY_BUSY;                  // 
output  [9:0]   SCL_SEL4BLK_LU_H;               // 
output  [9:0]   SCL_SEL4BLK_LU_V;               // 
output          SCL_SEL4BLK_EXCEP_H;            // 
output          SCL_SEL4BLK_EXCEP_V;            // 

/*************************************************
reg, wire
*************************************************/
reg [9:0] SCL_SEL4BLK_LU_H;
reg [9:0] SCL_SEL4BLK_LU_V;
reg SCL_SEL4BLK_EXCEP_H;
reg SCL_SEL4BLK_EXCEP_V;
wire [9:0] in_hgt_div2;
wire [9:0] in_wdt_div2;
wire [17:0] SCL_COTOI_OTOI_H_sub2;
wire [17:0] SCL_COTOI_OTOI_V_sub2;

assign in_hgt_div2 = RG_SCL_INPUT_HEIGHT >> 1;
assign in_wdt_div2 = RG_SCL_INPUT_WIDTH >> 1;
assign SCL_COTOI_OTOI_H_sub2 = SCL_COTOI_OTOI_H - 8'b10000000;
assign SCL_COTOI_OTOI_V_sub2 = SCL_COTOI_OTOI_V - 8'b10000000;

always @(posedge VTCLK or negedge XRST) begin

  if (XRST == 1'b0) begin
    SCL_SEL4BLK_LU_H <= 0;
    SCL_SEL4BLK_LU_V <= 0;
    SCL_SEL4BLK_EXCEP_H <= 0;
    SCL_SEL4BLK_EXCEP_V <= 0;
  end else begin
    if (~SCL_BUSY_BUSY == 1'b1) begin
      if (SCL_COTOI_OTOI_H >= {({in_wdt_div2, 1'b0} - 1'b1), 7'b0}) begin
        SCL_SEL4BLK_LU_H <= in_wdt_div2 - 2'b10;
        SCL_SEL4BLK_EXCEP_H <= 1;
      end else begin
        SCL_SEL4BLK_LU_H <= SCL_COTOI_OTOI_H_sub2[17:8];
      end

      if (SCL_COTOI_OTOI_V >= {({in_hgt_div2, 1'b0} - 1'b1), 7'b0}) begin
        SCL_SEL4BLK_LU_V <= in_hgt_div2 - 2'b10;
        SCL_SEL4BLK_EXCEP_V <= 1;
      end else begin
        SCL_SEL4BLK_LU_V <= SCL_COTOI_OTOI_V_sub2[17:8];
      end
    end else begin
      SCL_SEL4BLK_LU_H <= SCL_SEL4BLK_LU_H;
      SCL_SEL4BLK_LU_V <= SCL_SEL4BLK_LU_V;
      SCL_SEL4BLK_EXCEP_H <= 0;
      SCL_SEL4BLK_EXCEP_V <= 0;
    end
  end

end

endmodule
