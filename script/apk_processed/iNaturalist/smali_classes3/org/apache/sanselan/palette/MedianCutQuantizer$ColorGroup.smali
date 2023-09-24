.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGroup"
.end annotation


# instance fields
.field public final alpha_diff:I

.field public final blue_diff:I

.field public final color_counts:Ljava/util/ArrayList;

.field public cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

.field public final diff_total:I

.field public final green_diff:I

.field public max_alpha:I

.field public max_blue:I

.field public final max_diff:I

.field public max_green:I

.field public max_red:I

.field public min_alpha:I

.field public min_blue:I

.field public min_green:I

.field public min_red:I

.field public palette_index:I

.field public final red_diff:I

.field private final synthetic this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->cut:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->palette_index:I

    const v0, 0x7fffffff

    .line 77
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    const/high16 v1, -0x80000000

    .line 78
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    .line 79
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    .line 80
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    .line 81
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    .line 82
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    .line 83
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    .line 84
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    .line 97
    iput-object p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 104
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 106
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    .line 107
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    .line 108
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    .line 109
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    .line 110
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    .line 111
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    .line 112
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    iget v4, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    .line 113
    iget v3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    iget v2, v2, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    .line 117
    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    .line 118
    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    .line 119
    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    .line 120
    invoke-static {p1}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    .line 122
    invoke-static {p1}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->alpha_diff:I

    :goto_2
    iget p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->red_diff:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->green_diff:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->blue_diff:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    return-void

    .line 100
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string p2, "empty color_group"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public contains(I)Z
    .locals 5

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 134
    iget-object v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-static {v4}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    if-lt v0, v4, :cond_0

    iget v4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    if-le v0, v4, :cond_1

    :cond_0
    return v3

    .line 136
    :cond_1
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    if-lt v1, v0, :cond_7

    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    if-le v1, v0, :cond_2

    goto :goto_2

    .line 138
    :cond_2
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    if-lt v2, v0, :cond_6

    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    if-le v2, v0, :cond_3

    goto :goto_1

    .line 140
    :cond_3
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    if-lt p1, v0, :cond_5

    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    if-le p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v3

    :cond_7
    :goto_2
    return v3
.end method

.method public getMedianValue()I
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    .line 150
    :goto_0
    iget-object v11, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 152
    iget-object v11, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->color_counts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 154
    iget v12, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    int-to-long v12, v12

    add-long/2addr v0, v12

    .line 155
    iget v12, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    iget v13, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    mul-int v12, v12, v13

    int-to-long v12, v12

    add-long/2addr v3, v12

    .line 156
    iget v12, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    iget v13, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    mul-int v12, v12, v13

    int-to-long v12, v12

    add-long/2addr v5, v12

    .line 157
    iget v12, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    iget v13, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    mul-int v12, v12, v13

    int-to-long v12, v12

    add-long/2addr v7, v12

    .line 158
    iget v12, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    iget v11, v11, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    mul-int v12, v12, v11

    int-to-long v11, v12

    add-long/2addr v9, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-static {v2}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->access$000(Lorg/apache/sanselan/palette/MedianCutQuantizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    long-to-double v2, v3

    long-to-double v11, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_1
    long-to-double v3, v5

    long-to-double v0, v0

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    long-to-double v4, v7

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    long-to-double v5, v9

    .line 165
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    shl-int/lit8 v1, v2, 0x18

    shl-int/lit8 v2, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{ColorGroup. min_red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_red:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", max_red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_red:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", min_green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_green:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", max_green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_green:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", min_blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", max_blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_blue:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", min_alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->min_alpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", max_alpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_alpha:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", max_diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", diff_total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
