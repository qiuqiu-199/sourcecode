.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorCount"
.end annotation


# instance fields
.field public final alpha:I

.field public final argb:I

.field public final blue:I

.field public count:I

.field public final green:I

.field public final red:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    .line 46
    iput p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 48
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 49
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 50
    iput v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    shr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 51
    iput p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    check-cast p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 64
    iget p1, p1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    return v0
.end method
