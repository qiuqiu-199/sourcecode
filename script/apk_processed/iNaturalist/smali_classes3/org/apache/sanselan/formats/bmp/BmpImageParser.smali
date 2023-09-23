.class public Lorg/apache/sanselan/formats/bmp/BmpImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "BmpImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final BITMAP_FILE_HEADER_SIZE:I = 0xe

.field private static final BITMAP_INFO_HEADER_SIZE:I = 0x28

.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final BMP_HEADER_SIGNATURE:[B

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bmp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".bmp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    const/16 v0, 0x49

    .line 57
    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    return-void
.end method

.method private getBmpTypeDescription(II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    const/16 v1, 0x4d

    if-ne p2, v1, :cond_0

    const-string p1, "Windows 3.1x, 95, NT,"

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v0, 0x41

    if-ne p2, v0, :cond_1

    const-string p1, "OS/2 Bitmap Array"

    return-object p1

    :cond_1
    const/16 v0, 0x49

    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    const-string p1, "OS/2 Color Icon"

    return-object p1

    :cond_2
    const/16 v2, 0x50

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    const-string p1, "OS/2 Color Pointer"

    return-object p1

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    const-string p1, "OS/2 Icon"

    return-object p1

    :cond_4
    if-ne p1, v2, :cond_5

    const/16 p1, 0x54

    if-ne p2, p1, :cond_5

    const-string p1, "OS/2 Pointer"

    return-object p1

    :cond_5
    const-string p1, "Unknown"

    return-object p1
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v1, :cond_3

    const-string v2, "RLE a"

    const-string v3, "BMP: Bad RLE"

    .line 163
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 164
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v3, "RLE b"

    const-string v4, "BMP: Bad RLE"

    .line 165
    invoke-virtual {p0, v3, p1, v4}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 166
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v2, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 190
    div-int v2, v3, p2

    .line 191
    rem-int/2addr v3, p2

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    const-string v2, "RLE c"

    const-string v3, "BMP: Bad RLE"

    .line 182
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 183
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v2, "RLE d"

    const-string v3, "BMP: Bad RLE"

    .line 184
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 185
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const-string v3, "bytes"

    const-string v4, "RLE: Absolute Mode"

    .line 202
    invoke-virtual {p0, v3, v2, p1, v4}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Identifier1"

    const-string v4, "Not a Valid BMP File"

    .line 91
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "Identifier2"

    const-string v4, "Not a Valid BMP File"

    .line 92
    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    const-string v5, "Signature"

    .line 96
    sget-object v8, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    new-array v9, v4, [B

    const/4 v10, 0x0

    aput-byte v6, v9, v10

    aput-byte v7, v9, v3

    invoke-virtual {v2, v5, v8, v9}, Lorg/apache/sanselan/FormatCompliance;->compare_bytes(Ljava/lang/String;[B[B)Z

    :cond_0
    const-string v2, "File Size"

    const-string v5, "Not a Valid BMP File"

    .line 100
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    const-string v2, "Reserved"

    const-string v5, "Not a Valid BMP File"

    .line 101
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    const-string v2, "Bitmap Data Offset"

    const-string v5, "Not a Valid BMP File"

    .line 102
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    const-string v2, "Bitmap Header Size"

    const-string v5, "Not a Valid BMP File"

    .line 105
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    const-string v2, "Width"

    const-string v5, "Not a Valid BMP File"

    .line 107
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    const-string v2, "Height"

    const-string v5, "Not a Valid BMP File"

    .line 108
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    const-string v2, "Planes"

    const-string v5, "Not a Valid BMP File"

    .line 109
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    const-string v2, "Bits Per Pixel"

    const-string v5, "Not a Valid BMP File"

    .line 110
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    const-string v2, "Compression"

    const-string v5, "Not a Valid BMP File"

    .line 112
    invoke-virtual {v0, v2, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    const-string v5, "Bitmap Data Size"

    const-string v4, "Not a Valid BMP File"

    .line 113
    invoke-virtual {v0, v5, v1, v4}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    const-string v5, "HResolution"

    const-string v3, "Not a Valid BMP File"

    .line 115
    invoke-virtual {v0, v5, v1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    const-string v5, "VResolution"

    move/from16 v22, v3

    const-string v3, "Not a Valid BMP File"

    .line 116
    invoke-virtual {v0, v5, v1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    const-string v5, "ColorsUsed"

    move/from16 v23, v3

    const-string v3, "Not a Valid BMP File"

    .line 117
    invoke-virtual {v0, v5, v1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v3

    const-string v5, "ColorsImportant"

    move/from16 v24, v3

    const-string v3, "Not a Valid BMP File"

    .line 118
    invoke-virtual {v0, v5, v1, v3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_1

    const-string v3, "identifier1"

    const/4 v5, 0x1

    .line 123
    invoke-virtual {v0, v3, v6, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "identifier2"

    .line 124
    invoke-virtual {v0, v3, v7, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "fileSize"

    const/4 v5, 0x4

    .line 125
    invoke-virtual {v0, v3, v8, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "reserved"

    .line 126
    invoke-virtual {v0, v3, v9, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bitmapDataOffset"

    .line 127
    invoke-virtual {v0, v3, v10, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bitmapHeaderSize"

    .line 128
    invoke-virtual {v0, v3, v11, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "width"

    .line 129
    invoke-virtual {v0, v3, v12, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "height"

    .line 130
    invoke-virtual {v0, v3, v13, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "planes"

    const/4 v5, 0x2

    .line 131
    invoke-virtual {v0, v3, v14, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bitsPerPixel"

    .line 132
    invoke-virtual {v0, v3, v15, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "compression"

    const/4 v5, 0x4

    .line 133
    invoke-virtual {v0, v3, v2, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bitmapDataSize"

    .line 134
    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "hResolution"

    move/from16 v25, v4

    move/from16 v4, v22

    .line 135
    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "vResolution"

    move/from16 v26, v4

    move/from16 v4, v23

    .line 136
    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "colorsUsed"

    move/from16 v27, v4

    move/from16 v4, v24

    .line 137
    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "colorsImportant"

    .line 138
    invoke-virtual {v0, v3, v1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move/from16 v25, v4

    move/from16 v26, v22

    move/from16 v27, v23

    move/from16 v4, v24

    .line 141
    :goto_0
    new-instance v3, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-object v5, v3

    move/from16 v16, v2

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v4

    move/from16 v21, v1

    invoke-direct/range {v5 .. v21}, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;-><init>(BBIIIIIIIIIIIIII)V

    return-object v3
.end method

.method private readBmpHeaderInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 391
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 394
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 395
    :goto_2
    throw p2
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-result-object p2

    .line 220
    iget v0, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 222
    iget v0, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v1, v0

    :cond_0
    const/4 v2, 0x4

    if-eqz p3, :cond_1

    const-string v3, "ColorsUsed"

    .line 226
    iget v4, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "BitsPerPixel"

    .line 227
    iget v4, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "ColorTableSize"

    .line 228
    invoke-virtual {p0, v3, v0, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "bhi.colorsUsed"

    .line 229
    iget v4, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v3, "Compression"

    .line 230
    iget v4, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 237
    :cond_1
    iget v3, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 284
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "BMP: Unknown Compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-eqz p3, :cond_2

    .line 276
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Compression: BI_BITFIELDS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0xc

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v5, 0xc

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_3

    .line 254
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Compression: BI_RLE4"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    mul-int/lit8 v5, v0, 0x4

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_4

    .line 265
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Compression: BI_RLE8"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    mul-int/lit8 v5, v0, 0x4

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_5

    .line 241
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Compression: BI_RGB"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_5
    iget v1, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-gt v1, v4, :cond_6

    mul-int/lit8 v0, v0, 0x4

    move v5, v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-lez v5, :cond_7

    const-string v3, "ColorTable"

    const-string v6, "Not a Valid BMP File"

    .line 290
    invoke-virtual {p0, v3, v5, p1, v6}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v3

    :cond_7
    if-eqz p3, :cond_9

    const-string v6, "paletteLength"

    .line 295
    invoke-virtual {p0, v6, v5, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 296
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "ColorTable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v3, :cond_8

    const-string v8, "null"

    goto :goto_1

    :cond_8
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    :cond_9
    iget v6, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    iget v7, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    mul-int v6, v6, v7

    .line 302
    iget v7, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    iget v8, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    mul-int v7, v7, v8

    add-int/lit8 v7, v7, 0x7

    div-int/2addr v7, v4

    if-eqz p3, :cond_a

    const-string v4, "bhi.Width"

    .line 311
    iget v8, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    invoke-virtual {p0, v4, v8, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bhi.Height"

    .line 312
    iget v8, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    invoke-virtual {p0, v4, v8, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "ImageLineLength"

    .line 313
    invoke-virtual {p0, v4, v7, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "PixelCount"

    .line 315
    invoke-virtual {p0, v4, v6, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 318
    :cond_a
    :goto_2
    rem-int/lit8 v4, v7, 0x4

    if-eqz v4, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v5, 0x36

    if-eqz p3, :cond_c

    const-string v6, "bhi.BitmapDataOffset"

    .line 327
    iget v8, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p0, v6, v8, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v6, "expectedDataOffset"

    .line 328
    invoke-virtual {p0, v6, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 330
    :cond_c
    iget v6, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    sub-int/2addr v6, v4

    if-ltz v6, :cond_11

    if-lez v6, :cond_d

    const-string v4, "BitmapDataOffset"

    const-string v5, "Not a Valid BMP File"

    .line 337
    invoke-virtual {p0, v4, v6, p1, v5}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    .line 340
    :cond_d
    iget v4, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    mul-int v4, v4, v7

    if-eqz p3, :cond_e

    const-string v5, "imageDataSize"

    .line 343
    invoke-virtual {p0, v5, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_e
    if-eqz v1, :cond_f

    .line 347
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto :goto_3

    :cond_f
    const-string v0, "ImageData"

    const-string v1, "Not a Valid BMP File"

    .line 349
    invoke-virtual {p0, v0, v4, p1, v1}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    :goto_3
    if-eqz p3, :cond_10

    const-string p3, "ImageData.length"

    .line 353
    array-length v0, p1

    invoke-virtual {p0, p3, v0, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 357
    :cond_10
    iget p3, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    packed-switch p3, :pswitch_data_1

    .line 370
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "BMP: Unknown Compression: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->compression:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :pswitch_4
    new-instance p3, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;

    invoke-direct {p3, p2, v3, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserBitFields;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_4

    .line 361
    :pswitch_5
    new-instance p3, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;

    invoke-direct {p3, p2, v3, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRle;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_4

    .line 364
    :pswitch_6
    new-instance p3, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;

    invoke-direct {p3, p2, v3, p1}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParserRgb;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 374
    :goto_4
    new-instance v0, Lorg/apache/sanselan/formats/bmp/ImageContents;

    invoke-direct {v0, p2, v3, p1, p3}, Lorg/apache/sanselan/formats/bmp/ImageContents;-><init>(Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;)V

    return-object v0

    .line 332
    :cond_11
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "BMP has invalid image data offset: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " (expected: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ", paletteLength: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ", headerSize: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x36

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
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

    const-string v0, "bmp.dumpImageFile"

    .line 542
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, p2, v0}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, ""

    .line 548
    invoke-virtual {p2, p1, v0}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p2, ""

    .line 550
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

    .line 76
    sget-object v0, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

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

    if-nez p2, :cond_0

    .line 572
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "VERBOSE"

    const/4 v1, 0x0

    .line 574
    invoke-static {p2, v0, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v0

    const-string v2, "VERBOSE"

    .line 577
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VERBOSE"

    .line 578
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "BUFFERED_IMAGE_FACTORY"

    .line 579
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BUFFERED_IMAGE_FACTORY"

    .line 580
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_5

    .line 588
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 593
    iget-object v2, p1, Lorg/apache/sanselan/formats/bmp/ImageContents;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 597
    iget v3, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 598
    iget v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 601
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object p2

    invoke-interface {p2, v3, v2, v1}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p2

    if-eqz v0, :cond_3

    .line 606
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "width*height: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "width*height*4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    :cond_3
    iget-object p1, p1, Lorg/apache/sanselan/formats/bmp/ImageContents;->pixelParser:Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;

    .line 614
    invoke-virtual {p1, p2}, Lorg/apache/sanselan/formats/bmp/pixelparsers/PixelParser;->processImage(Ljava/awt/image/BufferedImage;)V

    return-object p2

    .line 591
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Couldn\'t read BMP Data"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 585
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".bmp"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    new-instance v0, Lorg/apache/sanselan/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/FormatCompliance;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

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
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 471
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_0
    const-string v2, "VERBOSE"

    const/4 v3, 0x0

    .line 473
    invoke-static {v1, v2, v3}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v2

    const-string v4, "VERBOSE"

    .line 476
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "VERBOSE"

    .line 477
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 485
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {}, Lorg/apache/sanselan/FormatCompliance;->getDefault()Lorg/apache/sanselan/FormatCompliance;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/sanselan/FormatCompliance;Z)Lorg/apache/sanselan/formats/bmp/ImageContents;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 491
    iget-object v2, v1, Lorg/apache/sanselan/formats/bmp/ImageContents;->bhi:Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    .line 492
    iget-object v1, v1, Lorg/apache/sanselan/formats/bmp/ImageContents;->colorTable:[B

    if-eqz v2, :cond_3

    .line 497
    iget v10, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    .line 498
    iget v15, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    .line 500
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 503
    iget v6, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    .line 504
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

    const-string v9, "BMP Windows Bitmap"

    const-string v11, "image/x-ms-bmp"

    const/16 v18, 0x0

    .line 514
    iget v4, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->hResolution:I

    int-to-double v4, v4

    const-wide v13, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v13

    const-wide v16, 0x400451eb851eb852L    # 2.54

    div-double v4, v4, v16

    double-to-int v5, v4

    int-to-double v3, v15

    int-to-double v12, v5

    .line 515
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v12

    double-to-float v3, v3

    .line 517
    iget v4, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->vResolution:I

    int-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v19, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v19

    div-double v12, v12, v16

    double-to-int v13, v12

    move/from16 v23, v5

    int-to-double v4, v10

    move/from16 v24, v15

    int-to-double v14, v13

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v14

    double-to-float v14, v4

    .line 520
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bmp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v5, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-byte v5, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v5, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier1:B

    iget-byte v2, v2, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->identifier2:B

    invoke-direct {v0, v5, v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    const/16 v21, 0x2

    const-string v22, "RLE: Run-Length Encoding"

    .line 530
    new-instance v1, Lorg/apache/sanselan/ImageInfo;

    move-object v4, v1

    move/from16 v2, v23

    const/4 v12, -0x1

    move/from16 v17, v24

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v4 .. v22}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    return-object v1

    .line 495
    :cond_3
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "BMP: couldn\'t read header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_4
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "Couldn\'t read BMP Data"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 482
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 410
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "VERBOSE"

    const/4 v1, 0x0

    .line 412
    invoke-static {p2, v0, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v0

    const-string v1, "VERBOSE"

    .line 415
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VERBOSE"

    .line 416
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 424
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Z)Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 429
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->width:I

    iget p1, p1, Lorg/apache/sanselan/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 427
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "BMP: couldn\'t read header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 421
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
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

    const-string v0, "Bmp-Custom"

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 627
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    :goto_0
    const-string v0, "FORMAT"

    .line 630
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORMAT"

    .line 631
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 639
    new-instance p3, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {p3}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    const/16 v0, 0x100

    invoke-virtual {p3, p1, v0}, Lorg/apache/sanselan/palette/PaletteFactory;->makePaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/sanselan/palette/SimplePalette;

    move-result-object p3

    if-nez p3, :cond_2

    .line 644
    new-instance v0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterRGB;-><init>()V

    goto :goto_1

    .line 646
    :cond_2
    new-instance v0, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;

    invoke-direct {v0, p3}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriterPalette;-><init>(Lorg/apache/sanselan/palette/SimplePalette;)V

    .line 648
    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getImageData(Ljava/awt/image/BufferedImage;)[B

    move-result-object v1

    .line 649
    new-instance v2, Lorg/apache/sanselan/common/BinaryOutputStream;

    const/16 v3, 0x49

    invoke-direct {v2, p2, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v3, 0x42

    .line 653
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v3, 0x4d

    .line 654
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 656
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getPaletteSize()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x36

    array-length v3, v1

    add-int/2addr p2, v3

    .line 660
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    .line 662
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 663
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getPaletteSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x36

    invoke-virtual {v2, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 667
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 668
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/16 v4, 0x28

    .line 671
    invoke-virtual {v2, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 672
    invoke-virtual {v2, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 673
    invoke-virtual {v2, p1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p1, 0x1

    .line 674
    invoke-virtual {v2, p1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 675
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->getBitsPerPixel()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 677
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 678
    array-length p1, v1

    invoke-virtual {v2, p1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 679
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 680
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez p3, :cond_3

    .line 682
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_2

    .line 684
    :cond_3
    invoke-virtual {p3}, Lorg/apache/sanselan/palette/SimplePalette;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 685
    :goto_2
    invoke-virtual {v2, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    .line 690
    invoke-virtual {v0, v2}, Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;->writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 693
    invoke-virtual {v2, v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->writeByteArray([B)V

    return-void

    .line 635
    :cond_4
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 636
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
