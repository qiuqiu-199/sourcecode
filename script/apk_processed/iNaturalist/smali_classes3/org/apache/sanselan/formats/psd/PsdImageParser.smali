.class public Lorg/apache/sanselan/formats/psd/PsdImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PsdImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field public static final BLOCK_NAME_XMP:Ljava/lang/String; = "XMP"

.field private static final COLOR_MODE_INDEXED:I = 0x2

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".psd"

.field public static final IMAGE_RESOURCE_ID_ICC_PROFILE:I = 0x40f

.field public static final IMAGE_RESOURCE_ID_XMP:I = 0x424

.field private static final PSD_HEADER_LENGTH:I = 0x1a

.field private static final PSD_SECTION_COLOR_MODE:I = 0x1

.field private static final PSD_SECTION_HEADER:I = 0x0

.field private static final PSD_SECTION_IMAGE_DATA:I = 0x4

.field private static final PSD_SECTION_IMAGE_RESOURCES:I = 0x2

.field private static final PSD_SECTION_LAYER_AND_MASK_DATA:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".psd"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x4d

    .line 54
    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    return-void
.end method

.method private findImageResourceBlock(Ljava/util/ArrayList;I)Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 589
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 591
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 593
    iget v2, v1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getChannelsPerMode(I)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    return v2

    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    const/4 p1, 0x3

    return p1

    :pswitch_6
    return v2

    :pswitch_7
    return v1

    :pswitch_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getData(Lorg/apache/sanselan/common/byteSources/ByteSource;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1a

    if-nez p2, :cond_0

    :try_start_1
    const-string p2, "Header"

    const-string v1, "Not a Valid PSD File"

    .line 360
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    .line 362
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ColorModeDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 364
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string p2, "ColorModeData"

    const-string v1, "Not a Valid PSD File"

    .line 368
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_1
    return-object p2

    .line 371
    :cond_1
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ImageResourcesLength"

    const-string v1, "Not a Valid PSD File"

    .line 375
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "ImageResources"

    const-string v1, "Not a Valid PSD File"

    .line 379
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 412
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_2
    return-object p2

    .line 382
    :cond_2
    :try_start_7
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "LayerAndMaskDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 386
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const-string p2, "LayerAndMaskData"

    const-string v1, "Not a Valid PSD File"

    .line 390
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 412
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_3
    return-object p2

    .line 393
    :cond_3
    :try_start_9
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "Compression"

    const-string v1, "Not a Valid PSD File"

    .line 397
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 412
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 419
    :goto_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getInputStream: Unknown Section: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    .line 412
    :goto_5
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 415
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 416
    :goto_6
    throw p2
.end method

.method private getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x1a

    .line 304
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ColorModeDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 307
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    return-object p1

    .line 313
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ImageResourcesLength"

    const-string v1, "Not a Valid PSD File"

    .line 317
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    return-object p1

    .line 323
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "LayerAndMaskDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 327
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    return-object p1

    .line 333
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "Compression"

    const-string v1, "Not a Valid PSD File"

    .line 337
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    return-object p1

    .line 345
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getInputStream: Unknown Section: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private keepImageResourceBlock(I[I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 187
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 188
    aget v3, p2, v2

    if-ne p1, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "Not a Valid PSD File"

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "Not a Valid PSD File"

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    const-string v0, "Reserved"

    const-string v1, "Not a Valid PSD File"

    const/4 v2, 0x6

    .line 114
    invoke-virtual {p0, v0, v2, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v4

    const-string v0, "Channels"

    const-string v1, "Not a Valid PSD File"

    .line 117
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    const-string v0, "Rows"

    const-string v1, "Not a Valid PSD File"

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v6

    const-string v0, "Columns"

    const-string v1, "Not a Valid PSD File"

    .line 119
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    const-string v0, "Depth"

    const-string v1, "Not a Valid PSD File"

    .line 120
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v0, "Mode"

    const-string v1, "Not a Valid PSD File"

    .line 121
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 123
    new-instance p1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;-><init>(I[BIIIII)V

    return-object p1

    nop

    :array_0
    .array-data 1
        0x38t
        0x42t
        0x50t
        0x53t
    .end array-data
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 97
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 100
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 101
    :goto_2
    throw v0
.end method

.method private readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-result-object v1

    const-string v0, "ColorModeDataLength"

    const-string v2, "Not a Valid PSD File"

    .line 134
    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-virtual {p0, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "ImageResourcesLength"

    const-string v3, "Not a Valid PSD File"

    .line 141
    invoke-virtual {p0, v0, p1, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    .line 143
    invoke-virtual {p0, p1, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "LayerAndMaskDataLength"

    const-string v4, "Not a Valid PSD File"

    .line 148
    invoke-virtual {p0, v0, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 150
    invoke-virtual {p0, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->skipBytes(Ljava/io/InputStream;I)V

    const-string v0, "Compression"

    const-string v5, "Not a Valid PSD File"

    .line 155
    invoke-virtual {p0, v0, p1, v5}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v5

    .line 163
    new-instance p1, Lorg/apache/sanselan/formats/psd/ImageContents;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/psd/ImageContents;-><init>(Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;IIII)V

    return-object p1
.end method

.method private readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 438
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 441
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 442
    :goto_2
    throw v0
.end method

.method private readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-lez p4, :cond_3

    const/4 v1, 0x4

    .line 202
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "Not a Valid PSD File"

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    add-int/lit8 p4, p4, -0x4

    const-string v1, "ID"

    const-string v2, "Not a Valid PSD File"

    .line 206
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    add-int/lit8 p4, p4, -0x2

    const-string v2, "NameLength"

    const-string v3, "Not a Valid PSD File"

    .line 209
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    add-int/lit8 p4, p4, -0x1

    const-string v3, "NameData"

    const-string v4, "Not a Valid PSD File"

    .line 212
    invoke-virtual {p0, v3, v2, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v3

    sub-int/2addr p4, v2

    add-int/lit8 v2, v2, 0x1

    .line 215
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const-string v2, "NameDiscard"

    const-string v4, "Not a Valid PSD File"

    .line 217
    invoke-virtual {p0, v2, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    :cond_1
    const-string v2, "Size"

    const-string v4, "Not a Valid PSD File"

    .line 222
    invoke-virtual {p0, v2, p1, v4}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    add-int/lit8 p4, p4, -0x4

    const-string v4, "Data"

    const-string v5, "Not a Valid PSD File"

    .line 228
    invoke-virtual {p0, v4, v2, p1, v5}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v4

    sub-int/2addr p4, v2

    .line 232
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "DataDiscard"

    const-string v5, "Not a Valid PSD File"

    .line 234
    invoke-virtual {p0, v2, p1, v5}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    .line 239
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->keepImageResourceBlock(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;-><init>(I[B[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz p3, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p3, :cond_0

    return-object v0

    :cond_3
    return-object v0

    :array_0
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
    .end array-data
.end method

.method private readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 264
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x2

    .line 268
    invoke-direct {p0, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "ImageResources"

    .line 269
    iget v1, v1, Lorg/apache/sanselan/formats/psd/ImageContents;->ImageResourcesLength:I

    const-string v2, "Not a Valid PSD File"

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks([B[II)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catchall_2
    move-exception p2

    const/4 v0, 0x0

    move-object p1, v0

    .line 279
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 282
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 283
    :goto_2
    throw p2
.end method

.method private readImageResourceBlocks([B[II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p2, p3, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gif.dumpImageFile"

    .line 602
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 609
    invoke-virtual {v0, p1, v2}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v0

    .line 614
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/psd/ImageContents;->dump(Ljava/io/PrintWriter;)V

    .line 615
    iget-object v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 617
    invoke-direct {p0, p2, v0, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object p2

    .line 621
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "blocks.size(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 626
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 627
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Lorg/apache/sanselan/formats/psd/PSDConstants;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/psd/PSDConstants;-><init>()V

    iget v0, v0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    invoke-virtual {v3, v0}, Lorg/apache/sanselan/formats/psd/PSDConstants;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 643
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

    .line 74
    sget-object v0, Lorg/apache/sanselan/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 659
    iget-object v1, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 671
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    .line 675
    iget v2, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 676
    iget v1, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    const/4 v4, 0x0

    .line 684
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object p2

    invoke-interface {p2, v2, v1, v4}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 688
    iget-object v1, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    iget v1, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    packed-switch v1, :pswitch_data_0

    .line 729
    :pswitch_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown Mode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :pswitch_1
    new-instance v1, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserLab;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserLab;-><init>()V

    goto :goto_0

    .line 701
    :pswitch_2
    new-instance v1, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;-><init>()V

    goto :goto_0

    .line 698
    :pswitch_3
    new-instance v1, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;-><init>()V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    .line 710
    invoke-direct {p0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getData(Lorg/apache/sanselan/common/byteSources/ByteSource;I)[B

    move-result-object v1

    .line 718
    new-instance v2, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;

    invoke-direct {v2, v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;-><init>([B)V

    move-object v1, v2

    goto :goto_0

    .line 695
    :pswitch_5
    new-instance v1, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserGrayscale;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserGrayscale;-><init>()V

    goto :goto_0

    .line 691
    :pswitch_6
    new-instance v1, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserBitmap;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserBitmap;-><init>()V

    .line 733
    :goto_0
    iget v2, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    packed-switch v2, :pswitch_data_1

    .line 742
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown Compression: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :pswitch_7
    new-instance v2, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;

    invoke-direct {v2, v1}, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    goto :goto_1

    .line 736
    :pswitch_8
    new-instance v2, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;

    invoke-direct {v2, v1}, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    :goto_1
    const/4 v1, 0x4

    .line 750
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/sanselan/common/byteSources/ByteSource;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 751
    :try_start_1
    invoke-virtual {v2, p1, p2, v0, p0}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V

    .line 753
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 762
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 765
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_1

    .line 762
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 765
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 766
    :cond_1
    :goto_4
    throw p2

    .line 661
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 657
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD: Couldn\'t read blocks"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".psd"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 453
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/16 v2, 0x40f

    aput v2, v0, v1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 456
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 460
    iget-object p1, p1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    if-eqz p1, :cond_2

    .line 461
    array-length v1, p1

    if-ge v1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-direct/range {p0 .. p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v1, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    if-eqz v1, :cond_2

    .line 532
    iget v15, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 533
    iget v8, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 535
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget v2, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    iget v3, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    move-object/from16 v14, p0

    invoke-direct {v14, v3}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->getChannelsPerMode(I)I

    move-result v3

    mul-int v2, v2, v3

    if-gez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 545
    :goto_0
    sget-object v6, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    const-string v7, "Photoshop"

    const-string v9, "image/x-photoshop"

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/16 v2, 0x48

    int-to-double v11, v15

    move/from16 v21, v4

    int-to-double v3, v2

    .line 554
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v3

    double-to-float v12, v11

    move/from16 v22, v12

    int-to-double v11, v8

    .line 556
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v3

    double-to-float v12, v11

    const-string v3, "Psd"

    const/16 v17, 0x0

    .line 561
    iget v1, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    const/16 v19, -0x2

    .line 565
    iget v0, v0, Lorg/apache/sanselan/formats/psd/ImageContents;->Compression:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_2
    move-object/from16 v20, v0

    goto :goto_3

    :pswitch_0
    const-string v0, "Photoshop"

    goto :goto_2

    :pswitch_1
    const-string v0, "None"

    goto :goto_2

    .line 577
    :goto_3
    new-instance v0, Lorg/apache/sanselan/ImageInfo;

    move-object v2, v0

    const/16 v13, 0x48

    move/from16 v4, v21

    const/16 v1, 0x48

    move v11, v1

    move/from16 v1, v22

    move v14, v1

    invoke-direct/range {v2 .. v20}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v0

    .line 530
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "PSD: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_3
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "PSD: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 473
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    iget p1, p1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 471
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD: couldn\'t read header"

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

    const-string v0, "PSD-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/psd/ImageContents;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 799
    iget-object p2, p2, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 803
    new-array v0, p2, [I

    const/16 v1, 0x424

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/sanselan/common/byteSources/ByteSource;[II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 806
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 823
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p2, :cond_1

    return-object v0

    .line 825
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_2

    .line 829
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;

    .line 834
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    iget-object p1, p1, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    array-length p1, p1

    const-string v1, "utf-8"

    invoke-direct {p2, v0, v2, p1, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 838
    :catch_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Invalid JPEG XMP Segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 826
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD contains more than one XMP block."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object v0

    .line 801
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 797
    :cond_5
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PSD: Couldn\'t read blocks"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
