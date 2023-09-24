.class public Lorg/apache/sanselan/palette/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;,
        Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x0

.field private static final BLUE:I = 0x3

.field private static final GREEN:I = 0x2

.field private static final RED:I = 0x1


# instance fields
.field private final ignoreAlpha:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    return p0
.end method

.method private doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 360
    :goto_0
    iget-object v3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 362
    iget-object v3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 364
    iget v3, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    new-instance v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;

    invoke-direct {v1, p0, p2}, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;I)V

    .line 390
    iget-object v3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    int-to-double v1, v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 391
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 394
    :goto_1
    iget-object v5, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 396
    iget-object v5, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 399
    iget v5, v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/2addr v3, v5

    if-ge v3, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    .line 409
    :cond_1
    iget-object v5, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    sub-int/2addr v3, v1

    .line 413
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v1, v4

    .line 414
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 419
    :cond_3
    :goto_2
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    new-instance v6, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, p0, v3}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v7, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, p0, v1}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 433
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object p3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    packed-switch p2, :pswitch_data_0

    .line 454
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Bad mode."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :pswitch_0
    iget p3, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    goto :goto_3

    .line 448
    :pswitch_1
    iget p3, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    goto :goto_3

    .line 445
    :pswitch_2
    iget p3, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    goto :goto_3

    .line 442
    :pswitch_3
    iget p3, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    :goto_3
    move v9, p3

    .line 456
    new-instance p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    move-object v4, p3

    move-object v5, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;II)V

    iput-object p3, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    const/16 v0, 0xff

    shl-int v1, v0, p2

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, v0

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 232
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "mask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 235
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 239
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 192
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    .line 194
    new-array v11, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v3, v13

    move v4, v9

    move-object v6, v11

    move v8, v9

    .line 197
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    .line 200
    aget v2, v11, v1

    move-object v3, p0

    .line 202
    iget-boolean v4, v3, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v4, :cond_0

    const v4, 0xffffff

    and-int/2addr v2, v4

    :cond_0
    move v4, v2

    and-int v4, v4, p3

    .line 206
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    if-nez v5, :cond_1

    .line 210
    new-instance v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    invoke-direct {v5, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;-><init>(I)V

    .line 211
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move/from16 v6, p2

    if-le v4, v6, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    move/from16 v6, p2

    .line 215
    :cond_2
    iget v4, v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p0

    move/from16 v6, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p0

    return-object v0
.end method

.method public process(Ljava/awt/image/BufferedImage;IZ)Lorg/apache/sanselan/palette/Palette;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;

    move-result-object p1

    .line 247
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_3

    if-eqz p3, :cond_0

    .line 251
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "lossless palette: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 253
    :cond_0
    new-array p2, v0, [I

    .line 254
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 258
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 259
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    aput p1, p2, v1

    .line 260
    iget-boolean p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz p1, :cond_1

    .line 261
    aget p1, p2, v1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    aput p1, p2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_2
    new-instance p1, Lorg/apache/sanselan/palette/SimplePalette;

    invoke-direct {p1, p2}, Lorg/apache/sanselan/palette/SimplePalette;-><init>([I)V

    return-object p1

    :cond_3
    if-eqz p3, :cond_4

    .line 268
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "discrete colors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 270
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, p0, v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V

    .line 273
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;

    invoke-direct {p1, p0}, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;)V

    .line 288
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, p2, :cond_9

    .line 290
    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 294
    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    if-nez v6, :cond_5

    goto :goto_2

    .line 296
    :cond_5
    iget-boolean v6, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-nez v6, :cond_6

    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v7, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    if-le v6, v7, :cond_6

    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v7, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    if-le v6, v7, :cond_6

    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v7, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v6, v7, :cond_6

    .line 301
    invoke-direct {p0, v4, v1, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto :goto_1

    .line 303
    :cond_6
    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    iget v7, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    if-le v6, v7, :cond_7

    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    iget v7, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v6, v7, :cond_7

    .line 306
    invoke-direct {p0, v4, v5, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto :goto_1

    .line 308
    :cond_7
    iget v5, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    iget v6, v4, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    if-le v5, v6, :cond_8

    const/4 v5, 0x2

    .line 310
    invoke-direct {p0, v4, v5, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x3

    .line 314
    invoke-direct {p0, v4, v5, v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->doCut(Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;ILjava/util/ArrayList;)V

    goto :goto_1

    .line 320
    :cond_9
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p3, :cond_a

    .line 322
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "palette size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 324
    :cond_a
    new-array p2, p1, [I

    .line 326
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_c

    .line 328
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 330
    invoke-virtual {p3}, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->getMedianValue()I

    move-result v4

    aput v4, p2, v1

    .line 332
    iput v1, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->palette_index:I

    .line 334
    iget-object v4, p3, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 335
    :cond_b
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "empty color_group: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    if-gt p1, v0, :cond_d

    .line 347
    new-instance p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;

    invoke-direct {p1, p0, v3, p2}, Lorg/apache/sanselan/palette/MedianCutQuantizer$MedianCutPalette;-><init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;[I)V

    return-object p1

    .line 345
    :cond_d
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string p2, "palette_size>discrete_colors"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
