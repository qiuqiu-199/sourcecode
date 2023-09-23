.class public Lorg/apache/sanselan/formats/png/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/png/PngConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    }
.end annotation


# instance fields
.field private final verbose:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VERBOSE"

    const/4 v1, 0x0

    .line 48
    invoke-static {p1, v0, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    return-void
.end method

.method private getBitDepth(BLjava/util/Map;)B
    .locals 2

    const-string v0, "PNG_BIT_DEPTH"

    .line 313
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0x8

    if-eqz p2, :cond_3

    .line 314
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 316
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    :pswitch_0
    int-to-byte p2, p2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 332
    :pswitch_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-byte v0, p1

    goto :goto_2

    .line 337
    :cond_1
    :pswitch_2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-byte v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, p2

    :cond_3
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getColourType(ZZ)B
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method private final writeChunk(Ljava/io/OutputStream;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_0
    array-length v0, p3

    .line 81
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 90
    :cond_1
    new-instance v0, Lorg/apache/sanselan/formats/png/PngCrc;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/png/PngCrc;-><init>()V

    .line 92
    array-length v1, p2

    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/formats/png/PngCrc;->start_partial_crc([BI)J

    move-result-wide v1

    if-nez p3, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    array-length p2, p3

    invoke-virtual {v0, v1, v2, p3, p2}, Lorg/apache/sanselan/formats/png/PngCrc;->continue_partial_crc(J[BI)J

    move-result-wide v1

    .line 95
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngCrc;->finish_partial_crc(J)J

    move-result-wide p2

    long-to-int p2, p2

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private writeChunkIDAT(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lorg/apache/sanselan/formats/png/PngWriter;->IDAT_CHUNK_TYPE:[B

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void
.end method

.method private writeChunkIEND(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lorg/apache/sanselan/formats/png/PngWriter;->IEND_CHUNK_TYPE:[B

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void
.end method

.method private writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    iget v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->width:I

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 138
    iget v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->height:I

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 139
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->bit_depth:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->colorType:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->filterMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    iget-byte p2, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->interlaceMethod:B

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->IHDR_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void
.end method

.method private writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/sanselan/palette/Palette;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 260
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 265
    invoke-virtual {p2, v3}, Lorg/apache/sanselan/palette/Palette;->getEntry(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v5, 0x0

    shr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 268
    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 269
    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x2

    shr-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 270
    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->PLTE_CHUNK_TYPE:[B

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void
.end method

.method private writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "XML:com.adobe.xmp"

    const-string v2, "ISO-8859-1"

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v2, "XML:com.adobe.xmp"

    const-string v3, "utf-8"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 253
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->iTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void
.end method

.method private writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$iTXt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 153
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    iget-object v2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 172
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    iget-object v2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->translatedKeyword:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 176
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->text:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->iTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void

    .line 157
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png tEXt chunk language tag is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$tEXt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 213
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->tEXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void

    .line 217
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png tEXt chunk text is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$zTXt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 186
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    sget-object p2, Lorg/apache/sanselan/formats/png/PngWriter;->zTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    return-void

    .line 190
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png zTXt chunk text is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Png zTXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x0

    and-int/lit16 p2, p2, 0xff

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 366
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "FORMAT"

    .line 369
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FORMAT"

    .line 370
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "VERBOSE"

    .line 372
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VERBOSE"

    .line 373
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v3, "PNG_FORCE_TRUE_COLOR"

    .line 376
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PNG_FORCE_TRUE_COLOR"

    .line 377
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v3, "PNG_FORCE_INDEXED_COLOR"

    .line 378
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PNG_FORCE_INDEXED_COLOR"

    .line 379
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v3, "PNG_BIT_DEPTH"

    .line 380
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "PNG_BIT_DEPTH"

    .line 381
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "XMP_XML"

    .line 382
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "XMP_XML"

    .line 383
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v3, "PNG_TEXT_CHUNKS"

    .line 384
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PNG_TEXT_CHUNKS"

    .line 385
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_23

    .line 393
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 394
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    .line 396
    new-instance v1, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v1}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    invoke-virtual {v1, v9}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v1

    .line 397
    iget-boolean v3, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v3, :cond_7

    const-string v3, "hasAlpha"

    .line 398
    invoke-static {v3, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Z)V

    .line 401
    :cond_7
    new-instance v3, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v3}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    invoke-virtual {v3, v9}, Lorg/apache/sanselan/palette/PaletteFactory;->isGrayscale(Ljava/awt/image/BufferedImage;)Z

    move-result v6

    .line 402
    iget-boolean v3, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v3, :cond_8

    const-string v3, "isGrayscale"

    .line 403
    invoke-static {v3, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Z)V

    :cond_8
    const-string v3, "PNG_FORCE_INDEXED_COLOR"

    const/4 v5, 0x0

    .line 407
    invoke-static {v2, v3, v5}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v3

    const-string v4, "PNG_FORCE_TRUE_COLOR"

    .line 409
    invoke-static {v2, v4, v5}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v3, :cond_a

    if-nez v4, :cond_9

    goto :goto_0

    .line 413
    :cond_9
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Params: Cannot force both indexed and true color modes"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_0
    const/4 v15, 0x6

    const/4 v14, 0x3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    goto :goto_2

    :cond_b
    if-eqz v4, :cond_d

    if-eqz v1, :cond_c

    const/4 v3, 0x6

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    :goto_1
    int-to-byte v3, v3

    goto :goto_2

    .line 423
    :cond_d
    invoke-direct {v0, v1, v6}, Lorg/apache/sanselan/formats/png/PngWriter;->getColourType(ZZ)B

    move-result v3

    .line 424
    :goto_2
    iget-boolean v4, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v4, :cond_e

    const-string v4, "colorType"

    .line 425
    invoke-static {v4, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 428
    :cond_e
    invoke-direct {v0, v3, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->getBitDepth(BLjava/util/Map;)B

    move-result v4

    .line 429
    iget-boolean v11, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v11, :cond_f

    const-string v11, "bit_depth"

    .line 430
    invoke-static {v11, v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    :cond_f
    if-ne v3, v14, :cond_10

    const/16 v11, 0x8

    goto :goto_3

    :cond_10
    move v11, v4

    .line 437
    :goto_3
    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_11

    const-string v12, "sample_depth"

    .line 438
    invoke-static {v12, v11}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 441
    :cond_11
    sget-object v11, Lorg/apache/sanselan/formats/png/PngWriter;->PNG_Signature:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 450
    new-instance v13, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;

    move-object v11, v13

    move v12, v8

    move-object v5, v13

    move v13, v7

    move/from16 v20, v6

    const/4 v6, 0x3

    move v14, v4

    const/4 v4, 0x6

    move v15, v3

    invoke-direct/range {v11 .. v18}, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;-><init>(IIBBBBB)V

    .line 453
    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    if-ne v3, v6, :cond_13

    if-eqz v1, :cond_12

    const/16 v1, 0xff

    goto :goto_4

    :cond_12
    const/16 v1, 0x100

    .line 470
    :goto_4
    new-instance v5, Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {v5, v11}, Lorg/apache/sanselan/palette/MedianCutQuantizer;-><init>(Z)V

    iget-boolean v13, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    invoke-virtual {v5, v9, v1, v13}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;IZ)Lorg/apache/sanselan/palette/Palette;

    move-result-object v5

    .line 477
    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/sanselan/palette/Palette;)V

    :cond_13
    move-object v13, v5

    const-string v1, "XMP_XML"

    .line 480
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "XMP_XML"

    .line 482
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 483
    invoke-direct {v0, v10, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_14
    const-string v1, "PNG_TEXT_CHUNKS"

    .line 486
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "PNG_TEXT_CHUNKS"

    .line 488
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 489
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    .line 491
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/png/PngText;

    .line 492
    instance-of v14, v5, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    if-eqz v14, :cond_15

    .line 493
    check-cast v5, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$tEXt;)V

    goto :goto_6

    .line 494
    :cond_15
    instance-of v14, v5, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    if-eqz v14, :cond_16

    .line 495
    check-cast v5, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$zTXt;)V

    goto :goto_6

    .line 496
    :cond_16
    instance-of v14, v5, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    if-eqz v14, :cond_17

    .line 497
    check-cast v5, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$iTXt;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 499
    :cond_17
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown text to embed in PNG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_18
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    if-eq v3, v1, :cond_1a

    if-ne v3, v4, :cond_19

    goto :goto_7

    :cond_19
    const/4 v11, 0x0

    .line 516
    :cond_1a
    :goto_7
    new-array v15, v8, [I

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v7, :cond_1f

    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move v3, v5

    move v4, v8

    move/from16 v19, v5

    const/4 v12, 0x0

    move/from16 v5, v16

    move/from16 v16, v20

    const/16 v18, 0x3

    move-object v6, v15

    move/from16 v20, v7

    move/from16 v7, v17

    move/from16 v21, v8

    .line 520
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 523
    invoke-virtual {v14, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v1, v21

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1e

    .line 526
    aget v3, v15, v2

    if-eqz v13, :cond_1b

    .line 530
    invoke-virtual {v13, v3}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 531
    invoke-virtual {v14, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_b

    :cond_1b
    const/16 v4, 0xff

    shr-int/lit8 v5, v3, 0x18

    and-int/2addr v5, v4

    shr-int/lit8 v6, v3, 0x10

    and-int/2addr v6, v4

    shr-int/lit8 v7, v3, 0x8

    and-int/2addr v7, v4

    shr-int/lit8 v3, v3, 0x0

    and-int/2addr v3, v4

    if-eqz v16, :cond_1c

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 541
    div-int/lit8 v6, v6, 0x3

    .line 554
    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    .line 557
    :cond_1c
    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    invoke-virtual {v14, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 559
    invoke-virtual {v14, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_a
    if-eqz v11, :cond_1d

    .line 562
    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1d
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    const/16 v4, 0xff

    add-int/lit8 v5, v19, 0x1

    move v8, v1

    move/from16 v7, v20

    const/4 v6, 0x3

    move/from16 v20, v16

    goto :goto_8

    :cond_1f
    const/4 v12, 0x0

    .line 566
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 571
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/high16 v4, 0x40000

    .line 574
    :goto_c
    array-length v5, v1

    if-ge v12, v5, :cond_21

    .line 576
    array-length v5, v1

    add-int v6, v12, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v12

    .line 579
    invoke-virtual {v3, v1, v12, v5}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 580
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 581
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 583
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 584
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 585
    array-length v7, v5

    if-lez v7, :cond_20

    .line 588
    invoke-direct {v0, v10, v5}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    :cond_20
    move v12, v6

    goto :goto_c

    .line 593
    :cond_21
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 594
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 595
    array-length v2, v1

    if-lez v2, :cond_22

    .line 598
    invoke-direct {v0, v10, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    .line 606
    :cond_22
    invoke-direct {v0, v10}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIEND(Ljava/io/OutputStream;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 388
    :cond_23
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 389
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
