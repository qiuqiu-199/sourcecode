.class public Lorg/apache/sanselan/formats/png/GammaCorrection;
.super Ljava/lang/Object;
.source "GammaCorrection.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final lookupTable:[I


# direct methods
.method public constructor <init>(DD)V
    .locals 9

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 34
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    iget-object v8, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    move-object v2, p0

    move v3, v1

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(IDD)I

    move-result v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private correctSample(IDD)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr p2, p4

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method public correctARGB(I)I
    .locals 3

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 58
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 59
    invoke-virtual {p0, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 60
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public correctSample(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    aget p1, v0, p1

    return p1
.end method
