.class Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;
.super Ljava/io/InputStream;
.source "BCPGInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/bcpg/BCPGInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialInputStream"
.end annotation


# instance fields
.field private dataLength:I

.field private in:Lorg/bouncycastle/bcpg/BCPGInputStream;

.field private partial:Z

.field private totalDataLength:J


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;ZI)V
    .locals 4

    .line 319
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    .line 321
    iput-boolean p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    int-to-long p1, p3

    const-wide v0, 0xffffffffL

    and-long v2, p1, v0

    .line 323
    iput-wide v2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->totalDataLength:J

    .line 324
    iput p3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;)J
    .locals 2

    .line 307
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->getBodyLength()J

    move-result-wide v0

    return-wide v0
.end method

.method private getBodyLength()J
    .locals 2

    .line 348
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->totalDataLength:J

    :goto_0
    return-wide v0
.end method

.method private loadDataLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 361
    iput-boolean v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 364
    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_1
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_2

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    .line 368
    iget-object v2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 372
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 376
    iput-boolean v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    .line 377
    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    .line 380
    :goto_0
    iget-wide v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->totalDataLength:J

    iget v2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->totalDataLength:J

    .line 382
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->available()I

    move-result v0

    .line 332
    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-le v0, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 342
    :cond_1
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    .line 435
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "premature end of stream in PartialInputStream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0

    .line 441
    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_4

    .line 410
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-gt v0, p3, :cond_2

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    .line 411
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_3

    .line 414
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "premature end of stream in PartialInputStream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_3
    iget p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return p1

    .line 420
    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public skipToEnd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 395
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "premature end of stream in PartialInputStream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    iget v2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    int-to-long v2, v2

    sub-long v4, v2, v0

    long-to-int v0, v4

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    .line 400
    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_3
    return-void
.end method
