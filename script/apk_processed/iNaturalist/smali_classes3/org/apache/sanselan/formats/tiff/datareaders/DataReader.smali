.class public abstract Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected final bitsPerSample:[I

.field private count:I

.field protected final last:[I

.field protected final photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final predictor:I

.field protected final samplesPerPixel:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    .line 44
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 45
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    .line 46
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->samplesPerPixel:I

    .line 47
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->predictor:I

    .line 48
    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    return-void
.end method


# virtual methods
.method protected applyPredictor([II)[I
    .locals 3

    .line 82
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->predictor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez p2, :cond_0

    .line 88
    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 90
    :cond_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected decompress([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const v0, 0x8005

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 135
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Tiff: unknown compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Tiff: unknown compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    return-object p1

    .line 127
    :cond_0
    new-instance p2, Lorg/apache/sanselan/common/PackBits;

    invoke-direct {p2}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/apache/sanselan/common/PackBits;->decompress([BI)[B

    move-result-object p1

    .line 129
    iget p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    return-object p1

    .line 111
    :cond_1
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x8

    .line 115
    new-instance v0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;

    const/16 v1, 0x4d

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(II)V

    .line 118
    invoke-virtual {v0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->setTiffLZWMode()V

    .line 120
    invoke-virtual {v0, p2, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 61
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    aget v2, v2, v1

    .line 62
    invoke-virtual {p1, v2}, Lorg/apache/sanselan/common/BitInputStream;->readBits(I)I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    and-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v2

    shl-int v2, v3, v4

    if-lez v5, :cond_0

    const/4 v3, 0x1

    shl-int v4, v3, v4

    sub-int/2addr v4, v3

    or-int/2addr v2, v4

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    add-int/lit8 v2, v2, -0x8

    shr-int/2addr v3, v2

    .line 74
    :cond_2
    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public abstract readImageData(Ljava/awt/image/BufferedImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
