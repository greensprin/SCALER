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



module             SCL_TOP(
          VTCLK
         ,XRST
         ,IVSYNC
         ,IHSYNC
         ,IDATA_EN
         ,IDATA0
         ,IDATA1
         ,IDATA2
         ,IDATA3
         ,OVSYNC
         ,OHSYNC
         ,ODATA_EN
         ,ODATA0
         ,ODATA1
         ,ODATA2
         ,ODATA3
         ,RG_SCL_INPUT_WIDTH
         ,RG_SCL_INPUT_HEIGHT
         ,RG_SCL_SCALE_H
         ,RG_SCL_SCALE_V
         ,RG_SCL_SCALE_H_REC
         ,RG_SCL_SCALE_V_REC
         ,RG_SCL_FIRST_BAYER_COLOR
         ,RG_SCL_OUTPUT_WIDTH
         ,RG_SCL_OUTPUT_HEIGHT
         );



/*************************************************
INPUT , OUTPUT
*************************************************/
 input               VTCLK;                           //
 input               XRST;                            //
 input               IVSYNC;                          //
 input               IHSYNC;                          //
 input               IDATA_EN;                        //
 input     [9:0]     IDATA0;                          //
 input     [9:0]     IDATA1;                          //
 input     [9:0]     IDATA2;                          //
 input     [9:0]     IDATA3;                          //
 output              OVSYNC;                          //
 output              OHSYNC;                          //
 output              ODATA_EN;                        //
 output    [9:0]     ODATA0;                          //
 output    [9:0]     ODATA1;                          //
 output    [9:0]     ODATA2;                          //
 output    [9:0]     ODATA3;                          //
 input     [10:0]    RG_SCL_INPUT_WIDTH;              //
 input     [10:0]    RG_SCL_INPUT_HEIGHT;             //
 input     [15:0]    RG_SCL_SCALE_H;                  //
 input     [15:0]    RG_SCL_SCALE_V;                  //
 input     [20:0]    RG_SCL_SCALE_H_REC;              //
 input     [20:0]    RG_SCL_SCALE_V_REC;              //
 input     [1:0]     RG_SCL_FIRST_BAYER_COLOR;        //
 output    [10:0]    RG_SCL_OUTPUT_WIDTH;             //
 output    [10:0]    RG_SCL_OUTPUT_HEIGHT;            //



/*************************************************
WIRE
*************************************************/
 wire      [20:0]    SCL_COSIZE_SCALE_H_REC;          //
 wire      [20:0]    SCL_COSIZE_SCALE_V_REC;          //
 wire      [9:0]     SCL_CIBLK_IBLK_H;                //
 wire      [9:0]     SCL_CIBLK_IBLK_V;                //
 wire      [9:0]     SCL_COBLK_OBLK_H;                //
 wire      [9:0]     SCL_COBLK_OBLK_V;                //
 wire      [17:0]    SCL_COTOI_OTOI_H;                //
 wire      [17:0]    SCL_COTOI_OTOI_V;                //
 wire      [17:0]    SCL_COTOI_OTOI_H_1D;             //
 wire      [17:0]    SCL_COTOI_OTOI_V_1D;             //
 wire      [9:0]     SCL_SEL4BLK_LU_H;                //
 wire      [9:0]     SCL_SEL4BLK_LU_V;                //
 wire                SCL_SEL4BLK_EXCEP_H;             //
 wire                SCL_SEL4BLK_EXCEP_V;             //
 wire      [8:0]     SCL_CDIST_ALPHA;                 //
 wire      [8:0]     SCL_CDIST_BETA;                  //
 wire      [9:0]     SCL_COPIX_OPIX0;                 //
 wire      [9:0]     SCL_COPIX_OPIX1;                 //
 wire      [9:0]     SCL_COPIX_OPIX2;                 //
 wire      [9:0]     SCL_COPIX_OPIX3;                 //
 wire                SCL_BUSY_BUSY;                   //
 wire      [39:0]    SCL_LBUFF_IPIX0;                 //
 wire      [39:0]    SCL_LBUFF_IPIX1;                 //
 wire      [39:0]    SCL_LBUFF_IPIX2;                 //
 wire      [39:0]    SCL_LBUFF_IPIX3;                 //


