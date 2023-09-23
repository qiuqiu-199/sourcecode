.class public Lorg/apache/sanselan/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    }
.end annotation


# static fields
.field public static final components:I = 0x3

.field private static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private divide(Ljava/util/ArrayList;I[II)Ljava/util/ArrayList;
    .locals 6

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 331
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 333
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 334
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 336
    :cond_1
    iget v5, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-le v5, v1, :cond_3

    :goto_1
    move-object v2, v4

    move v1, v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object p1

    .line 359
    :cond_5
    invoke-direct {p0, p3, v2, p4}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;I)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 363
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    invoke-static {v1}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {v1}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 368
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p1
.end method

.method private divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;
    .locals 14

    move-object/from16 v7, p2

    .line 208
    iget v0, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 210
    iget-object v1, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 211
    iget-object v2, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    iget-object v3, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object v2, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 213
    iget-object v3, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    iget-object v5, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v3, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v3, v3, p3

    move v6, v3

    const/4 v3, 0x0

    :goto_0
    iget-object v5, v7, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, 0x1

    if-eq v6, v5, :cond_1

    .line 223
    aput v6, v1, p3

    .line 224
    aput v6, v2, p3

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p4

    .line 226
    invoke-direct {p0, p1, v1, v2, v10}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v3

    add-int/2addr v4, v3

    .line 231
    div-int/lit8 v5, v0, 0x2

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p4

    :goto_1
    move v5, v4

    sub-int v11, v5, v3

    add-int/lit8 v12, v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 240
    invoke-direct/range {v0 .. v6}, Lorg/apache/sanselan/palette/PaletteFactory;->finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v13

    move v5, v11

    move v6, v12

    .line 242
    invoke-direct/range {v0 .. v6}, Lorg/apache/sanselan/palette/PaletteFactory;->finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_2

    .line 248
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method private divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;I)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .locals 7

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    .line 261
    invoke-direct {p0, p1, p2, v2, p3}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x2

    .line 262
    invoke-direct {p0, p1, p2, v2, p3}, Lorg/apache/sanselan/palette/PaletteFactory;->divideSubset2([ILorg/apache/sanselan/palette/ColorSpaceSubset;II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 268
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    .line 272
    invoke-static {v2}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v3

    .line 273
    invoke-static {v2}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/sanselan/palette/ColorSpaceSubset;

    move-result-object v4

    .line 274
    iget v3, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 275
    iget v4, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    sub-int v5, v3, v4

    .line 277
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    .line 278
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v3, v5, p2

    if-gez v3, :cond_1

    :goto_1
    move-object p1, v2

    move-wide p2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private finishDivision([ILorg/apache/sanselan/palette/ColorSpaceSubset;IIII)Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;
    .locals 14

    move-object/from16 v0, p2

    move/from16 v2, p5

    move/from16 v3, p6

    .line 153
    iget v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 155
    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, p3

    const/4 v6, 0x0

    if-lt v3, v5, :cond_5

    iget-object v5, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, p3

    if-lt v3, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int v8, v4, v2

    if-lt v8, v5, :cond_3

    if-lt v8, v4, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v4, v4

    new-array v10, v4, [I

    .line 175
    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    iget-object v6, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v7, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v4, v4

    new-array v6, v4, [I

    .line 177
    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    iget-object v9, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    array-length v9, v9

    invoke-static {v4, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    aput v3, v6, p3

    add-int/2addr v3, v5

    .line 180
    aput v3, v10, p3

    .line 193
    new-instance v13, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    iget-object v4, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    move-object v1, v13

    move/from16 v2, p5

    move/from16 v3, p4

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II[I[I[I)V

    .line 195
    new-instance v1, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    move-object v7, v1

    move/from16 v9, p4

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II[I[I[I)V

    .line 198
    new-instance v2, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;

    invoke-direct {v2, v0, v13, v1}, Lorg/apache/sanselan/palette/PaletteFactory$DivisionCandidate;-><init>(Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;Lorg/apache/sanselan/palette/ColorSpaceSubset;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v6

    :cond_4
    :goto_1
    return-object v6

    :cond_5
    :goto_2
    return-object v6
.end method

.method private getFrequencyTotal([I[I[II)I
    .locals 10

    const/4 v0, 0x2

    .line 127
    aget v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    aget v4, p3, v0

    if-gt v1, v4, :cond_2

    mul-int/lit8 v4, p4, 0x2

    shl-int v4, v1, v4

    const/4 v5, 0x1

    .line 130
    aget v6, p2, v5

    :goto_1
    aget v7, p3, v5

    if-gt v6, v7, :cond_1

    mul-int/lit8 v7, p4, 0x1

    shl-int v7, v6, v7

    .line 134
    aget v8, p2, v2

    :goto_2
    aget v9, p3, v2

    if-gt v8, v9, :cond_0

    or-int v9, v4, v7

    or-int/2addr v9, v8

    .line 138
    aget v9, p1, v9

    add-int/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private pixelToQuantizationTableIndex(II)I
    .locals 5

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v4, p2, 0x8

    shr-int/2addr v3, v4

    shl-int/2addr v2, p2

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .locals 9

    .line 553
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 557
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 558
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v2, :cond_4

    move v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 565
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ge v7, v8, :cond_2

    if-gez v5, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    if-eq v6, v5, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    if-gez v4, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public countTrasparentColors([I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 531
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 533
    aget v3, p1, v1

    shr-int/lit8 v4, v3, 0x18

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ge v4, v5, :cond_1

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-eq v3, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .locals 1

    const/16 v0, 0xff

    .line 504
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result p1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .locals 6

    .line 509
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 510
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 512
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 518
    invoke-virtual {p1, v4, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-ge v5, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .locals 9

    .line 479
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 480
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 482
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne v4, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 489
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v6, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v7, v8, :cond_2

    if-eq v7, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public makePaletteFancy(Ljava/awt/image/BufferedImage;)V
    .locals 10

    const/high16 v0, 0x200000

    .line 36
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 37
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 38
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 41
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_1

    .line 46
    invoke-virtual {p1, v6, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v7

    const v8, 0x1fffff

    and-int/2addr v8, v7

    shr-int/lit8 v7, v7, 0x15

    and-int/lit8 v7, v7, 0x7

    shl-int v7, v5, v7

    .line 50
    aget-byte v9, v0, v8

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 54
    :goto_3
    array-length v3, v0

    const/16 v4, 0x8

    if-ge p1, v3, :cond_6

    .line 56
    aget-byte v3, v0, p1

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x3

    if-lt p1, v6, :cond_3

    .line 57
    array-length v6, v0

    :cond_3
    move v6, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_5

    rsub-int/lit8 v7, v2, 0x7

    shl-int v7, v5, v7

    and-int/2addr v7, v3

    if-lez v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    move v2, v6

    goto :goto_3

    .line 73
    :cond_6
    new-array p1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    :goto_5
    array-length v6, v0

    if-ge v2, v6, :cond_a

    .line 77
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    move v7, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_9

    rsub-int/lit8 v8, v3, 0x7

    shl-int v9, v5, v8

    and-int/2addr v9, v6

    if-lez v9, :cond_8

    shl-int/lit8 v8, v8, 0x15

    or-int/2addr v8, v2

    .line 88
    array-length v9, p1

    if-ge v7, v9, :cond_7

    .line 89
    aput v8, p1, v7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_5

    :cond_a
    return-void
.end method

.method public makePaletteQuantized(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/Palette;
    .locals 10

    const/high16 p2, 0x40000

    .line 384
    new-array p2, p2, [I

    .line 386
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 387
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    mul-int v4, v0, v1

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5}, Lorg/apache/sanselan/palette/ColorSpaceSubset;-><init>(II)V

    .line 391
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v4, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    iget-object v6, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    invoke-direct {p0, p2, v4, v6, v5}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    .line 402
    invoke-virtual {p1, v7, v6}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    .line 404
    invoke-direct {p0, v8, v5}, Lorg/apache/sanselan/palette/PaletteFactory;->pixelToQuantizationTableIndex(II)I

    move-result v8

    .line 406
    aget v9, p2, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    iget-object v0, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    invoke-direct {p0, p2, p1, v0, v5}, Lorg/apache/sanselan/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    const/16 p1, 0x100

    .line 418
    invoke-direct {p0, v2, p1, p2, v5}, Lorg/apache/sanselan/palette/PaletteFactory;->divide(Ljava/util/ArrayList;I[II)Ljava/util/ArrayList;

    move-result-object p1

    .line 426
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 428
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 430
    invoke-virtual {v0, p2}, Lorg/apache/sanselan/palette/ColorSpaceSubset;->setAverageRGB([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 436
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 438
    new-instance p2, Lorg/apache/sanselan/palette/QuantizedPalette;

    invoke-direct {p2, p1, v5}, Lorg/apache/sanselan/palette/QuantizedPalette;-><init>(Ljava/util/ArrayList;I)V

    return-object p2
.end method

.method public makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;
    .locals 11

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    new-array v1, p2, [I

    .line 448
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 449
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    .line 454
    invoke-virtual {p1, v6, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    .line 457
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 458
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    if-ne v7, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 463
    :cond_0
    aput v8, v1, v7

    .line 464
    invoke-interface {v0, v9, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_0

    .line 469
    :cond_3
    new-array p1, v6, [I

    .line 470
    invoke-static {v1, v4, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 474
    new-instance p2, Lorg/apache/sanselan/palette/SimplePalette;

    invoke-direct {p2, p1}, Lorg/apache/sanselan/palette/SimplePalette;-><init>([I)V

    return-object p2
.end method
