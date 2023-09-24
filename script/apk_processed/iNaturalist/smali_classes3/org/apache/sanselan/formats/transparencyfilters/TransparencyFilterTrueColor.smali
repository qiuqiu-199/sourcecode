.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterTrueColor.java"


# instance fields
.field private final transparent_blue:I

.field private final transparent_color:I

.field private final transparent_green:I

.field private final transparent_red:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "transparent_red"

    const-string v1, "tRNS: Missing transparent_color"

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_red:I

    const-string p1, "transparent_green"

    const-string v1, "tRNS: Missing transparent_color"

    .line 39
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_green:I

    const-string p1, "transparent_blue"

    const-string v1, "tRNS: Missing transparent_color"

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_blue:I

    .line 44
    iget p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_red:I

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_green:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_blue:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_color:I

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

    const p2, 0xffffff

    and-int/2addr p2, p1

    .line 53
    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_color:I

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p1
.end method
