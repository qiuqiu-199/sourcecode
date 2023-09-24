.class public Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;
.super Lorg/apache/sanselan/formats/psd/datareaders/DataReader;
.source "UncompressedDataReader.java"


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/psd/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;)V

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;Lorg/apache/sanselan/common/BinaryFileParser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p3, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 43
    iget v1, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 44
    iget v2, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p4, v3}, Lorg/apache/sanselan/common/BinaryFileParser;->setDebug(Z)V

    .line 48
    iget-object p4, p0, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    invoke-virtual {p4}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result p4

    .line 49
    iget v0, v0, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Depth:I

    .line 50
    new-instance v4, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    const/16 v5, 0x4d

    invoke-direct {v4, p1, v5}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    new-instance p1, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;

    const/16 v5, 0x8

    invoke-direct {p1, v4, v5}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;I)V

    .line 53
    filled-new-array {p4, v2, v1}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p4, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v8

    .line 60
    aget-object v9, v4, v5

    aget-object v9, v9, v6

    int-to-byte v8, v8

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lorg/apache/sanselan/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;

    invoke-virtual {p1, v4, p2, p3}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;)V

    return-void
.end method