/*************************************************
SCL_COSIZE
*************************************************/
SCL_COSIZE         SCL_COSIZE(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.RG_SCL_INPUT_WIDTH                    (RG_SCL_INPUT_WIDTH                )
         ,.RG_SCL_INPUT_HEIGHT                   (RG_SCL_INPUT_HEIGHT               )
         ,.RG_SCL_SCALE_H                        (RG_SCL_SCALE_H                    )
         ,.RG_SCL_SCALE_V                        (RG_SCL_SCALE_V                    )
         ,.RG_SCL_SCALE_H_REC                    (RG_SCL_SCALE_H_REC                )
         ,.RG_SCL_SCALE_V_REC                    (RG_SCL_SCALE_V_REC                )
         ,.RG_SCL_OUTPUT_WIDTH                   (RG_SCL_OUTPUT_WIDTH               )
         ,.RG_SCL_OUTPUT_HEIGHT                  (RG_SCL_OUTPUT_HEIGHT              )
         ,.SCL_COSIZE_SCALE_H_REC                (SCL_COSIZE_SCALE_H_REC            )
         ,.SCL_COSIZE_SCALE_V_REC                (SCL_COSIZE_SCALE_V_REC            )
         );


/*************************************************
SCL_CIBLK
*************************************************/
SCL_CIBLK          SCL_CIBLK(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.IHSYNC                                (IHSYNC                            )
         ,.IVSYNC                                (IVSYNC                            )
         ,.IDATA_EN                              (IDATA_EN                          )
         ,.SCL_CIBLK_IBLK_H                      (SCL_CIBLK_IBLK_H                  )
         ,.SCL_CIBLK_IBLK_V                      (SCL_CIBLK_IBLK_V                  )
         );

/*************************************************
SCL_COBLK
*************************************************/
SCL_COBLK          SCL_COBLK(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.RG_SCL_OUTPUT_WIDTH                   (RG_SCL_OUTPUT_WIDTH               )
         ,.RG_SCL_OUTPUT_HEIGHT                  (RG_SCL_OUTPUT_HEIGHT              )
         ,.IHSYNC                                (IHSYNC                            )
         ,.IVSYNC                                (IVSYNC                            )
         ,.SCL_BUSY_BUSY                         (SCL_BUSY_BUSY                     )
         ,.SCL_COBLK_OBLK_H                      (SCL_COBLK_OBLK_H                  )
         ,.SCL_COBLK_OBLK_V                      (SCL_COBLK_OBLK_V                  )
         );


/*************************************************
SCL_COTOI
*************************************************/
SCL_COTOI          SCL_COTOI(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.RG_SCL_INPUT_WIDTH                    (RG_SCL_INPUT_WIDTH                )
         ,.RG_SCL_INPUT_HEIGHT                   (RG_SCL_INPUT_HEIGHT               )
         ,.SCL_COBLK_OBLK_H                      (SCL_COBLK_OBLK_H                  )
         ,.SCL_COBLK_OBLK_V                      (SCL_COBLK_OBLK_V                  )
         ,.SCL_BUSY_BUSY                         (SCL_BUSY_BUSY                     )
         ,.SCL_COSIZE_SCALE_H_REC                (SCL_COSIZE_SCALE_H_REC            )
         ,.SCL_COSIZE_SCALE_V_REC                (SCL_COSIZE_SCALE_V_REC            )
         ,.SCL_COTOI_OTOI_H                      (SCL_COTOI_OTOI_H                  )
         ,.SCL_COTOI_OTOI_V                      (SCL_COTOI_OTOI_V                  )
         ,.SCL_COTOI_OTOI_H_1D                   (SCL_COTOI_OTOI_H_1D               )
         ,.SCL_COTOI_OTOI_V_1D                   (SCL_COTOI_OTOI_V_1D               )
         );


