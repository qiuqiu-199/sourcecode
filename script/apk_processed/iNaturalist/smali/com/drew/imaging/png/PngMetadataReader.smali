.class public Lcom/drew/imaging/png/PngMetadataReader;
.super Ljava/lang/Object;
.source "PngMetadataReader.java"


# static fields
.field private static _desiredChunkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/drew/imaging/png/PngChunkType;",
            ">;"
        }
    .end annotation
.end field

.field private static _latin1Encoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-object v0, Lcom/drew/lang/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/drew/imaging/png/PngMetadataReader;->_desiredChunkTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static processChunk(Lcom/drew/metadata/Metadata;Lcom/drew/imaging/png/PngChunk;)V
    .locals 14
    .param p0    # Lcom/drew/metadata/Metadata;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/drew/imaging/png/PngChunk;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/drew/imaging/png/PngChunk;->getType()Lcom/drew/imaging/png/PngChunkType;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/drew/imaging/png/PngChunk;->getBytes()[B

    move-result-object p1

    .line 117
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Lcom/drew/imaging/png/PngHeader;

    invoke-direct {v0, p1}, Lcom/drew/imaging/png/PngHeader;-><init>([B)V

    .line 119
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 120
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getImageWidth()I

    move-result v1

    invoke-virtual {p1, v8, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 121
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getImageHeight()I

    move-result v1

    invoke-virtual {p1, v7, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 122
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getBitsPerSample()B

    move-result v1

    invoke-virtual {p1, v6, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 123
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getColorType()Lcom/drew/imaging/png/PngColorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/drew/imaging/png/PngColorType;->getNumericValue()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 124
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getCompressionType()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v4, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 125
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getFilterMethod()B

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 126
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngHeader;->getInterlaceMethod()B

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 128
    :cond_0
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v9, 0x8

    if-eqz v1, :cond_1

    .line 129
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 130
    array-length p1, p1

    div-int/2addr p1, v6

    invoke-virtual {v0, v9, p1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 132
    :cond_1
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v0, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v0, 0x9

    .line 134
    invoke-virtual {p1, v0, v8}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 136
    :cond_2
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    .line 137
    aget-byte p1, p1, v10

    .line 138
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v1, 0xa

    .line 139
    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 141
    :cond_3
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    new-instance v0, Lcom/drew/imaging/png/PngChromaticities;

    invoke-direct {v0, p1}, Lcom/drew/imaging/png/PngChromaticities;-><init>([B)V

    .line 143
    new-instance p1, Lcom/drew/metadata/png/PngChromaticitiesDirectory;

    invoke-direct {p1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;-><init>()V

    .line 144
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getWhitePointX()I

    move-result v1

    invoke-virtual {p1, v8, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 145
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getWhitePointY()I

    move-result v1

    invoke-virtual {p1, v7, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 146
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getRedX()I

    move-result v1

    invoke-virtual {p1, v6, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 147
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getRedY()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 148
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getGreenX()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 149
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getGreenY()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 150
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getBlueX()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 151
    invoke-virtual {v0}, Lcom/drew/imaging/png/PngChromaticities;->getBlueY()I

    move-result v0

    invoke-virtual {p1, v9, v0}, Lcom/drew/metadata/png/PngChromaticitiesDirectory;->setInt(II)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 153
    :cond_4
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    invoke-static {p1}, Lcom/drew/lang/ByteConvert;->toInt32BigEndian([B)I

    move-result v0

    .line 155
    new-instance v1, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    invoke-virtual {v1}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    .line 156
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v1, 0xb

    int-to-double v2, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/drew/metadata/png/PngDirectory;->setDouble(ID)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 159
    :cond_5
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x50

    if-eqz v1, :cond_7

    .line 160
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 163
    invoke-virtual {v0, v2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v1

    .line 164
    new-instance v2, Lcom/drew/metadata/png/PngDirectory;

    sget-object v3, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v2, v3}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v3, 0xc

    .line 165
    new-instance v4, Lcom/drew/metadata/StringValue;

    sget-object v5, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3, v4}, Lcom/drew/metadata/png/PngDirectory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 166
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v3

    if-nez v3, :cond_6

    .line 171
    array-length p1, p1

    array-length v1, v1

    add-int/2addr v1, v8

    add-int/2addr v1, v8

    sub-int/2addr p1, v1

    .line 172
    invoke-virtual {v0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    new-instance p1, Lcom/drew/metadata/icc/IccReader;

    invoke-direct {p1}, Lcom/drew/metadata/icc/IccReader;-><init>()V

    new-instance v1, Lcom/drew/lang/RandomAccessStreamReader;

    invoke-direct {v1, v0}, Lcom/drew/lang/RandomAccessStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v1, p0, v2}, Lcom/drew/metadata/icc/IccReader;->extract(Lcom/drew/lang/RandomAccessReader;Lcom/drew/metadata/Metadata;Lcom/drew/metadata/Directory;)V

    .line 177
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception decompressing PNG iCCP chunk : %s"

    .line 179
    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_0

    :cond_6
    const-string p1, "Invalid compression method value"

    .line 183
    invoke-virtual {v2, p1}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 185
    :goto_0
    invoke-virtual {p0, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 186
    :cond_7
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v1, 0xf

    .line 188
    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/png/PngDirectory;->setByteArray(I[B)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 190
    :cond_8
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v9, 0xd

    if-eqz v1, :cond_9

    .line 191
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 194
    sget-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    array-length p1, p1

    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v8

    sub-int/2addr p1, v1

    .line 200
    sget-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v1, Lcom/drew/lang/KeyValuePair;

    invoke-direct {v1, v2, p1}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 204
    invoke-virtual {p1, v9, v0}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 206
    :cond_9
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_c

    .line 207
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 210
    sget-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v0

    .line 216
    array-length v3, p1

    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v8

    add-int/2addr v1, v8

    sub-int/2addr v3, v1

    if-nez v0, :cond_a

    .line 220
    :try_start_1
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-direct {v1, p1, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/drew/lang/StreamUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 223
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const-string v1, "Exception decompressing PNG zTXt chunk with keyword \"%s\": %s"

    .line 224
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_1

    .line 228
    :cond_a
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v0, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const-string v0, "Invalid compression method value"

    .line 229
    invoke-virtual {p1, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :goto_1
    if-eqz v11, :cond_15

    const-string p1, "XML:com.adobe.xmp"

    .line 233
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 235
    new-instance p1, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {p1}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    invoke-virtual {p1, v11, p0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto/16 :goto_4

    .line 237
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v0, Lcom/drew/lang/KeyValuePair;

    new-instance v1, Lcom/drew/metadata/StringValue;

    sget-object v3, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-direct {v1, v11, v3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2, v1}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 240
    invoke-virtual {v0, v9, p1}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 244
    :cond_c
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 245
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 248
    sget-object v1, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2, v1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v3

    .line 251
    invoke-virtual {v0}, Lcom/drew/lang/SequentialReader;->getInt8()B

    move-result v4

    .line 253
    array-length v5, p1

    invoke-virtual {v0, v5}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v5

    .line 254
    array-length v6, p1

    invoke-virtual {v0, v6}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v6

    .line 258
    array-length v12, p1

    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v8

    add-int/2addr v1, v8

    add-int/2addr v1, v8

    array-length v5, v5

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    array-length v5, v6

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    sub-int/2addr v12, v1

    if-nez v3, :cond_d

    .line 261
    invoke-virtual {v0, v12}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object v11

    goto :goto_2

    :cond_d
    if-ne v3, v8, :cond_f

    if-nez v4, :cond_e

    .line 265
    :try_start_2
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v3, p1

    sub-int/2addr v3, v12

    invoke-direct {v1, p1, v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/drew/lang/StreamUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 268
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const-string v1, "Exception decompressing PNG iTXt chunk with keyword \"%s\": %s"

    .line 269
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-virtual {p1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_2

    .line 273
    :cond_e
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v0, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const-string v0, "Invalid compression method value"

    .line 274
    invoke-virtual {p1, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_2

    .line 278
    :cond_f
    new-instance p1, Lcom/drew/metadata/png/PngDirectory;

    sget-object v0, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {p1, v0}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const-string v0, "Invalid compression flag value"

    .line 279
    invoke-virtual {p1, v0}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :goto_2
    if-eqz v11, :cond_15

    const-string p1, "XML:com.adobe.xmp"

    .line 284
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 286
    new-instance p1, Lcom/drew/metadata/xmp/XmpReader;

    invoke-direct {p1}, Lcom/drew/metadata/xmp/XmpReader;-><init>()V

    invoke-virtual {p1, v11, p0}, Lcom/drew/metadata/xmp/XmpReader;->extract([BLcom/drew/metadata/Metadata;)V

    goto/16 :goto_4

    .line 288
    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v0, Lcom/drew/lang/KeyValuePair;

    new-instance v1, Lcom/drew/metadata/StringValue;

    sget-object v3, Lcom/drew/imaging/png/PngMetadataReader;->_latin1Encoding:Ljava/nio/charset/Charset;

    invoke-direct {v1, v11, v3}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2, v1}, Lcom/drew/lang/KeyValuePair;-><init>(Ljava/lang/String;Lcom/drew/metadata/StringValue;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    .line 291
    invoke-virtual {v0, v9, p1}, Lcom/drew/metadata/png/PngDirectory;->setObject(ILjava/lang/Object;)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto/16 :goto_4

    .line 295
    :cond_11
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 296
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 297
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt16()I

    move-result p1

    .line 298
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v1

    .line 299
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v2

    .line 300
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v9

    .line 301
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v11

    .line 302
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getUInt8()S

    move-result v0

    .line 303
    new-instance v12, Lcom/drew/metadata/png/PngDirectory;

    sget-object v13, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v12, v13}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    add-int/lit8 v13, v1, -0x1

    .line 304
    invoke-static {p1, v13, v2}, Lcom/drew/lang/DateUtil;->isValidDate(III)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v9, v11, v0}, Lcom/drew/lang/DateUtil;->isValidTime(III)Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "%04d:%02d:%02d %02d:%02d:%02d"

    .line 305
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xe

    .line 306
    invoke-virtual {v12, v0, p1}, Lcom/drew/metadata/png/PngDirectory;->setString(ILjava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string v13, "PNG tIME data describes an invalid date/time: year=%d month=%d day=%d hour=%d minute=%d second=%d"

    .line 308
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p1}, Lcom/drew/metadata/png/PngDirectory;->addError(Ljava/lang/String;)V

    .line 312
    :goto_3
    invoke-virtual {p0, v12}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_4

    .line 313
    :cond_13
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 314
    new-instance v0, Lcom/drew/lang/SequentialByteArrayReader;

    invoke-direct {v0, p1}, Lcom/drew/lang/SequentialByteArrayReader;-><init>([B)V

    .line 315
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result p1

    .line 316
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt32()I

    move-result v1

    .line 317
    invoke-virtual {v0}, Lcom/drew/lang/SequentialByteArrayReader;->getInt8()B

    move-result v0

    .line 318
    new-instance v2, Lcom/drew/metadata/png/PngDirectory;

    sget-object v3, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v2, v3}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v3, 0x10

    .line 319
    invoke-virtual {v2, v3, p1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    const/16 p1, 0x11

    .line 320
    invoke-virtual {v2, p1, v1}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    const/16 p1, 0x12

    .line 321
    invoke-virtual {v2, p1, v0}, Lcom/drew/metadata/png/PngDirectory;->setInt(II)V

    .line 322
    invoke-virtual {p0, v2}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    goto :goto_4

    .line 323
    :cond_14
    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v0, v1}, Lcom/drew/imaging/png/PngChunkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 324
    new-instance v0, Lcom/drew/metadata/png/PngDirectory;

    sget-object v1, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    invoke-direct {v0, v1}, Lcom/drew/metadata/png/PngDirectory;-><init>(Lcom/drew/imaging/png/PngChunkType;)V

    const/16 v1, 0x13

    .line 325
    invoke-virtual {v0, v1, p1}, Lcom/drew/metadata/png/PngDirectory;->setByteArray(I[B)V

    .line 326
    invoke-virtual {p0, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    :cond_15
    :goto_4
    return-void
.end method

.method public static readMetadata(Ljava/io/File;)Lcom/drew/metadata/Metadata;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    :try_start_0
    invoke-static {v0}, Lcom/drew/imaging/png/PngMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    new-instance v0, Lcom/drew/metadata/file/FileSystemMetadataReader;

    invoke-direct {v0}, Lcom/drew/metadata/file/FileSystemMetadataReader;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/drew/metadata/file/FileSystemMetadataReader;->read(Ljava/io/File;Lcom/drew/metadata/Metadata;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/drew/imaging/png/PngChunkReader;

    invoke-direct {v0}, Lcom/drew/imaging/png/PngChunkReader;-><init>()V

    new-instance v1, Lcom/drew/lang/StreamReader;

    invoke-direct {v1, p0}, Lcom/drew/lang/StreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object p0, Lcom/drew/imaging/png/PngMetadataReader;->_desiredChunkTypes:Ljava/util/Set;

    invoke-virtual {v0, v1, p0}, Lcom/drew/imaging/png/PngChunkReader;->extract(Lcom/drew/lang/SequentialReader;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object p0

    .line 99
    new-instance v0, Lcom/drew/metadata/Metadata;

    invoke-direct {v0}, Lcom/drew/metadata/Metadata;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/imaging/png/PngChunk;

    .line 103
    :try_start_0
    invoke-static {v0, v1}, Lcom/drew/imaging/png/PngMetadataReader;->processChunk(Lcom/drew/metadata/Metadata;Lcom/drew/imaging/png/PngChunk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 105
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
