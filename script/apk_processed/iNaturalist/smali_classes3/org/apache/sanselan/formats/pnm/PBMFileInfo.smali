.class public Lorg/apache/sanselan/formats/pnm/PBMFileInfo;
.super Lorg/apache/sanselan/formats/pnm/FileInfo;
.source "PBMFileInfo.java"


# instance fields
.field private bitcache:I

.field private bits_in_cache:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/pnm/FileInfo;-><init>(IIZ)V

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 70
    iput p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getColorType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageType()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "PBM: portable bitmap fileformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-bitmap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 79
    iput p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 80
    iget p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PBM: Unexpected EOF"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    :goto_0
    iget p1, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v1

    .line 84
    iget v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 85
    iget v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ne p1, v1, :cond_3

    const/high16 p1, -0x1000000

    return p1

    .line 91
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, -0x1000000

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 101
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newline()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 65
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    return-void
.end method
