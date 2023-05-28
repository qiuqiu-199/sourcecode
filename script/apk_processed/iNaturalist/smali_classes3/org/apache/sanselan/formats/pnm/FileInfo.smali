.class public abstract Lorg/apache/sanselan/formats/pnm/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected final RAWBITS:Z

.field protected final height:I

.field protected final width:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    .line 34
    iput p2, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    .line 35
    iput-boolean p3, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->RAWBITS:Z

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    return-void
.end method

.method public abstract getBitDepth()I
.end method

.method public abstract getColorType()I
.end method

.method public abstract getImageType()Lorg/apache/sanselan/ImageFormat;
.end method

.method public abstract getImageTypeDescription()Ljava/lang/String;
.end method

.method public abstract getMIMEType()Ljava/lang/String;
.end method

.method public abstract getNumComponents()I
.end method

.method public abstract getRGB(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected newline()V
    .locals 0

    return-void
.end method

.method public readImage(Ljava/awt/image/BufferedImage;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p1

    .line 68
    iget-boolean v0, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->RAWBITS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;

    invoke-direct {v0, p2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 72
    :goto_0
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    if-ge p2, v2, :cond_3

    const/4 v2, 0x0

    .line 74
    :goto_1
    iget v3, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    if-ge v2, v3, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I

    move-result v3

    .line 78
    iget v4, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    mul-int v4, v4, p2

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->newline()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_2
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    .line 88
    :goto_3
    iget v3, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    if-ge v2, v3, :cond_2

    .line 90
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getRGB(Ljava/io/InputStream;)I

    move-result v3

    .line 91
    iget v4, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    mul-int v4, v4, v0

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->newline()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
