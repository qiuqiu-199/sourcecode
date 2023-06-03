.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterNone;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterNone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 28
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 30
    aget-byte v0, p1, p3

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
