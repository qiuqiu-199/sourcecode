.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "JpegXmpParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    const/16 v0, 0x4d

    .line 31
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->setByteOrder(I)V

    return-void
.end method


# virtual methods
.method public isXmpJpegSegment([B)Z
    .locals 4

    .line 39
    array-length v0, p1

    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 42
    aget-byte v1, p1, v0

    sget-object v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    aget-byte v3, v3, v0

    if-ge v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public parseXmpJpegSegment([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .line 53
    array-length v0, p1

    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 56
    aget-byte v1, p1, v0

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    aget-byte v2, v2, v0

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "Invalid JPEG XMP Segment."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, v0

    const-string v3, "utf-8"

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    :catch_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "Invalid JPEG XMP Segment."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "Invalid JPEG XMP Segment."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