/*************************************************
SCL_SEL4BLK
*************************************************/
SCL_SEL4BLK        SCL_SEL4BLK(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.RG_SCL_INPUT_WIDTH                    (RG_SCL_INPUT_WIDTH                )
         ,.RG_SCL_INPUT_HEIGHT                   (RG_SCL_INPUT_HEIGHT               )
         ,.SCL_COTOI_OTOI_H                      (SCL_COTOI_OTOI_H                  )
         ,.SCL_COTOI_OTOI_V                      (SCL_COTOI_OTOI_V                  )
         ,.SCL_BUSY_BUSY                         (SCL_BUSY_BUSY                     )
         ,.SCL_SEL4BLK_LU_H                      (SCL_SEL4BLK_LU_H                  )
         ,.SCL_SEL4BLK_LU_V                      (SCL_SEL4BLK_LU_V                  )
         ,.SCL_SEL4BLK_EXCEP_H                   (SCL_SEL4BLK_EXCEP_H               )
         ,.SCL_SEL4BLK_EXCEP_V                   (SCL_SEL4BLK_EXCEP_V               )
         );


/*************************************************
SCL_CDIST
*************************************************/
SCL_CDIST          SCL_CDIST(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_COTOI_OTOI_H_1D                   (SCL_COTOI_OTOI_H_1D               )
         ,.SCL_COTOI_OTOI_V_1D                   (SCL_COTOI_OTOI_V_1D               )
         ,.SCL_SEL4BLK_LU_H                      (SCL_SEL4BLK_LU_H                  )
         ,.SCL_SEL4BLK_LU_V                      (SCL_SEL4BLK_LU_V                  )
         ,.SCL_CDIST_ALPHA                       (SCL_CDIST_ALPHA                   )
         ,.SCL_CDIST_BETA                        (SCL_CDIST_BETA                    )
         );


/*************************************************
SCL_COPIX0
*************************************************/
SCL_COPIX          SCL_COPIX0(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_CDIST_ALPHA                       (SCL_CDIST_ALPHA                   )
         ,.SCL_CDIST_BETA                        (SCL_CDIST_BETA                    )
         ,.SCL_LBUFF_IPIX0                       (SCL_LBUFF_IPIX0                   )
         ,.SCL_LBUFF_IPIX1                       (SCL_LBUFF_IPIX1                   )
         ,.SCL_LBUFF_IPIX2                       (SCL_LBUFF_IPIX2                   )
         ,.SCL_LBUFF_IPIX3                       (SCL_LBUFF_IPIX3                   )
         ,.ODATA_EN                              (ODATA_EN                          )
         ,.SCL_COPIX_OPIX                        (SCL_COPIX_OPIX0                   )
         );


/*************************************************
SCL_COPIX1
*************************************************/
SCL_COPIX          SCL_COPIX1(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_CDIST_ALPHA                       (SCL_CDIST_ALPHA                   )
         ,.SCL_CDIST_BETA                        (SCL_CDIST_BETA                    )
         ,.SCL_LBUFF_IPIX0                       (SCL_LBUFF_IPIX0                   )
         ,.SCL_LBUFF_IPIX1                       (SCL_LBUFF_IPIX1                   )
         ,.SCL_LBUFF_IPIX2                       (SCL_LBUFF_IPIX2                   )
         ,.SCL_LBUFF_IPIX3                       (SCL_LBUFF_IPIX3                   )
         ,.ODATA_EN                              (ODATA_EN                          )
         ,.SCL_COPIX_OPIX                        (SCL_COPIX_OPIX1                   )
         );


/*************************************************
SCL_COPIX2
*************************************************/
SCL_COPIX          SCL_COPIX2(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_CDIST_ALPHA                       (SCL_CDIST_ALPHA                   )
         ,.SCL_CDIST_BETA                        (SCL_CDIST_BETA                    )
         ,.SCL_LBUFF_IPIX0                       (SCL_LBUFF_IPIX0                   )
         ,.SCL_LBUFF_IPIX1                       (SCL_LBUFF_IPIX1                   )
         ,.SCL_LBUFF_IPIX2                       (SCL_LBUFF_IPIX2                   )
         ,.SCL_LBUFF_IPIX3                       (SCL_LBUFF_IPIX3                   )
         ,.ODATA_EN                              (ODATA_EN                          )
         ,.SCL_COPIX_OPIX                        (SCL_COPIX_OPIX2                   )
         );


