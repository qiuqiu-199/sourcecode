.class public Lorg/apache/sanselan/formats/png/BitParser;
.super Ljava/lang/Object;
.source "BitParser.java"


# instance fields
.field private final bitDepth:I

.field private final bitsPerPixel:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    .line 32
    iput p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitsPerPixel:I

    .line 33
    iput p3, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    return-void
.end method


# virtual methods
.method public getSample(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget v0, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitsPerPixel:I

    mul-int v0, v0, p1

    .line 40
    iget p1, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    mul-int p2, p2, p1

    add-int/2addr p2, v0

    shr-int/lit8 p1, p2, 0x3

    .line 43
    iget p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 44
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 45
    :cond_0
    iget p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    const/4 v2, 0x1

    if-ge p2, v1, :cond_1

    .line 47
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p2, v0, 0x7

    .line 48
    iget v0, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    add-int/2addr p2, v0

    sub-int/2addr v1, p2

    shr-int/2addr p1, v1

    .line 51
    iget p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    and-int/2addr p1, p2

    return p1

    .line 53
    :cond_1
    iget p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 55
    iget-object p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    aget-byte p2, p2, p1

    and-int/lit16 p2, p2, 0xff

    shl-int/2addr p2, v1

    iget-object v0, p0, Lorg/apache/sanselan/formats/png/BitParser;->bytes:[B

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    return p1

    .line 58
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "PNG: bad BitDepth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleAsByte(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/png/BitParser;->getSample(II)I

    move-result p1

    .line 66
    iget p2, p0, Lorg/apache/sanselan/formats/png/BitParser;->bitDepth:I

    rsub-int/lit8 p2, p2, 0x8

    if-lez p2, :cond_0

    shl-int/2addr p1, p2

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    shr-int/2addr p1, p2

    :cond_1
    :goto_0
    and-int/lit16 p1, p1, 0xff

    return p1
.end method
