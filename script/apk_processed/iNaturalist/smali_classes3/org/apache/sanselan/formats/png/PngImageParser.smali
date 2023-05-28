.class public Lorg/apache/sanselan/formats/png/PngImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PngImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/png/PngConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".png"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    return-void
.end method

.method private filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 4

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 386
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 388
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 389
    iget v3, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    if-ne v3, p2, :cond_0

    .line 390
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getColorTypeDescription(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown Color Type"

    return-object p1

    :pswitch_0
    const-string p1, "grayscale w/ alpha"

    return-object p1

    :pswitch_1
    const-string p1, "indexed rgb"

    return-object p1

    :pswitch_2
    const-string p1, "rgb"

    return-object p1

    :cond_0
    const-string p1, "RGB w/ alpha"

    return-object p1

    :cond_1
    const-string p1, "grayscale"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransparencyFilter(ILorg/apache/sanselan/formats/png/chunks/PNGChunk;)Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 467
    new-instance p2, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Simple Transparency not compatible with ColorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 461
    :pswitch_0
    new-instance p1, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;-><init>([B)V

    return-object p1

    .line 459
    :pswitch_1
    new-instance p1, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;-><init>([B)V

    return-object p1

    .line 457
    :cond_0
    new-instance p1, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {p1, p2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;-><init>([B)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasAlphaChannel(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 414
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isGrayscale(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 331
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v0

    :pswitch_1
    return v2

    :pswitch_2
    return v2

    :cond_0
    return v2

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private keepChunk(I[I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 108
    aget v3, p2, v2

    if-ne v3, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private readChunks(Ljava/io/InputStream;[IZ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    :cond_0
    iget-boolean v1, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v1, :cond_1

    .line 122
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Length"

    const-string v2, "Not a Valid PNG File"

    .line 124
    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    const-string v2, "ChunkType"

    const-string v3, "Not a Valid PNG File"

    .line 125
    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 127
    iget-boolean v3, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_2

    const-string v3, "ChunkType"

    .line 129
    invoke-virtual {p0, v3, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->printCharQuad(Ljava/lang/String;I)V

    const-string v3, "Length"

    .line 130
    invoke-virtual {p0, v3, v1, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 132
    :cond_2
    invoke-direct {p0, v2, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->keepChunk(I[I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v5, "Chunk Data"

    const-string v6, "Not a Valid PNG File: Couldn\'t read Chunk Data."

    .line 137
    invoke-virtual {p0, v5, v1, p1, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v6, "Not a Valid PNG File"

    .line 140
    invoke-virtual {p0, p1, v1, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 142
    :goto_0
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    const-string v6, "bytes"

    .line 144
    array-length v7, v5

    invoke-virtual {p0, v6, v7, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_4
    const-string v4, "CRC"

    const-string v6, "Not a Valid PNG File"

    .line 146
    invoke-virtual {p0, v4, p1, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_e

    .line 150
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    if-ne v2, v3, :cond_5

    .line 151
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 152
    :cond_5
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    if-ne v2, v3, :cond_6

    .line 153
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_6
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    if-ne v2, v3, :cond_7

    .line 155
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_7
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    if-ne v2, v3, :cond_8

    .line 157
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_8
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    if-ne v2, v3, :cond_9

    .line 159
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_9
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    if-ne v2, v3, :cond_a

    .line 161
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_a
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    if-ne v2, v3, :cond_b

    .line 163
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_b
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    if-ne v2, v3, :cond_c

    .line 165
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_c
    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    if-ne v2, v3, :cond_d

    .line 167
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_d
    new-instance v3, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_e

    return-object v0

    .line 175
    :cond_e
    sget v1, Lorg/apache/sanselan/formats/png/PngImageParser;->IEND:I

    if-ne v2, v1, :cond_0

    return-object v0
.end method

.method private readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[IZ)Ljava/util/ArrayList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    .line 210
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 213
    invoke-static {p1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 214
    :goto_2
    throw p2
.end method

.method private readSignature(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->PNG_Signature:[B

    const-string v1, "Not a Valid PNG Segment: Incorrect Signature"

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    return-void
.end method

.method private samplesPerPixel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 379
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 803
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 807
    invoke-virtual {v0, p1, v2}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 810
    invoke-direct {p0, p2, v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p2

    .line 812
    sget v0, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    invoke-direct {p0, p2, v0}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 815
    iget-boolean p1, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz p1, :cond_1

    .line 816
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "PNG contains more than one Header"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 819
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 820
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Color: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {p0, v0}, Lorg/apache/sanselan/formats/png/PngImageParser;->getColorTypeDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "chunks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    return v1

    .line 829
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 831
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 832
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/sanselan/formats/png/PngImageParser;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string p2, ""

    .line 836
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v3
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

    .line 89
    sget-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    .line 94
    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    sget-object v1, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "VERBOSE"

    const/4 v3, 0x0

    .line 626
    invoke-static {v1, v2, v3}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    const-string v2, "VERBOSE"

    .line 629
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VERBOSE"

    .line 630
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x7

    .line 637
    new-array v2, v2, [I

    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    aput v4, v2, v3

    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    aput v6, v2, v4

    const/4 v4, 0x3

    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    aput v6, v2, v4

    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    const/4 v6, 0x4

    aput v4, v2, v6

    const/4 v4, 0x5

    sget v7, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    aput v7, v2, v4

    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->sRGB:I

    const/4 v7, 0x6

    aput v4, v2, v7

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 640
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_18

    .line 643
    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    invoke-direct {v0, v2, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 644
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_17

    .line 647
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 649
    sget v8, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    invoke-direct {v0, v2, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 650
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v5, :cond_16

    .line 654
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v5, :cond_1

    .line 655
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    goto :goto_0

    :cond_1
    move-object v8, v10

    .line 659
    :goto_0
    sget v9, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    invoke-direct {v0, v2, v9}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 660
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v5, :cond_15

    .line 663
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v12, 0x0

    .line 664
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 666
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;

    .line 667
    iget-object v13, v13, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;->bytes:[B

    .line 669
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 672
    :cond_2
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 678
    sget v11, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    invoke-direct {v0, v2, v11}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 679
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 681
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 682
    iget v12, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {v0, v12, v11}, Lorg/apache/sanselan/formats/png/PngImageParser;->getTransparencyFilter(ILorg/apache/sanselan/formats/png/chunks/PNGChunk;)Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    move-result-object v11

    move-object/from16 v21, v11

    goto :goto_2

    :cond_3
    move-object/from16 v21, v10

    .line 689
    :goto_2
    sget v11, Lorg/apache/sanselan/formats/png/PngImageParser;->sRGB:I

    invoke-direct {v0, v2, v11}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 690
    sget v12, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    invoke-direct {v0, v2, v12}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 691
    sget v13, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    invoke-direct {v0, v2, v13}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 692
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v13, v5, :cond_14

    .line 694
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v13, v5, :cond_13

    .line 696
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v13, v5, :cond_12

    .line 699
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v5, :cond_4

    .line 702
    iget-boolean v2, v0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v2, :cond_9

    .line 703
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "sRGB, no color management neccesary."

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 704
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v5, :cond_6

    .line 706
    iget-boolean v11, v0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v11, :cond_5

    .line 707
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "iCCP."

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 709
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    .line 710
    iget-object v2, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    .line 712
    invoke-static {v2}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v2

    move-object/from16 v20, v10

    move-object v10, v2

    goto :goto_5

    .line 713
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 715
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;

    .line 716
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->getGamma()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, v11

    .line 721
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v15, v17

    if-ltz v2, :cond_7

    .line 723
    new-instance v2, Lorg/apache/sanselan/formats/png/GammaCorrection;

    invoke-direct {v2, v11, v12, v13, v14}, Lorg/apache/sanselan/formats/png/GammaCorrection;-><init>(DD)V

    goto :goto_3

    :cond_7
    move-object v2, v10

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v8, :cond_8

    .line 727
    invoke-virtual {v8, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->correct(Lorg/apache/sanselan/formats/png/GammaCorrection;)V

    :cond_8
    move-object/from16 v20, v2

    goto :goto_5

    :cond_9
    :goto_4
    move-object/from16 v20, v10

    .line 733
    :goto_5
    iget v12, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    .line 734
    iget v13, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    .line 735
    iget v2, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    .line 736
    iget v15, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    .line 740
    iget v11, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    if-nez v11, :cond_11

    .line 744
    iget v11, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {v0, v11}, Lorg/apache/sanselan/formats/png/PngImageParser;->samplesPerPixel(I)I

    move-result v11

    .line 745
    iget v14, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {v0, v14}, Lorg/apache/sanselan/formats/png/PngImageParser;->isGrayscale(I)Z

    move-result v14

    mul-int v18, v15, v11

    if-eq v2, v6, :cond_a

    if-ne v2, v7, :cond_b

    :cond_a
    const/4 v3, 0x1

    :cond_b
    if-eqz v14, :cond_c

    .line 754
    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v1

    invoke-interface {v1, v12, v13, v3}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v1

    goto :goto_6

    .line 757
    :cond_c
    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v1

    invoke-interface {v1, v12, v13, v3}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 760
    :goto_6
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 761
    new-instance v14, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v14, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 765
    iget v3, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    if-nez v3, :cond_d

    .line 766
    new-instance v3, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;

    move-object v11, v3

    move v6, v15

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v6

    move-object/from16 v19, v8

    invoke-direct/range {v11 .. v21}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    goto :goto_7

    :cond_d
    move v6, v15

    .line 769
    iget v3, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    if-ne v3, v5, :cond_10

    .line 770
    new-instance v3, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;

    move-object v11, v3

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v6

    move-object/from16 v19, v8

    invoke-direct/range {v11 .. v21}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    .line 777
    :goto_7
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/png/ScanExpediter;->drive()V

    if-eqz v10, :cond_f

    .line 781
    new-instance v2, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct {v2}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    invoke-virtual {v2, v10}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Ljava/awt/color/ICC_Profile;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 782
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 784
    :cond_e
    new-instance v2, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v2, v10}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 786
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v3

    .line 787
    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v3

    .line 789
    new-instance v4, Lorg/apache/sanselan/ColorTools;

    invoke-direct {v4}, Lorg/apache/sanselan/ColorTools;-><init>()V

    invoke-virtual {v4, v1, v2, v3}, Lorg/apache/sanselan/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    :cond_f
    return-object v1

    .line 774
    :cond_10
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown InterlaceMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_11
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PNG: unknown FilterMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_12
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG: unexpected iCCP chunk"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :cond_13
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG: unexpected gAMA chunk"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_14
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG: unexpected sRGB chunk"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_15
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG missing image data"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_16
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG contains more than one Palette"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_17
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG contains more than one Header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_18
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG: no chunks"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".png"

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

    .line 221
    new-array v0, p2, [I

    sget v1, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    .line 234
    iget-object p1, p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    return-object p1

    .line 230
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG contains more than one ICC Profile "

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x7

    .line 476
    new-array v1, v1, [I

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    const/4 v6, 0x4

    aput v2, v1, v6

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    const/4 v6, 0x5

    aput v2, v1, v6

    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    const/4 v6, 0x6

    aput v2, v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 482
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v4, :cond_c

    .line 485
    sget v2, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_b

    .line 489
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 494
    sget v8, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    invoke-direct {v0, v1, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 495
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 498
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    const/16 v23, 0x1

    goto :goto_0

    .line 500
    :cond_0
    iget v2, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {v0, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->hasAlphaChannel(I)Z

    const/16 v23, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 504
    sget v8, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    invoke-direct {v0, v1, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 505
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v4, :cond_a

    .line 508
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v4, :cond_1

    .line 509
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;

    .line 511
    :cond_1
    sget v8, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    invoke-direct {v0, v1, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 512
    sget v9, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    invoke-direct {v0, v1, v9}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 513
    sget v10, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    invoke-direct {v0, v1, v10}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 516
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 519
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 521
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;

    .line 522
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v13, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v13, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {v13}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 525
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 527
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;

    .line 528
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v13, v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 531
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 533
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 534
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, v8, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v8}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 538
    :cond_4
    iget v3, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    iget v8, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {v0, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->samplesPerPixel(I)I

    move-result v8

    mul-int v10, v3, v8

    .line 540
    sget-object v12, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    const-string v13, "PNG Portable Network Graphics"

    .line 542
    iget v14, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    const-string v3, "image/png"

    const/16 v16, 0x1

    .line 545
    iget v9, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    .line 546
    iget v8, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    if-eqz v8, :cond_5

    const/16 v22, 0x1

    goto :goto_4

    :cond_5
    const/16 v22, 0x0

    :goto_4
    const/high16 v8, -0x40800000    # -1.0f

    const/16 v17, -0x1

    if-eqz v2, :cond_6

    .line 562
    iget v5, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->UnitSpecifier:I

    if-ne v5, v4, :cond_6

    const-wide v17, 0x3f9a027525460aa6L    # 0.0254

    .line 566
    iget v5, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    move-object/from16 v28, v7

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v6, v9

    .line 569
    iget v8, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    move/from16 v29, v5

    int-to-double v4, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    mul-double v6, v6, v17

    double-to-float v4, v6

    .line 571
    iget v5, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v6, v14

    .line 574
    iget v2, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    move/from16 v30, v4

    move/from16 v31, v5

    int-to-double v4, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    mul-double v6, v6, v17

    double-to-float v2, v6

    move/from16 v18, v2

    move/from16 v19, v29

    move/from16 v20, v30

    move/from16 v17, v31

    goto :goto_5

    :cond_6
    move-object/from16 v28, v7

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, -0x1

    const/high16 v20, -0x40800000    # -1.0f

    :goto_5
    const-string v2, "Png"

    .line 582
    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    invoke-direct {v0, v1, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_7

    move-object/from16 v7, v28

    const/16 v24, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v7, v28

    const/16 v24, 0x0

    .line 587
    :goto_6
    iget v1, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    if-eqz v1, :cond_9

    const/4 v5, 0x6

    if-eq v1, v5, :cond_8

    packed-switch v1, :pswitch_data_0

    .line 605
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png: Unknown ColorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, v7, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :pswitch_0
    const/16 v25, 0x2

    goto :goto_7

    :cond_9
    :pswitch_1
    const/16 v25, 0x1

    :goto_7
    const-string v26, "PNG Filter"

    .line 611
    new-instance v1, Lorg/apache/sanselan/formats/png/PngImageInfo;

    move-object v8, v1

    move v4, v9

    move-object v9, v2

    move-object v2, v15

    move-object v15, v3

    move/from16 v21, v4

    move-object/from16 v27, v2

    invoke-direct/range {v8 .. v27}, Lorg/apache/sanselan/formats/png/PngImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 506
    :cond_a
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PNG contains more than one pHYs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_b
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG contains more than one Header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_c
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNG: no chunks"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 242
    new-array v0, p2, [I

    sget v1, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 250
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 252
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    iget p1, p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 248
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG contains more than one Header"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Png: No chunks"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x2

    .line 268
    new-array p2, p2, [I

    sget v0, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    const/4 v1, 0x0

    aput v0, p2, v1

    sget v0, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    const/4 v2, 0x1

    aput v0, p2, v2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 271
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p2, v2, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    new-instance p2, Lorg/apache/sanselan/common/ImageMetadata;

    invoke-direct {p2}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 276
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 278
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;

    .line 280
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lorg/apache/sanselan/common/ImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Png-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 863
    new-array v0, p2, [I

    sget v1, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    goto :goto_2

    .line 868
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 869
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 871
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 872
    invoke-virtual {v4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getKeyword()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XML:com.adobe.xmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 874
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 877
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p2, :cond_3

    return-object v0

    .line 879
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_4

    .line 883
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 884
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 880
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "PNG contains more than one XMP chunk."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    new-instance v0, Lorg/apache/sanselan/formats/png/PngWriter;

    invoke-direct {v0, p3}, Lorg/apache/sanselan/formats/png/PngWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/PngWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
