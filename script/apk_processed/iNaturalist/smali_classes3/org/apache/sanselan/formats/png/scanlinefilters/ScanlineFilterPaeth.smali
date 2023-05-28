.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterPaeth.java"


# instance fields
.field private final BytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->BytesPerPixel:I

    return-void
.end method

.method private PaethPredictor(III)I
    .locals 3

    add-int v0, p1, p2

    sub-int/2addr v0, p3

    sub-int v1, v0, p1

    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p2

    .line 37
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p3

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    return p1

    :cond_0
    if-gt v2, v0, :cond_1

    return p2

    :cond_1
    return p3
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 55
    iget v2, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->BytesPerPixel:I

    sub-int v2, v1, v2

    if-ltz v2, :cond_0

    .line 57
    aget-byte v3, p2, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz p3, :cond_1

    .line 61
    aget-byte v4, p3, v1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ltz v2, :cond_2

    if-eqz p3, :cond_2

    .line 66
    aget-byte v2, p3, v2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v2, v2, 0xff

    .line 69
    invoke-direct {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->PaethPredictor(III)I

    move-result v2

    .line 72
    aget-byte v3, p1, v1

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
