.class public Lorg/apache/sanselan/formats/pnm/PGMFileInfo;
.super Lorg/apache/sanselan/formats/pnm/FileInfo;
.source "PGMFileInfo.java"


# instance fields
.field private final max:I


# direct methods
.method public constructor <init>(IIZI)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/pnm/FileInfo;-><init>(IIZ)V

    .line 33
    iput p4, p0, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;->max:I

    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getColorType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getImageType()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "PGM: portable pixmap file\tformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-pixmap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    const/high16 v0, -0x1000000

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1

    .line 70
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PGM: Unexpected EOF"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method
