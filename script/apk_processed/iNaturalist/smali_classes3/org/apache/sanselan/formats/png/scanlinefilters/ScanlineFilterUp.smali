.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterUp.java"


# instance fields
.field private final BytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterUp;->BytesPerPixel:I

    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_0

    .line 40
    aget-byte v1, p1, v0

    aget-byte v2, p3, v0

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_1

    .line 42
    :cond_0
    aget-byte v1, p1, v0

    aput-byte v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
