.class public Lorg/apache/sanselan/palette/QuantizedPalette;
.super Lorg/apache/sanselan/palette/Palette;
.source "QuantizedPalette.java"


# instance fields
.field private final precision:I

.field private final straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

.field private final subsets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 10

    .line 30
    invoke-direct {p0}, Lorg/apache/sanselan/palette/Palette;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    .line 32
    iput p2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v0, p2, 0x3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 35
    new-array v0, v0, [Lorg/apache/sanselan/palette/ColorSpaceSubset;

    iput-object v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 40
    invoke-virtual {v3, v2}, Lorg/apache/sanselan/palette/ColorSpaceSubset;->setIndex(I)V

    .line 42
    iget-object v4, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v4, v4, v0

    :goto_1
    iget-object v5, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, v0

    if-gt v4, v5, :cond_2

    .line 43
    iget-object v5, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v1

    :goto_2
    iget-object v6, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    .line 44
    iget-object v6, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    :goto_3
    iget-object v8, v3, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v8, v8, v7

    if-gt v6, v8, :cond_0

    mul-int/lit8 v8, p2, 0x2

    shl-int v8, v4, v8

    mul-int/lit8 v9, p2, 0x1

    shl-int v9, v5, v9

    or-int/2addr v8, v9

    mul-int/lit8 v9, p2, 0x0

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    .line 49
    iget-object v9, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    aput-object v3, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    return-void
.end method

.method public getEntry(I)I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 78
    iget p1, p1, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    return p1
.end method

.method public getPaletteIndex(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 60
    iget v2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p1, v2

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    shl-int/lit8 v1, v3, 0x1

    shl-int v1, v0, v1

    and-int/2addr v1, v2

    iget v2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x10

    shr-int v2, p1, v2

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget v2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p1, v2

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    .line 64
    iget-object v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/apache/sanselan/palette/ColorSpaceSubset;->index:I

    return p1
.end method

.method public length()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
