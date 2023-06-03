.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterGrayscale.java"


# instance fields
.field private final transparent_color:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "transparent_color"

    const-string v1, "tRNS: Missing transparent_color"

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->transparent_color:I

    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->transparent_color:I

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
