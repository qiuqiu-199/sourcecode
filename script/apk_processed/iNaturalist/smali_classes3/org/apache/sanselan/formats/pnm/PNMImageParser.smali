.class public Lorg/apache/sanselan/formats/pnm/PNMImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PNMImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/pnm/PNMConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pnm"

.field public static final PARAM_KEY_PNM_RAWBITS:Ljava/lang/String; = "PNM_RAWBITS"

.field public static final PARAM_VALUE_PNM_RAWBITS_NO:Ljava/lang/String; = "NO"

.field public static final PARAM_VALUE_PNM_RAWBITS_YES:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".pbm"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".pgm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ".ppm"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".pnm"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x49

    .line 44
    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    return-void
.end method

.method private getColorTable([B)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 242
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 244
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 248
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 249
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v4, 0x2

    .line 250
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    shl-int/2addr v4, v2

    or-int/2addr v4, v5

    .line 255
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 240
    :cond_1
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad Color Table Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Identifier1"

    const-string v1, "Not a Valid PNM File"

    .line 79
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v1, "Identifier2"

    const-string v2, "Not a Valid PNM File"

    .line 80
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 82
    new-instance v2, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;

    invoke-direct {v2, p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    .line 84
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 85
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x50

    if-ne v0, v4, :cond_6

    const/16 v0, 0x31

    const/4 v4, 0x0

    if-ne v1, v0, :cond_0

    .line 98
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;

    invoke-direct {v0, p1, v3, v4}, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;-><init>(IIZ)V

    return-object v0

    :cond_0
    const/16 v0, 0x34

    const/4 v5, 0x1

    if-ne v1, v0, :cond_1

    .line 100
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;

    invoke-direct {v0, p1, v3, v5}, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;-><init>(IIZ)V

    return-object v0

    :cond_1
    const/16 v0, 0x32

    if-ne v1, v0, :cond_2

    .line 103
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    new-instance v1, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;

    invoke-direct {v1, p1, v3, v4, v0}, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_2
    const/16 v0, 0x35

    if-ne v1, v0, :cond_3

    .line 107
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    new-instance v1, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;

    invoke-direct {v1, p1, v3, v5, v0}, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_3
    const/16 v0, 0x33

    if-ne v1, v0, :cond_4

    .line 111
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 112
    new-instance v1, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;

    invoke-direct {v1, p1, v3, v4, v0}, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;-><init>(IIZI)V

    return-object v1

    :cond_4
    const/16 v0, 0x36

    if-ne v1, v0, :cond_5

    .line 115
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    new-instance v1, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;

    invoke-direct {v1, p1, v3, v5, v0}, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;-><init>(IIZI)V

    return-object v1

    .line 119
    :cond_5
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "PNM file has invalid header."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_6
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string v0, "PNM file has invalid header."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 136
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 139
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 140
    :goto_2
    throw v0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pnm.dumpImageFile"

    .line 221
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, ""

    .line 228
    invoke-virtual {p2, p1, v0}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, ""

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public embedICCProfile([B[B)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNM:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v0

    .line 272
    iget v1, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    .line 273
    iget v2, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object p2

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 279
    invoke-virtual {v0, p2, p1}, Lorg/apache/sanselan/formats/pnm/FileInfo;->readImage(Ljava/awt/image/BufferedImage;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    .line 286
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 289
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 290
    :goto_2
    throw p2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".pnm"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct/range {p0 .. p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getBitDepth()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getNumComponents()I

    move-result v2

    mul-int v3, v1, v2

    .line 188
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageType()Lorg/apache/sanselan/ImageFormat;

    move-result-object v5

    .line 189
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getMIMEType()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v15, 0x0

    const/16 v1, 0x48

    .line 197
    iget v2, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    int-to-double v10, v2

    int-to-double v1, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v1

    double-to-float v13, v10

    const/16 v10, 0x48

    .line 199
    iget v7, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    int-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v1

    double-to-float v11, v11

    .line 201
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 206
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getColorType()I

    move-result v18

    const-string v19, "None"

    .line 209
    new-instance v20, Lorg/apache/sanselan/ImageInfo;

    move-object/from16 v1, v20

    iget v7, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    iget v14, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    const/16 v12, 0x48

    invoke-direct/range {v1 .. v19}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v20

    .line 183
    :cond_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "PNM: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    iget p1, p1, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 156
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNM: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Pbm-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    const-string v2, "PNM_RAWBITS"

    .line 306
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "NO"

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "FORMAT"

    .line 313
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 316
    sget-object v3, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PBMWriter;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/pnm/PBMWriter;-><init>(Z)V

    goto :goto_0

    .line 318
    :cond_1
    sget-object v3, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PGMWriter;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/pnm/PGMWriter;-><init>(Z)V

    goto :goto_0

    .line 320
    :cond_2
    sget-object v3, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PPMWriter;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/pnm/PPMWriter;-><init>(Z)V

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 326
    new-instance v0, Lorg/apache/sanselan/formats/pnm/PPMWriter;

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/pnm/PPMWriter;-><init>(Z)V

    .line 329
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p3, "FORMAT"

    .line 332
    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "FORMAT"

    .line 333
    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p3

    if-gtz p3, :cond_6

    .line 341
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/sanselan/formats/pnm/PNMWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    .line 337
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 338
    new-instance p2, Lorg/apache/sanselan/ImageWriteException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unknown parameter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
