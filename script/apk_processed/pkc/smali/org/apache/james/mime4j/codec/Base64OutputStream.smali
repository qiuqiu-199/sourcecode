.class public Lorg/apache/james/mime4j/codec/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final BASE64_TABLE:[B

.field private static final CRLF_SEPARATOR:[B


# instance fields
.field private closed:Z

.field private data:I

.field private final encoded:[B

.field private final lineLength:I

.field private linePosition:I

.field private final lineSeparator:[B

.field private modulus:I

.field private position:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    const/16 v0, 0x40

    .line 48
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    .line 63
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 64
    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private close0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writePad()V

    .line 263
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    if-lez v0, :cond_1

    .line 264
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    .line 267
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    return-void
.end method

.method private flush0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    :cond_0
    return-void
.end method

.method private write0([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_4

    .line 216
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    .line 218
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    .line 223
    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v1, v2, :cond_1

    .line 226
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 228
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 229
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, v1, v0

    .line 232
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 238
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 240
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 241
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v3, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 245
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private writeLineSeparator()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 301
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 302
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 304
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, v1, v0

    .line 305
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writePad()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v0, v1, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 282
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 283
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 284
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 285
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v2, v0, v3

    .line 286
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v2, v0, v3

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 291
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 292
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v2, v0, v3

    .line 295
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    .line 210
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->close0()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Base64OutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 161
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Base64OutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 170
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 172
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 175
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64OutputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    .line 187
    array-length v1, p1

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 193
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    return-void

    .line 188
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
