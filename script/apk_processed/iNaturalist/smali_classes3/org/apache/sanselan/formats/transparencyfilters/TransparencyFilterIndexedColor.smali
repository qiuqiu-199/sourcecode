.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterIndexedColor.java"


# instance fields
.field count:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length v0, v0

    if-lt p2, v0, :cond_0

    return p1

    :cond_0
    if-ltz p2, :cond_2

    .line 39
    iget-object v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length v0, v0

    if-gt p2, v0, :cond_2

    .line 44
    iget-object v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 47
    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    if-lez p2, :cond_1

    .line 49
    iget p2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    :cond_1
    return p1

    .line 40
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TransparencyFilterIndexedColor index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ", bytes.length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
