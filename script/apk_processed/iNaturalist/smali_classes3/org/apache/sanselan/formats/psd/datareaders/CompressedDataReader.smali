.class public Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;
.super Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
.source "CompressedDataReader.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 45
    iget-object v4, v2, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 46
    iget v5, v4, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 47
    iget v6, v4, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 50
    iget v7, v4, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Channels:I

    mul-int v7, v7, v6

    .line 51
    new-array v8, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_0

    .line 53
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "scanline_bytecount["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSD: bad Image Data"

    invoke-virtual {v3, v11, v1, v12}, Lorg/apache/sanselan/common/BinaryFileParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3, v9}, Lorg/apache/sanselan/common/BinaryFileParser;->setDebug(Z)V

    .line 59
    iget v4, v4, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    .line 61
    iget-object v7, v0, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    invoke-virtual {v7}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v7

    .line 62
    filled-new-array {v7, v6}, [I

    move-result-object v10

    const-class v11, [I

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_2

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_1

    mul-int v13, v11, v6

    add-int/2addr v13, v12

    const-string v14, "scanline"

    .line 68
    aget v13, v8, v13

    const-string v15, "PSD: Missing Image Data"

    invoke-virtual {v3, v14, v13, v1, v15}, Lorg/apache/sanselan/common/BinaryFileParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v13

    .line 72
    new-instance v14, Lorg/apache/sanselan/common/PackBits;

    invoke-direct {v14}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    invoke-virtual {v14, v13, v5}, Lorg/apache/sanselan/common/PackBits;->decompress([BI)[B

    move-result-object v13

    .line 73
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    new-instance v13, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    const/16 v15, 0x4d

    invoke-direct {v13, v14, v15}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    new-instance v14, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;

    const/16 v15, 0x8

    invoke-direct {v14, v13, v15}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;I)V

    .line 77
    invoke-virtual {v14, v4, v5}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v13

    .line 78
    aget-object v14, v10, v11

    aput-object v13, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 82
    :cond_2
    iget-object v1, v0, Lorg/apache/sanselan/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    move-object/from16 v3, p2

    invoke-virtual {v1, v10, v3, v2}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;)V

    return-void
.end method
