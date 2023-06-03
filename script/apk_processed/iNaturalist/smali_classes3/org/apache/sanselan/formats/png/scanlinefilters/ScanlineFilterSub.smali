.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterSub.java"


# instance fields
.field private final BytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;->BytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 35
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 37
    iget v0, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;->BytesPerPixel:I

    sub-int v0, p3, v0

    if-ltz v0, :cond_0

    .line 39
    aget-byte v1, p1, p3

    aget-byte v0, p2, v0

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    goto :goto_1

    .line 42
    :cond_0
    aget-byte v0, p1, p3

    aput-byte v0, p2, p3

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