/*************************************************
SCL_COPIX3
*************************************************/
SCL_COPIX          SCL_COPIX3(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_CDIST_ALPHA                       (SCL_CDIST_ALPHA                   )
         ,.SCL_CDIST_BETA                        (SCL_CDIST_BETA                    )
         ,.SCL_LBUFF_IPIX0                       (SCL_LBUFF_IPIX0                   )
         ,.SCL_LBUFF_IPIX1                       (SCL_LBUFF_IPIX1                   )
         ,.SCL_LBUFF_IPIX2                       (SCL_LBUFF_IPIX2                   )
         ,.SCL_LBUFF_IPIX3                       (SCL_LBUFF_IPIX3                   )
         ,.ODATA_EN                              (ODATA_EN                          )
         ,.SCL_COPIX_OPIX                        (SCL_COPIX_OPIX3                   )
         );


/*************************************************
SCL_BUSY
*************************************************/
SCL_BUSY           SCL_BUSY(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_COBLK_OBLK_H                      (SCL_COBLK_OBLK_H                  )
         ,.SCL_COBLK_OBLK_V                      (SCL_COBLK_OBLK_V                  )
         ,.SCL_SEL4BLK_LU_H                      (SCL_SEL4BLK_LU_H                  )
         ,.SCL_SEL4BLK_LU_V                      (SCL_SEL4BLK_LU_V                  )
         ,.SCL_CIBLK_IBLK_H                      (SCL_CIBLK_IBLK_H                  )
         ,.SCL_CIBLK_IBLK_V                      (SCL_CIBLK_IBLK_V                  )
         ,.RG_SCL_OUTPUT_WIDTH                   (RG_SCL_OUTPUT_WIDTH               )
         ,.RG_SCL_OUTPUT_HEIGHT                  (RG_SCL_OUTPUT_HEIGHT              )
         ,.SCL_SEL4BLK_EXCEP_H                   (SCL_SEL4BLK_EXCEP_H               )
         ,.SCL_SEL4BLK_EXCEP_V                   (SCL_SEL4BLK_EXCEP_V               )
         ,.IDATA_EN                              (IDATA_EN                          )
         ,.SCL_BUSY_BUSY                         (SCL_BUSY_BUSY                     )
         ,.ODATA_EN                              (ODATA_EN                          )
         );


/*************************************************
SCL_LBUFF
*************************************************/
SCL_LBUFF          SCL_LBUFF(
          .VTCLK                                 (VTCLK                             )
         ,.XRST                                  (XRST                              )
         ,.SCL_SEL4BLK_LU_H                      (SCL_SEL4BLK_LU_H                  )
         ,.SCL_CIBLK_IBLK_H                      (SCL_CIBLK_IBLK_H                  )
         ,.SCL_CIBLK_IBLK_V_0                    (SCL_CIBLK_IBLK_V[0]               )
         ,.IHSYNC                                (IHSYNC                            )
         ,.IVSYNC                                (IVSYNC                            )
         ,.IDATA_EN                              (IDATA_EN                          )
         ,.ODATA_EN                              (ODATA_EN                          )
         ,.SCL_SEL4BLK_EXCEP_H                   (SCL_SEL4BLK_EXCEP_H               )
         ,.SCL_SEL4BLK_EXCEP_V                   (SCL_SEL4BLK_EXCEP_V               )
         ,.IDATA0                                (IDATA0                            )
         ,.IDATA1                                (IDATA1                            )
         ,.IDATA2                                (IDATA2                            )
         ,.IDATA3                                (IDATA3                            )
         ,.SCL_LBUFF_IPIX0                       (SCL_LBUFF_IPIX0                   )
         ,.SCL_LBUFF_IPIX1                       (SCL_LBUFF_IPIX1                   )
         ,.SCL_LBUFF_IPIX2                       (SCL_LBUFF_IPIX2                   )
         ,.SCL_LBUFF_IPIX3                       (SCL_LBUFF_IPIX3                   )
         ,.OHSYNC                                (OHSYNC                            )
         ,.OVSYNC                                (OVSYNC                            )
         );



endmodule


//=================================================
// $Log$
//
//=================================================
