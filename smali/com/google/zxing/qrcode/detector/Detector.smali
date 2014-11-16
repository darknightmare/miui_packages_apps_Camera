.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 46
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 7
    .parameter "pattern"
    .parameter "otherPattern"

    .prologue
    const/high16 v6, 0x40e0

    .line 236
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 240
    .local v0, moduleSizeEst1:F
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v1

    .line 244
    .local v1, moduleSizeEst2:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    div-float v2, v1, v6

    .line 252
    :goto_0
    return v2

    .line 247
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    div-float v2, v0, v6

    goto :goto_0

    .line 252
    :cond_1
    add-float v2, v0, v1

    const/high16 v3, 0x4160

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 4
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "moduleSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 202
    .local v2, tltrCentersDimension:I
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 203
    .local v1, tlblCentersDimension:I
    add-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x7

    .line 204
    .local v0, dimension:I
    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    return v0

    .line 206
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 207
    goto :goto_0

    .line 210
    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 17
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"
    .parameter "alignmentPattern"
    .parameter "dimension"

    .prologue
    .line 148
    move/from16 v0, p4

    int-to-float v1, v0

    const/high16 v2, 0x4060

    sub-float v3, v1, v2

    .line 153
    .local v3, dimMinusThree:F
    if-eqz p3, :cond_0

    .line 154
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    .line 155
    .local v13, bottomRightX:F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    .line 156
    .local v14, bottomRightY:F
    const/high16 v1, 0x4040

    sub-float v5, v3, v1

    .line 157
    .local v5, sourceBottomRightX:F
    move v6, v5

    .line 166
    .local v6, sourceBottomRightY:F
    :goto_0
    const/high16 v1, 0x4060

    const/high16 v2, 0x4060

    const/high16 v4, 0x4060

    const/high16 v7, 0x4060

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move v8, v3

    invoke-static/range {v1 .. v16}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    return-object v1

    .line 160
    .end local v5           #sourceBottomRightX:F
    .end local v6           #sourceBottomRightY:F
    .end local v13           #bottomRightX:F
    .end local v14           #bottomRightY:F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float v13, v1, v2

    .line 161
    .restart local v13       #bottomRightX:F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float v14, v1, v2

    .line 162
    .restart local v14       #bottomRightY:F
    move v5, v3

    .line 163
    .restart local v5       #sourceBottomRightX:F
    move v6, v3

    .restart local v6       #sourceBottomRightY:F
    goto :goto_0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .parameter "image"
    .parameter "transform"
    .parameter "dimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 190
    .local v0, sampler:Lcom/google/zxing/common/GridSampler;
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 19
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 303
    sub-int v17, p4, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    sub-int v18, p3, p1

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/4 v10, 0x1

    .line 304
    .local v10, steep:Z
    :goto_0
    if-eqz v10, :cond_0

    .line 305
    move/from16 v11, p1

    .line 306
    .local v11, temp:I
    move/from16 p1, p2

    .line 307
    move/from16 p2, v11

    .line 308
    move/from16 v11, p3

    .line 309
    move/from16 p3, p4

    .line 310
    move/from16 p4, v11

    .line 313
    .end local v11           #temp:I
    :cond_0
    sub-int v17, p3, p1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 314
    .local v4, dx:I
    sub-int v17, p4, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 315
    .local v5, dy:I
    neg-int v0, v4

    move/from16 v17, v0

    shr-int/lit8 v6, v17, 0x1

    .line 316
    .local v6, error:I
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const/4 v14, 0x1

    .line 317
    .local v14, xstep:I
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    const/16 v16, 0x1

    .line 320
    .local v16, ystep:I
    :goto_2
    const/4 v9, 0x0

    .line 322
    .local v9, state:I
    add-int v13, p3, v14

    .line 323
    .local v13, xLimit:I
    move/from16 v12, p1

    .local v12, x:I
    move/from16 v15, p2

    .local v15, y:I
    :goto_3
    if-eq v12, v13, :cond_9

    .line 324
    if-eqz v10, :cond_4

    move v7, v15

    .line 325
    .local v7, realX:I
    :goto_4
    if-eqz v10, :cond_5

    move v8, v12

    .line 330
    .local v8, realY:I
    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 331
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v9, v0, :cond_7

    .line 332
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v15, v0, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v17

    .line 353
    .end local v7           #realX:I
    .end local v8           #realY:I
    :goto_7
    return v17

    .line 303
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #error:I
    .end local v9           #state:I
    .end local v10           #steep:Z
    .end local v12           #x:I
    .end local v13           #xLimit:I
    .end local v14           #xstep:I
    .end local v15           #y:I
    .end local v16           #ystep:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 316
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v6       #error:I
    .restart local v10       #steep:Z
    :cond_2
    const/4 v14, -0x1

    goto :goto_1

    .line 317
    .restart local v14       #xstep:I
    :cond_3
    const/16 v16, -0x1

    goto :goto_2

    .restart local v9       #state:I
    .restart local v12       #x:I
    .restart local v13       #xLimit:I
    .restart local v15       #y:I
    .restart local v16       #ystep:I
    :cond_4
    move v7, v12

    .line 324
    goto :goto_4

    .restart local v7       #realX:I
    :cond_5
    move v8, v15

    .line 325
    goto :goto_5

    .line 330
    .restart local v8       #realY:I
    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    .line 334
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 337
    :cond_8
    add-int/2addr v6, v5

    .line 338
    if-lez v6, :cond_b

    .line 339
    move/from16 v0, p4

    if-ne v15, v0, :cond_a

    .line 349
    .end local v7           #realX:I
    .end local v8           #realY:I
    :cond_9
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v9, v0, :cond_c

    .line 350
    add-int v17, p3, v14

    move/from16 v0, v17

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v17

    goto :goto_7

    .line 342
    .restart local v7       #realX:I
    .restart local v8       #realY:I
    :cond_a
    add-int v15, v15, v16

    .line 343
    sub-int/2addr v6, v4

    .line 323
    :cond_b
    add-int/2addr v12, v14

    goto :goto_3

    .line 353
    .end local v7           #realX:I
    .end local v8           #realY:I
    :cond_c
    const/high16 v17, 0x7fc0

    goto :goto_7
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 6
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v2

    .line 265
    .local v2, result:F
    const/high16 v3, 0x3f80

    .line 266
    .local v3, scale:F
    sub-int v4, p3, p1

    sub-int v0, p1, v4

    .line 267
    .local v0, otherToX:I
    if-gez v0, :cond_2

    .line 268
    int-to-float v4, p1

    sub-int v5, p1, v0

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 269
    const/4 v0, 0x0

    .line 274
    :cond_0
    :goto_0
    int-to-float v4, p2

    sub-int v5, p4, p2

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 276
    .local v1, otherToY:I
    const/high16 v3, 0x3f80

    .line 277
    if-gez v1, :cond_3

    .line 278
    int-to-float v4, p2

    sub-int v5, p2, v1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 279
    const/4 v1, 0x0

    .line 284
    :cond_1
    :goto_1
    int-to-float v4, p1

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 286
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v4

    add-float/2addr v2, v4

    .line 289
    const/high16 v4, 0x3f80

    sub-float v4, v2, v4

    return v4

    .line 270
    .end local v1           #otherToY:I
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    int-to-float v4, v4

    sub-int v5, v0, p1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 272
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 280
    .restart local v1       #otherToY:I
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    int-to-float v4, v4

    sub-int v5, v1, p2

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 282
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 2
    .parameter "topLeft"
    .parameter "topRight"
    .parameter "bottomLeft"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 79
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 80
    .local v0, finder:Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v1

    .line 82
    .local v1, info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    invoke-virtual {p0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v2

    return-object v2

    .line 76
    .end local v0           #finder:Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .end local v1           #info:Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_0
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPointCallback;

    goto :goto_0
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 11
    .parameter "overallEstModuleSize"
    .parameter "estAlignmentX"
    .parameter "estAlignmentY"
    .parameter "allowanceFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4040

    .line 374
    mul-float v1, p4, p1

    float-to-int v10, v1

    .line 375
    .local v10, allowance:I
    sub-int v1, p2, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 376
    .local v2, alignmentAreaLeftX:I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p2, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 377
    .local v9, alignmentAreaRightX:I
    sub-int v1, v9, v2

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 378
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 381
    :cond_0
    sub-int v1, p3, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 382
    .local v3, alignmentAreaTopY:I
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, p3, v10

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 383
    .local v8, alignmentAreaBottomY:I
    sub-int v1, v8, v3

    int-to-float v1, v1

    mul-float v4, p1, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 384
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 387
    :cond_1
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v4, v9, v2

    sub-int v5, v8, v3

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 396
    .local v0, alignmentFinder:Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v1

    return-object v1
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 23
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v17

    .line 89
    .local v17, topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v18

    .line 90
    .local v18, topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    .line 92
    .local v5, bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v13

    .line 93
    .local v13, moduleSize:F
    const/high16 v20, 0x3f80

    cmpg-float v20, v13, v20

    if-gez v20, :cond_0

    .line 94
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v20

    throw v20

    .line 96
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v13}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v9

    .line 97
    .local v9, dimension:I
    invoke-static {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v16

    .line 98
    .local v16, provisionalVersion:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v20

    add-int/lit8 v14, v20, -0x7

    .line 100
    .local v14, modulesBetweenFPCenters:I
    const/4 v3, 0x0

    .line 102
    .local v3, alignmentPattern:Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 105
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    add-float v6, v20, v21

    .line 106
    .local v6, bottomRightX:F
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    add-float v7, v20, v21

    .line 110
    .local v7, bottomRightY:F
    const/high16 v20, 0x3f80

    const/high16 v21, 0x4040

    int-to-float v0, v14

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v8, v20, v21

    .line 111
    .local v8, correctionToTopLeft:F
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v21

    sub-float v21, v6, v21

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    .line 112
    .local v10, estAlignmentX:I
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v21

    sub-float v21, v7, v21

    mul-float v21, v21, v8

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v11, v0

    .line 115
    .local v11, estAlignmentY:I
    const/4 v12, 0x4

    .local v12, i:I
    :goto_0
    const/16 v20, 0x10

    move/from16 v0, v20

    if-gt v12, v0, :cond_1

    .line 117
    int-to-float v0, v12

    move/from16 v20, v0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v10, v11, v1}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    .end local v6           #bottomRightX:F
    .end local v7           #bottomRightY:F
    .end local v8           #correctionToTopLeft:F
    .end local v10           #estAlignmentX:I
    .end local v11           #estAlignmentY:I
    .end local v12           #i:I
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v3, v9}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v19

    .line 132
    .local v19, transform:Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 135
    .local v4, bits:Lcom/google/zxing/common/BitMatrix;
    if-nez v3, :cond_2

    .line 136
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v15, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v20, 0x0

    aput-object v5, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v18, v15, v20

    .line 140
    .local v15, points:[Lcom/google/zxing/ResultPoint;
    :goto_1
    new-instance v20, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v15}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v20

    .line 122
    .end local v4           #bits:Lcom/google/zxing/common/BitMatrix;
    .end local v15           #points:[Lcom/google/zxing/ResultPoint;
    .end local v19           #transform:Lcom/google/zxing/common/PerspectiveTransform;
    .restart local v6       #bottomRightX:F
    .restart local v7       #bottomRightY:F
    .restart local v8       #correctionToTopLeft:F
    .restart local v10       #estAlignmentX:I
    .restart local v11       #estAlignmentY:I
    .restart local v12       #i:I
    :catch_0
    move-exception v20

    .line 115
    shl-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 138
    .end local v6           #bottomRightX:F
    .end local v7           #bottomRightY:F
    .end local v8           #correctionToTopLeft:F
    .end local v10           #estAlignmentX:I
    .end local v11           #estAlignmentY:I
    .end local v12           #i:I
    .restart local v4       #bits:Lcom/google/zxing/common/BitMatrix;
    .restart local v19       #transform:Lcom/google/zxing/common/PerspectiveTransform;
    :cond_2
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v15, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v20, 0x0

    aput-object v5, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v18, v15, v20

    const/16 v20, 0x3

    aput-object v3, v15, v20

    .restart local v15       #points:[Lcom/google/zxing/ResultPoint;
    goto :goto_1
.end method