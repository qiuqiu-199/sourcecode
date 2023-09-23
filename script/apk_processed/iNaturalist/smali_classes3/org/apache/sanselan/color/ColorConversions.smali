.class public abstract Lorg/apache/sanselan/color/ColorConversions;
.super Ljava/lang/Object;
.source "ColorConversions.java"


# static fields
.field private static final ref_X:D = 95.047

.field private static final ref_Y:D = 100.0

.field private static final ref_Z:D = 108.883


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCIELCHtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 9

    .line 830
    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v5, v0, p2

    .line 831
    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double v7, p4, p2

    .line 833
    new-instance p2, Lorg/apache/sanselan/color/ColorCIELab;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/sanselan/color/ColorCIELab;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELCHtoCIELab(Lorg/apache/sanselan/color/ColorCIELCH;)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 6

    .line 822
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELCH;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELCH;->C:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELCH;->H:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELCHtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object p0

    return-object p0
.end method

.method public static final convertCIELabtoARGBTest(III)I
    .locals 23

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 706
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v6

    move/from16 v6, p1

    int-to-double v6, v6

    const-wide v8, 0x407f400000000000L    # 500.0

    .line 707
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    move/from16 v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    .line 708
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    sub-double v8, v0, v8

    .line 710
    invoke-static {v6, v7}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v10

    .line 711
    invoke-static {v0, v1}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v12

    .line 712
    invoke-static {v8, v9}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v14

    const-wide v16, 0x401f25e353f7ced9L    # 7.787

    const-wide v18, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v20, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v22, v12, v20

    if-lez v22, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    sub-double v0, v0, v18

    div-double v12, v0, v16

    :goto_0
    cmpl-double v0, v10, v20

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    sub-double v6, v6, v18

    div-double v10, v6, v16

    :goto_1
    cmpl-double v0, v14, v20

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    sub-double v8, v8, v18

    div-double v14, v8, v16

    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v10, v10, v0

    mul-double v12, v12, v2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double v14, v14, v0

    div-double/2addr v10, v2

    div-double/2addr v12, v2

    div-double/2addr v14, v2

    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v0, v0, v10

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double v2, v2, v12

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double v2, v2, v14

    add-double/2addr v0, v2

    const-wide v2, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v2, v2, v10

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v6, v6, v12

    add-double/2addr v2, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double v6, v6, v14

    add-double/2addr v2, v6

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v10, v10, v6

    const-wide v6, -0x4035e353f7ced917L    # -0.204

    mul-double v12, v12, v6

    add-double/2addr v10, v12

    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v14, v14, v6

    add-double/2addr v10, v14

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v12, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v16, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v18, v0, v16

    if-lez v18, :cond_3

    .line 750
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v14

    sub-double/2addr v0, v8

    goto :goto_3

    :cond_3
    mul-double v0, v0, v6

    :goto_3
    cmpl-double v18, v2, v16

    if-lez v18, :cond_4

    .line 754
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v14

    sub-double/2addr v2, v8

    goto :goto_4

    :cond_4
    mul-double v2, v2, v6

    :goto_4
    cmpl-double v18, v10, v16

    if-lez v18, :cond_5

    .line 759
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v14

    sub-double/2addr v6, v8

    goto :goto_5

    :cond_5
    mul-double v6, v6, v10

    :goto_5
    mul-double v8, v0, v4

    mul-double v10, v2, v4

    mul-double v12, v6, v4

    .line 768
    invoke-static/range {v8 .. v13}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertCIELabtoCIELCH(DDD)Lorg/apache/sanselan/color/ColorCIELCH;
    .locals 9

    .line 806
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 811
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/sanselan/color/ColorConversions;->radian_2_degree(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    goto :goto_0

    .line 814
    :goto_1
    invoke-static {p2, p3}, Lorg/apache/sanselan/color/ColorConversions;->square(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->square(D)D

    move-result-wide p4

    add-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 817
    new-instance p2, Lorg/apache/sanselan/color/ColorCIELCH;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/sanselan/color/ColorCIELCH;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELabtoCIELCH(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorCIELCH;
    .locals 6

    .line 801
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoCIELCH(DDD)Lorg/apache/sanselan/color/ColorCIELCH;

    move-result-object p0

    return-object p0
.end method

.method public static final convertCIELabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 17

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v0, p0, v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L    # 500.0

    div-double v2, p2, v2

    add-double/2addr v2, v0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    div-double v4, p4, v4

    sub-double v4, v0, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 230
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x401f25e353f7ced9L    # 7.787

    const-wide v12, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v8, v14

    if-lez v16, :cond_0

    .line 231
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    sub-double/2addr v0, v12

    div-double/2addr v0, v10

    .line 234
    :goto_0
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v16, v8, v14

    if-lez v16, :cond_1

    .line 235
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    sub-double/2addr v2, v12

    div-double/2addr v2, v10

    .line 238
    :goto_1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v16, v8, v14

    if-lez v16, :cond_2

    .line 239
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    sub-double/2addr v4, v12

    div-double/2addr v4, v10

    :goto_2
    const-wide v6, 0x4057c3020c49ba5eL    # 95.047

    mul-double v9, v2, v6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v11, v0, v2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double v13, v4, v0

    .line 247
    new-instance v0, Lorg/apache/sanselan/color/ColorXYZ;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertCIELabtoXYZ(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6

    .line 221
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELuvtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 19

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double v2, p0, v2

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 898
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    .line 899
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    sub-double/2addr v2, v6

    const-wide v6, 0x401f25e353f7ced9L    # 7.787

    div-double/2addr v2, v6

    :goto_0
    const-wide v6, 0x3fc952d0bcba2702L    # 0.19783982482140777

    const-wide v8, 0x3fddf938d427f3b1L    # 0.46833630293240974

    const-wide/high16 v10, 0x402a000000000000L    # 13.0

    mul-double v0, p0, v10

    div-double v10, p2, v0

    add-double/2addr v10, v6

    div-double v0, p4, v0

    add-double/2addr v0, v8

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v15, v2, v6

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v2, v2, v15

    mul-double v6, v2, v10

    neg-double v6, v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    sub-double v8, v10, v8

    mul-double v8, v8, v0

    mul-double v10, v10, v0

    sub-double/2addr v8, v10

    div-double v13, v6, v8

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    mul-double v6, v6, v0

    mul-double v6, v6, v15

    sub-double/2addr v2, v6

    mul-double v6, v0, v13

    sub-double/2addr v2, v6

    mul-double v0, v0, v4

    div-double v17, v2, v0

    .line 916
    new-instance v0, Lorg/apache/sanselan/color/ColorXYZ;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v0
.end method

.method public static convertCIELuvtoXYZ(Lorg/apache/sanselan/color/ColorCIELuv;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6

    .line 890
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELuv;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELuv;->u:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELuv;->v:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELuvtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object p0

    return-object p0
.end method

.method public static final convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;
    .locals 8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p6

    mul-double v4, p0, v2

    add-double/2addr v4, p6

    mul-double v6, p2, v2

    add-double/2addr v6, p6

    mul-double v2, v2, p4

    add-double v0, v2, p6

    .line 428
    new-instance v2, Lorg/apache/sanselan/color/ColorCMY;

    move-object p0, v2

    move-wide p1, v4

    move-wide p3, v6

    move-wide p5, v0

    invoke-direct/range {p0 .. p6}, Lorg/apache/sanselan/color/ColorCMY;-><init>(DDD)V

    return-object v2
.end method

.method public static final convertCMYKtoCMY(Lorg/apache/sanselan/color/ColorCMYK;)Lorg/apache/sanselan/color/ColorCMY;
    .locals 8

    .line 416
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCMYK;->C:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCMYK;->M:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCMYK;->Y:D

    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMYK;->K:D

    invoke-static/range {v0 .. v7}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object p0

    return-object p0
.end method

.method public static final convertCMYKtoRGB(IIII)I
    .locals 12

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 434
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v0, v2

    int-to-double p0, p1

    .line 435
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, p0, v2

    int-to-double p0, p2

    .line 436
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, p0, v2

    int-to-double p0, p3

    .line 437
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, p0, v2

    .line 439
    invoke-static/range {v4 .. v11}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I

    move-result p0

    return p0
.end method

.method public static final convertCMYKtoRGB_old(IIII)I
    .locals 0

    add-int/2addr p0, p3

    rsub-int p0, p0, 0xff

    add-int/2addr p1, p3

    rsub-int p1, p1, 0xff

    add-int/2addr p2, p3

    rsub-int p2, p2, 0xff

    .line 687
    invoke-static {p0, p1, p2}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(III)I

    move-result p0

    return p0
.end method

.method public static final convertCMYtoCMYK(Lorg/apache/sanselan/color/ColorCMY;)Lorg/apache/sanselan/color/ColorCMYK;
    .locals 20

    move-object/from16 v0, p0

    .line 387
    iget-wide v1, v0, Lorg/apache/sanselan/color/ColorCMY;->C:D

    .line 388
    iget-wide v3, v0, Lorg/apache/sanselan/color/ColorCMY;->M:D

    .line 389
    iget-wide v5, v0, Lorg/apache/sanselan/color/ColorCMY;->Y:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v7

    if-gez v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmpg-double v0, v3, v9

    if-gez v0, :cond_1

    move-wide v9, v3

    :cond_1
    cmpg-double v0, v5, v9

    if-gez v0, :cond_2

    move-wide/from16 v18, v5

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v9

    :goto_1
    const-wide/16 v9, 0x0

    cmpl-double v0, v18, v7

    if-nez v0, :cond_3

    move-wide v12, v9

    move-wide v14, v12

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    sub-double v1, v1, v18

    sub-double v7, v7, v18

    div-double/2addr v1, v7

    sub-double v3, v3, v18

    div-double/2addr v3, v7

    sub-double v5, v5, v18

    div-double/2addr v5, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 411
    :goto_2
    new-instance v0, Lorg/apache/sanselan/color/ColorCMYK;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/apache/sanselan/color/ColorCMYK;-><init>(DDDD)V

    return-object v0
.end method

.method public static final convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I
    .locals 12

    .line 376
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCMY;->C:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v6, v0, v4

    .line 377
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCMY;->M:D

    sub-double v0, v2, v0

    mul-double v8, v0, v4

    .line 378
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCMY;->Y:D

    sub-double/2addr v2, v0

    mul-double v10, v2, v4

    .line 380
    invoke-static/range {v6 .. v11}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHSLtoRGB(DDD)I
    .locals 20

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/16 v4, 0x0

    cmpl-double v8, p2, v4

    if-nez v8, :cond_0

    mul-double v0, p4, v6

    move-wide v2, v0

    move-wide v8, v2

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, p4, v4

    if-gez v8, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v0, p2, v4

    mul-double v0, v0, p4

    move-wide v14, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    add-double v4, p4, p2

    mul-double v0, p2, p4

    sub-double/2addr v4, v0

    move-wide v14, v4

    :goto_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p4

    sub-double v16, v0, v14

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v12, p0, v18

    move-wide/from16 v8, v16

    move-wide v10, v14

    .line 533
    invoke-static/range {v8 .. v13}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v0

    mul-double v8, v0, v6

    move-wide/from16 v0, v16

    move-wide v2, v14

    move-wide/from16 v4, p0

    .line 534
    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v0

    mul-double v0, v0, v6

    sub-double v2, p0, v18

    move-wide/from16 p0, v16

    move-wide/from16 p2, v14

    move-wide/from16 p4, v2

    .line 535
    invoke-static/range {p0 .. p5}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v2

    mul-double v2, v2, v6

    :goto_1
    move-wide/from16 p0, v8

    move-wide/from16 p2, v0

    move-wide/from16 p4, v2

    .line 538
    invoke-static/range {p0 .. p5}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSLtoRGB(Lorg/apache/sanselan/color/ColorHSL;)I
    .locals 6

    .line 509
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHSL;->H:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHSL;->S:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHSL;->L:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHSLtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHSVtoRGB(DDD)I
    .locals 20

    const-wide/16 v4, 0x0

    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v8, p2, v4

    if-nez v8, :cond_0

    mul-double v0, p4, v6

    move-wide v2, v0

    move-wide v4, v2

    goto/16 :goto_2

    :cond_0
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v10, p0, v8

    cmpl-double v12, v10, v8

    if-nez v12, :cond_1

    move-wide v10, v4

    .line 628
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, p2

    mul-double v14, v14, p4

    sub-double/2addr v10, v8

    mul-double v16, p2, v10

    sub-double v16, v12, v16

    mul-double v16, v16, p4

    sub-double v10, v12, v10

    mul-double v0, p2, v10

    sub-double v0, v12, v0

    mul-double v0, v0, p4

    cmpl-double v10, v8, v4

    if-nez v10, :cond_2

    move-wide v2, v0

    move-wide v0, v14

    :goto_0
    move-wide/from16 v14, p4

    goto :goto_1

    :cond_2
    cmpl-double v4, v8, v12

    if-nez v4, :cond_3

    move-wide/from16 v2, p4

    move-wide v0, v14

    move-wide/from16 v14, v16

    goto :goto_1

    :cond_3
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v10, v8, v4

    if-nez v10, :cond_4

    move-wide/from16 v2, p4

    goto :goto_1

    :cond_4
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v10, v8, v4

    if-nez v10, :cond_5

    move-wide/from16 v0, p4

    move-wide/from16 v2, v16

    goto :goto_1

    :cond_5
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v10, v8, v4

    if-nez v10, :cond_6

    move-wide v2, v14

    move-wide v14, v0

    move-wide/from16 v0, p4

    goto :goto_1

    :cond_6
    move-wide v2, v14

    move-wide/from16 v0, v16

    goto :goto_0

    :goto_1
    mul-double v4, v14, v6

    mul-double v2, v2, v6

    mul-double v0, v0, v6

    move-wide/from16 v18, v0

    move-wide v0, v4

    move-wide/from16 v4, v18

    :goto_2
    move-wide/from16 p0, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    .line 677
    invoke-static/range {p0 .. p5}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSVtoRGB(Lorg/apache/sanselan/color/ColorHSV;)I
    .locals 6

    .line 610
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHSV;->H:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHSV;->S:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHSV;->V:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHSVtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method private static convertHuetoRGB(DDD)D
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p4, v2

    if-gez v4, :cond_0

    add-double/2addr p4, v0

    :cond_0
    cmpl-double v2, p4, v0

    if-lez v2, :cond_1

    sub-double/2addr p4, v0

    :cond_1
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v4, p4, v2

    cmpg-double v6, v4, v0

    if-gez v6, :cond_2

    sub-double/2addr p2, p0

    mul-double p2, p2, v2

    mul-double p2, p2, p4

    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p4, v4

    cmpg-double v8, v6, v0

    if-gez v8, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double v0, v0, p4

    cmpg-double v6, v0, v4

    if-gez v6, :cond_4

    sub-double/2addr p2, p0

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double p2, p2, v0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    return-wide p0

    :cond_4
    return-wide p0
.end method

.method public static final convertHunterLabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 17

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double v4, p0, v2

    const-wide v6, 0x4031800000000000L    # 17.5

    div-double v6, p2, v6

    mul-double v6, v6, p0

    div-double/2addr v6, v2

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    div-double v8, p4, v8

    mul-double v8, v8, p0

    div-double/2addr v8, v2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 277
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v6, v13

    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    div-double v11, v6, v0

    sub-double/2addr v8, v13

    neg-double v0, v8

    const-wide v2, 0x3feb1a9fbe76c8b4L    # 0.847

    div-double v15, v0, v2

    .line 281
    new-instance v0, Lorg/apache/sanselan/color/ColorXYZ;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertHunterLabtoXYZ(Lorg/apache/sanselan/color/ColorHunterLab;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6

    .line 267
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHunterLab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHunterLab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHunterLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHunterLabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object p0

    return-object p0
.end method

.method public static final convertRGBtoCMY(I)Lorg/apache/sanselan/color/ColorCMY;
    .locals 15

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    int-to-double v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v9, v6, v2

    int-to-double v0, v1

    .line 365
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    sub-double v11, v6, v0

    int-to-double v0, p0

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    sub-double v13, v6, v0

    .line 368
    new-instance p0, Lorg/apache/sanselan/color/ColorCMY;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lorg/apache/sanselan/color/ColorCMY;-><init>(DDD)V

    return-object p0
.end method

.method public static final convertRGBtoHSL(I)Lorg/apache/sanselan/color/ColorHSL;
    .locals 28

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 449
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    int-to-double v1, v2

    .line 450
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    int-to-double v7, v0

    .line 451
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v5

    .line 453
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 454
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    sub-double v11, v9, v5

    add-double v13, v9, v5

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v22, v13, v15

    const-wide/16 v17, 0x0

    cmpl-double v0, v11, v17

    if-nez v0, :cond_0

    move-wide/from16 v20, v17

    move-wide/from16 v18, v20

    goto :goto_2

    :cond_0
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v22, v19

    if-gez v0, :cond_1

    div-double v5, v11, v13

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sub-double v13, v15, v9

    sub-double/2addr v13, v5

    div-double v5, v11, v13

    :goto_0
    const/4 v0, 0x0

    sub-double v13, v9, v3

    const-wide/high16 v19, 0x4018000000000000L    # 6.0

    div-double v13, v13, v19

    div-double v15, v11, v15

    add-double/2addr v13, v15

    div-double/2addr v13, v11

    sub-double v24, v9, v1

    div-double v24, v24, v19

    add-double v24, v24, v15

    div-double v24, v24, v11

    sub-double v26, v9, v7

    div-double v26, v26, v19

    add-double v26, v26, v15

    div-double v26, v26, v11

    cmpl-double v0, v3, v9

    if-nez v0, :cond_2

    sub-double v0, v26, v24

    goto :goto_1

    :cond_2
    cmpl-double v0, v1, v9

    if-nez v0, :cond_3

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v13, v0

    sub-double v0, v13, v26

    goto :goto_1

    :cond_3
    cmpl-double v0, v7, v9

    if-nez v0, :cond_4

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v24, v24, v0

    sub-double v0, v24, v13

    goto :goto_1

    :cond_4
    const-string v0, "uh oh"

    .line 490
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    move-wide/from16 v0, v17

    :goto_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v17

    if-gez v4, :cond_5

    add-double/2addr v0, v2

    :cond_5
    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    sub-double/2addr v0, v2

    :cond_6
    move-wide/from16 v18, v0

    move-wide/from16 v20, v5

    .line 504
    :goto_2
    new-instance v0, Lorg/apache/sanselan/color/ColorHSL;

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v23}, Lorg/apache/sanselan/color/ColorHSL;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertRGBtoHSV(I)Lorg/apache/sanselan/color/ColorHSV;
    .locals 26

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 562
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    int-to-double v1, v2

    .line 563
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    int-to-double v7, v0

    .line 564
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v5

    .line 566
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 567
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    sub-double v5, v16, v5

    const-wide/16 v9, 0x0

    cmpl-double v0, v5, v9

    if-nez v0, :cond_0

    move-wide v12, v9

    move-wide v14, v12

    goto :goto_1

    :cond_0
    div-double v11, v5, v16

    const/4 v0, 0x0

    sub-double v13, v16, v3

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v13, v13, v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v5, v20

    add-double v13, v13, v20

    div-double/2addr v13, v5

    sub-double v22, v16, v1

    div-double v22, v22, v18

    add-double v22, v22, v20

    div-double v22, v22, v5

    sub-double v24, v16, v7

    div-double v24, v24, v18

    add-double v24, v24, v20

    div-double v24, v24, v5

    cmpl-double v0, v3, v16

    if-nez v0, :cond_1

    sub-double v0, v24, v22

    goto :goto_0

    :cond_1
    cmpl-double v0, v1, v16

    if-nez v0, :cond_2

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v13, v0

    sub-double v0, v13, v24

    goto :goto_0

    :cond_2
    cmpl-double v0, v7, v16

    if-nez v0, :cond_3

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v22, v22, v0

    sub-double v0, v22, v13

    goto :goto_0

    :cond_3
    const-string v0, "uh oh"

    .line 595
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    move-wide v0, v9

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v9

    if-gez v4, :cond_4

    add-double/2addr v0, v2

    :cond_4
    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    sub-double/2addr v0, v2

    :cond_5
    move-wide v14, v11

    move-wide v12, v0

    .line 605
    :goto_1
    new-instance v0, Lorg/apache/sanselan/color/ColorHSV;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/sanselan/color/ColorHSV;-><init>(DDD)V

    return-object v0
.end method

.method private static final convertRGBtoRGB(DDD)I
    .locals 0

    .line 773
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    .line 774
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 775
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    const/4 p3, 0x0

    .line 777
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p4, 0xff

    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 778
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 779
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p0, p0, 0x10

    const/high16 p4, -0x1000000

    or-int/2addr p0, p4

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method private static final convertRGBtoRGB(III)I
    .locals 2

    const/4 v0, 0x0

    .line 789
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v1, 0xff

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 790
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 791
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public static final convertRGBtoXYZ(I)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    int-to-double v1, v2

    .line 327
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    int-to-double v7, v0

    .line 328
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v5

    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, v3, v15

    if-lez v0, :cond_0

    add-double/2addr v3, v13

    div-double/2addr v3, v11

    .line 331
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    :goto_0
    cmpl-double v0, v1, v15

    if-lez v0, :cond_1

    add-double/2addr v1, v13

    div-double/2addr v1, v11

    .line 335
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    div-double v0, v1, v5

    :goto_1
    cmpl-double v2, v7, v15

    if-lez v2, :cond_2

    add-double/2addr v7, v13

    div-double/2addr v7, v11

    .line 339
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    goto :goto_2

    :cond_2
    div-double v5, v7, v5

    :goto_2
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v7

    mul-double v0, v0, v7

    mul-double v5, v5, v7

    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v7, v7, v3

    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v9, v9, v0

    add-double/2addr v7, v9

    const-wide v9, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v9, v9, v5

    add-double v12, v7, v9

    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v7, v7, v3

    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v9, v9, v0

    add-double/2addr v7, v9

    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v9, v9, v5

    add-double v14, v7, v9

    const-wide v7, 0x3f93c36113404ea5L    # 0.0193

    mul-double v3, v3, v7

    const-wide v7, 0x3fbe83e425aee632L    # 0.1192

    mul-double v0, v0, v7

    add-double/2addr v3, v0

    const-wide v0, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v5, v5, v0

    add-double v16, v3, v5

    .line 352
    new-instance v0, Lorg/apache/sanselan/color/ColorXYZ;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertXYZtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 17

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p2, v2

    const-wide v4, 0x405b3883126e978dL    # 108.883

    div-double v4, p4, v4

    const-wide v6, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v8, 0x401f25e353f7ced9L    # 7.787

    const-wide v10, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v12, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v14, v0, v12

    if-lez v14, :cond_0

    .line 201
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    mul-double v0, v0, v8

    const/4 v14, 0x0

    add-double/2addr v0, v6

    :goto_0
    cmpl-double v14, v2, v12

    if-lez v14, :cond_1

    .line 205
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    mul-double v2, v2, v8

    const/4 v14, 0x0

    add-double/2addr v2, v6

    :goto_1
    cmpl-double v14, v4, v12

    if-lez v14, :cond_2

    .line 209
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_2

    :cond_2
    mul-double v4, v4, v8

    const/4 v8, 0x0

    add-double/2addr v4, v6

    :goto_2
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    mul-double v6, v6, v2

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    sub-double v11, v6, v8

    const-wide v6, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v2

    mul-double v13, v0, v6

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr v2, v4

    mul-double v15, v2, v0

    .line 216
    new-instance v0, Lorg/apache/sanselan/color/ColorCIELab;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/sanselan/color/ColorCIELab;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertXYZtoCIELab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 6

    .line 185
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoCIELuv(DDD)Lorg/apache/sanselan/color/ColorCIELuv;
    .locals 19

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double v4, v4, p0

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    mul-double v6, v6, p2

    add-double v0, p0, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, p4

    add-double/2addr v0, v6

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double v6, v6, p2

    div-double/2addr v6, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    const-wide v2, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v8, v0, v2

    if-lez v8, :cond_0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    .line 865
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x401f25e353f7ced9L    # 7.787

    mul-double v0, v0, v2

    const-wide v2, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr v0, v2

    :goto_0
    const-wide v2, 0x3fc952d0bcba2702L    # 0.19783982482140777

    const-wide v8, 0x3fddf938d427f3b1L    # 0.46833630293240974

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    mul-double v0, v0, v10

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double v13, v0, v10

    const-wide/high16 v0, 0x402a000000000000L    # 13.0

    mul-double v0, v0, v13

    sub-double/2addr v4, v2

    mul-double v15, v0, v4

    sub-double/2addr v6, v8

    mul-double v17, v0, v6

    .line 885
    new-instance v0, Lorg/apache/sanselan/color/ColorCIELuv;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/apache/sanselan/color/ColorCIELuv;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoCIELuv(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELuv;
    .locals 6

    .line 848
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELuv(DDD)Lorg/apache/sanselan/color/ColorCIELuv;

    move-result-object p0

    return-object p0
.end method

.method public static final convertXYZtoHunterLab(DDD)Lorg/apache/sanselan/color/ColorHunterLab;
    .locals 13

    .line 258
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v7, v2, v4

    const-wide v2, 0x3ff051eb851eb852L    # 1.02

    mul-double v2, v2, p0

    sub-double/2addr v2, p2

    .line 259
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide v4, 0x4031800000000000L    # 17.5

    mul-double v9, v2, v4

    const-wide v2, 0x3feb1a9fbe76c8b4L    # 0.847

    mul-double v2, v2, p4

    sub-double v2, p2, v2

    .line 260
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    mul-double v11, v2, v0

    .line 262
    new-instance v0, Lorg/apache/sanselan/color/ColorHunterLab;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/apache/sanselan/color/ColorHunterLab;-><init>(DDD)V

    return-object v0
.end method

.method public static final convertXYZtoHunterLab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorHunterLab;
    .locals 6

    .line 252
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoHunterLab(DDD)Lorg/apache/sanselan/color/ColorHunterLab;

    move-result-object p0

    return-object p0
.end method

.method public static final convertXYZtoRGB(DDD)I
    .locals 17

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v2, p0, v0

    div-double v4, p2, v0

    div-double v0, p4, v0

    const-wide v6, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v6, v6, v2

    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    mul-double v8, v8, v0

    add-double/2addr v6, v8

    const-wide v8, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v8, v8, v2

    const-wide v10, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v10, v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fa53f7ced916873L    # 0.0415

    mul-double v10, v10, v0

    add-double/2addr v8, v10

    const-wide v10, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v2, v2, v10

    const-wide v10, -0x4035e353f7ced917L    # -0.204

    mul-double v4, v4, v10

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v10, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v16, v6, v14

    if-lez v16, :cond_0

    .line 301
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v12

    sub-double/2addr v6, v4

    goto :goto_0

    :cond_0
    mul-double v6, v6, v0

    :goto_0
    cmpl-double v16, v8, v14

    if-lez v16, :cond_1

    .line 305
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v12

    sub-double/2addr v8, v4

    goto :goto_1

    :cond_1
    mul-double v8, v8, v0

    :goto_1
    cmpl-double v16, v2, v14

    if-lez v16, :cond_2

    .line 309
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v12

    sub-double/2addr v0, v4

    goto :goto_2

    :cond_2
    mul-double v0, v0, v2

    :goto_2
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v4, v6, v2

    mul-double v6, v8, v2

    mul-double v0, v0, v2

    move-wide/from16 p0, v4

    move-wide/from16 p2, v6

    move-wide/from16 p4, v0

    .line 317
    invoke-static/range {p0 .. p5}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static final convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I
    .locals 6

    .line 286
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method private static cube(D)D
    .locals 2

    mul-double v0, p0, p0

    mul-double v0, v0, p0

    return-wide v0
.end method

.method public static degree_2_radian(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 11

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v1, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-gt v3, v1, :cond_2

    const/4 v4, 0x0

    :goto_3
    if-gt v4, v1, :cond_1

    const/16 v5, 0xff

    .line 34
    :try_start_0
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v6

    .line 37
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v8, v9, v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB_old(IIII)I

    move-result v5

    if-eq v6, v5, :cond_0

    .line 44
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    const-string v7, "C"

    .line 45
    invoke-static {v7, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    const-string v7, "M"

    .line 46
    invoke-static {v7, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    const-string v7, "Y"

    .line 47
    invoke-static {v7, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    const-string v7, "K"

    .line 48
    invoke-static {v7, v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    const-string v7, "rgb1"

    .line 49
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "rgb2"

    .line 51
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x40

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x40

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x40

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x40

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xa

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 68
    :goto_4
    array-length v1, v0

    if-ge p0, v1, :cond_b

    .line 70
    aget v1, v0, p0

    .line 74
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoXYZ(I)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v2

    .line 75
    invoke-static {v2}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v3

    .line 77
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    const-string v4, "rgb"

    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "xyz"

    .line 80
    invoke-static {v4, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "xyz_rgb"

    .line 81
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0xffffff

    and-int/2addr v3, v4

    and-int v5, v1, v4

    if-eq v3, v5, :cond_5

    const-string v3, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 84
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 88
    :cond_5
    invoke-static {v2}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoXYZ(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v6

    .line 91
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v7

    const-string v8, "cielab"

    .line 94
    invoke-static {v8, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "cielab_xyz"

    .line 95
    invoke-static {v8, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "cielab_xyz_rgb"

    .line 96
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    and-int v6, v7, v4

    if-eq v6, v5, :cond_6

    const-string v6, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 99
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 103
    :cond_6
    invoke-static {v2}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoHunterLab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorHunterLab;

    move-result-object v6

    .line 105
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertHunterLabtoXYZ(Lorg/apache/sanselan/color/ColorHunterLab;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v7

    .line 107
    invoke-static {v7}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v8

    const-string v9, "hunterlab"

    .line 110
    invoke-static {v9, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "hunterlab_xyz"

    .line 111
    invoke-static {v6, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "hunterlab_xyz_rgb"

    .line 112
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    and-int v6, v8, v4

    if-eq v6, v5, :cond_7

    const-string v6, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 115
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 119
    :cond_7
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoCMY(I)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v6

    .line 120
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoCMYK(Lorg/apache/sanselan/color/ColorCMY;)Lorg/apache/sanselan/color/ColorCMYK;

    move-result-object v7

    .line 121
    invoke-static {v7}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(Lorg/apache/sanselan/color/ColorCMYK;)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v8

    .line 122
    invoke-static {v8}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I

    move-result v9

    const-string v10, "cmy"

    .line 125
    invoke-static {v10, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "cmyk"

    .line 126
    invoke-static {v6, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "cmyk_cmy"

    .line 127
    invoke-static {v6, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "cmyk_cmy_rgb"

    .line 128
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    and-int v6, v9, v4

    if-eq v6, v5, :cond_8

    const-string v6, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 131
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 135
    :cond_8
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoHSL(I)Lorg/apache/sanselan/color/ColorHSL;

    move-result-object v6

    .line 136
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertHSLtoRGB(Lorg/apache/sanselan/color/ColorHSL;)I

    move-result v7

    const-string v8, "hsl"

    .line 138
    invoke-static {v8, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "hsl_rgb"

    .line 139
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    and-int v6, v7, v4

    if-eq v6, v5, :cond_9

    const-string v6, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 142
    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 145
    :cond_9
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoHSV(I)Lorg/apache/sanselan/color/ColorHSV;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertHSVtoRGB(Lorg/apache/sanselan/color/ColorHSV;)I

    move-result v6

    const-string v7, "hsv"

    .line 148
    invoke-static {v7, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hsv_rgb"

    .line 149
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    and-int v1, v6, v4

    if-eq v1, v5, :cond_a

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!"

    .line 152
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 156
    :cond_a
    invoke-static {v3}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoCIELCH(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorCIELCH;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELCHtoCIELab(Lorg/apache/sanselan/color/ColorCIELCH;)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v3

    const-string v4, "cielch"

    .line 161
    invoke-static {v4, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cielch_cielab"

    .line 162
    invoke-static {v1, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {v2}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELuv(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELuv;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELuvtoXYZ(Lorg/apache/sanselan/color/ColorCIELuv;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v2

    const-string v3, "cieluv"

    .line 171
    invoke-static {v3, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cieluv_xyz"

    .line 172
    invoke-static {v1, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 179
    invoke-static {p0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_b
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
        -0x10000
        -0xff0100
        -0xffff01
        -0xff01
        -0xf0100
        -0xff0001
        0x0
        -0x808081
    .end array-data
.end method

.method public static radian_2_degree(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static square(D)D
    .locals 0

    mul-double p0, p0, p0

    return-wide p0
.end method
