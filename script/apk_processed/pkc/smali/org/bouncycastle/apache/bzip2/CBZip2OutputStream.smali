.class public Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;
.super Ljava/io/OutputStream;
.source "CBZip2OutputStream.java"

# interfaces
.implements Lorg/bouncycastle/apache/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;
    }
.end annotation


# instance fields
.field private allowableBlockSize:I

.field private block:[C

.field private blockCRC:I

.field blockRandomised:Z

.field blockSize100k:I

.field bsBuff:I

.field bsLive:I

.field private bsStream:Ljava/io/OutputStream;

.field bytesOut:I

.field closed:Z

.field private combinedCRC:I

.field private currentChar:I

.field private finished:Z

.field private firstAttempt:Z

.field private ftab:[I

.field private inUse:[Z

.field private incs:[I

.field last:I

.field mCrc:Lorg/bouncycastle/apache/bzip2/CRC;

.field private mtfFreq:[I

.field private nBlocksRandomised:I

.field private nInUse:I

.field private nMTF:I

.field origPtr:I

.field private quadrant:[I

.field private runLength:I

.field private selector:[C

.field private selectorMtf:[C

.field private seqToUnseq:[C

.field private szptr:[S

.field private unseqToSeq:[C

.field private workDone:I

.field private workFactor:I

.field private workLimit:I

.field private zptr:[I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 281
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 245
    new-instance v0, Lorg/bouncycastle/apache/bzip2/CRC;

    invoke-direct {v0}, Lorg/bouncycastle/apache/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mCrc:Lorg/bouncycastle/apache/bzip2/CRC;

    const/16 v0, 0x100

    .line 247
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    .line 250
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->seqToUnseq:[C

    .line 251
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->unseqToSeq:[C

    const/16 v0, 0x4652

    .line 253
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selector:[C

    .line 254
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selectorMtf:[C

    const/16 v0, 0x102

    .line 264
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    const/4 v0, -0x1

    .line 277
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    .line 381
    iput-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->closed:Z

    const/16 v0, 0xe

    .line 1519
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->incs:[I

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    .line 287
    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    .line 288
    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    .line 289
    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    const/16 v0, 0x42

    .line 291
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x5a

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 294
    invoke-direct {p0, p1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsSetStream(Ljava/io/OutputStream;)V

    const/16 p1, 0x32

    .line 296
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workFactor:I

    const/16 p1, 0x9

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    .line 303
    :cond_1
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockSize100k:I

    .line 304
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->allocateCompressStructures()V

    .line 305
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->initialize()V

    .line 306
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->initBlock()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method private allocateCompressStructures()V
    .locals 2

    .line 1524
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockSize100k:I

    const v1, 0x186a0

    mul-int v0, v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x14

    .line 1525
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v1, v0, 0x14

    .line 1526
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    .line 1527
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    const v1, 0x10001

    .line 1528
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    .line 1530
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1549
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    :goto_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    if-lez v0, :cond_0

    .line 539
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    shr-int/lit8 v0, v0, 0x18

    .line 541
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 546
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    .line 547
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 543
    throw v0

    :cond_0
    return-void
.end method

.method private bsPutIntVS(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    return-void
.end method

.method private bsPutUChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 568
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    return-void
.end method

.method private bsPutint(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    .line 572
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 573
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 574
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    and-int/lit16 p1, p1, 0xff

    .line 575
    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    return-void
.end method

.method private bsSetStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsStream:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 532
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    .line 533
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 534
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    return-void
.end method

.method private bsW(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    :goto_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 553
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    shr-int/lit8 v0, v0, 0x18

    .line 555
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 560
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    .line 561
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    throw p1

    .line 563
    :cond_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    rsub-int/lit8 v1, v1, 0x20

    sub-int/2addr v1, p1

    shl-int/2addr p2, v1

    or-int/2addr p2, v0

    iput p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsBuff:I

    .line 564
    iget p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsLive:I

    return-void
.end method

.method private doReversibleTransformation()V
    .locals 4

    .line 1361
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workFactor:I

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    mul-int v0, v0, v1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    const/4 v0, 0x0

    .line 1362
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    .line 1363
    iput-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockRandomised:Z

    const/4 v1, 0x1

    .line 1364
    iput-boolean v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    .line 1366
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mainSort()V

    .line 1368
    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    if-eqz v2, :cond_0

    .line 1369
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->randomiseBlock()V

    .line 1370
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    .line 1371
    iput-boolean v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockRandomised:Z

    .line 1372
    iput-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    .line 1373
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mainSort()V

    :cond_0
    const/4 v1, -0x1

    .line 1376
    iput v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->origPtr:I

    .line 1377
    :goto_0
    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-gt v0, v2, :cond_2

    .line 1378
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 1379
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->origPtr:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    :cond_2
    :goto_1
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->origPtr:I

    if-ne v0, v1, :cond_3

    .line 1385
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mCrc:Lorg/bouncycastle/apache/bzip2/CRC;

    invoke-virtual {v0}, Lorg/bouncycastle/apache/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockCRC:I

    .line 453
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 454
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockCRC:I

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    .line 457
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->doReversibleTransformation()V

    const/16 v0, 0x31

    .line 472
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x41

    .line 473
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x59

    .line 474
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v2, 0x26

    .line 475
    invoke-direct {p0, v2}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v2, 0x53

    .line 476
    invoke-direct {p0, v2}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    .line 477
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    .line 480
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutint(I)V

    .line 483
    iget-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockRandomised:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0, v1, v1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 485
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nBlocksRandomised:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nBlocksRandomised:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    .line 491
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->moveToFrontCodeAndSend()V

    return-void
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    .line 502
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x72

    .line 503
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x45

    .line 504
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x38

    .line 505
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x50

    .line 506
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    const/16 v0, 0x90

    .line 507
    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    .line 509
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutint(I)V

    .line 511
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsFinishedWithStream()V

    return-void
.end method

.method private fullGtU(II)Z
    .locals 7

    .line 1394
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1395
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1402
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1403
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    if-eq v0, v2, :cond_3

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1410
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1411
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    if-eq v0, v2, :cond_5

    if-le v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 1418
    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1419
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    if-eq v0, v2, :cond_7

    if-le v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 1426
    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1427
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    if-eq v0, v2, :cond_9

    if-le v0, v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 1434
    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p1, v1

    aget-char v0, v0, p1

    .line 1435
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/2addr p2, v1

    aget-char v2, v2, p2

    if-eq v0, v2, :cond_b

    if-le v0, v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 1442
    :cond_b
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v1

    .line 1445
    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v4, p1, 0x1

    aget-char v2, v2, v4

    .line 1446
    iget-object v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v6, p2, 0x1

    aget-char v5, v5, v6

    if-eq v2, v5, :cond_e

    if-le v2, v5, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    return v1

    .line 1450
    :cond_e
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p1, v2, p1

    .line 1451
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p2, v2, p2

    if-eq p1, p2, :cond_10

    if-le p1, p2, :cond_f

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 1458
    :cond_10
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 p2, v4, 0x1

    aget-char p1, p1, p2

    .line 1459
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v5, v6, 0x1

    aget-char v2, v2, v5

    if-eq p1, v2, :cond_12

    if-le p1, v2, :cond_11

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 1463
    :cond_12
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p1, p1, v4

    .line 1464
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget v2, v2, v6

    if-eq p1, v2, :cond_14

    if-le p1, v2, :cond_13

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 1471
    :cond_14
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v2, p2, 0x1

    aget-char p1, p1, v2

    .line 1472
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v6, v5, 0x1

    aget-char v4, v4, v6

    if-eq p1, v4, :cond_16

    if-le p1, v4, :cond_15

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 1476
    :cond_16
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p1, p1, p2

    .line 1477
    iget-object p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p2, p2, v5

    if-eq p1, p2, :cond_18

    if-le p1, p2, :cond_17

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 1484
    :cond_18
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 p2, v2, 0x1

    aget-char p1, p1, p2

    .line 1485
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v5, v6, 0x1

    aget-char v4, v4, v5

    if-eq p1, v4, :cond_1a

    if-le p1, v4, :cond_19

    goto :goto_c

    :cond_19
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 1489
    :cond_1a
    iget-object p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget p1, p1, v2

    .line 1490
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aget v2, v2, v6

    if-eq p1, v2, :cond_1c

    if-le p1, v2, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 1497
    :cond_1c
    iget p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-le p2, p1, :cond_1d

    .line 1498
    iget p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :cond_1d
    move p1, p2

    .line 1501
    iget p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-le v5, p2, :cond_1e

    .line 1502
    iget p2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    :cond_1e
    move p2, v5

    add-int/lit8 v0, v0, -0x4

    .line 1507
    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    if-gez v0, :cond_c

    return v3
.end method

.method private generateMTFValues()V
    .locals 12

    const/16 v0, 0x100

    .line 1553
    new-array v0, v0, [C

    .line 1561
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->makeMaps()V

    .line 1562
    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v1, :cond_0

    .line 1565
    iget-object v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aput v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1570
    :goto_1
    iget v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    if-ge v4, v5, :cond_1

    int-to-char v5, v4

    .line 1571
    aput-char v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1575
    :goto_2
    iget v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    const/4 v8, 0x2

    if-gt v4, v7, :cond_6

    .line 1578
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->unseqToSeq:[C

    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v10, v10, v4

    aget-char v9, v9, v10

    aget-char v7, v7, v9

    .line 1581
    aget-char v9, v0, v3

    const/4 v10, 0x0

    :goto_3
    if-eq v7, v9, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 1585
    aget-char v11, v0, v10

    .line 1586
    aput-char v9, v0, v10

    move v9, v11

    goto :goto_3

    :cond_2
    aput-char v9, v0, v3

    if-nez v10, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_3
    if-lez v5, :cond_5

    add-int/lit8 v5, v5, -0x1

    .line 1596
    :goto_4
    rem-int/lit8 v7, v5, 0x2

    packed-switch v7, :pswitch_data_0

    goto :goto_5

    .line 1603
    :pswitch_0
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aput-short v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 1605
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v9, v7, v2

    add-int/2addr v9, v2

    aput v9, v7, v2

    goto :goto_5

    .line 1598
    :pswitch_1
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aput-short v3, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 1600
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v9, v7, v3

    add-int/2addr v9, v2

    aput v9, v7, v3

    :goto_5
    if-ge v5, v8, :cond_4

    const/4 v5, 0x0

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, -0x2

    .line 1611
    div-int/2addr v5, v8

    goto :goto_4

    .line 1615
    :cond_5
    :goto_6
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    add-int/lit8 v10, v10, 0x1

    int-to-short v8, v10

    aput-short v8, v7, v6

    add-int/2addr v6, v2

    .line 1617
    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v8, v7, v10

    add-int/2addr v8, v2

    aput v8, v7, v10

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-lez v5, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 1624
    :goto_8
    rem-int/lit8 v0, v5, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_9

    .line 1631
    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aput-short v2, v0, v6

    add-int/lit8 v6, v6, 0x1

    .line 1633
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v4, v0, v2

    add-int/2addr v4, v2

    aput v4, v0, v2

    goto :goto_9

    .line 1626
    :pswitch_3
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aput-short v3, v0, v6

    add-int/lit8 v6, v6, 0x1

    .line 1628
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v4, v0, v3

    add-int/2addr v4, v2

    aput v4, v0, v3

    :goto_9
    if-ge v5, v8, :cond_7

    goto :goto_a

    :cond_7
    add-int/lit8 v5, v5, -0x2

    .line 1639
    div-int/2addr v5, v8

    goto :goto_8

    .line 1643
    :cond_8
    :goto_a
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    int-to-short v3, v1

    aput-short v3, v0, v6

    add-int/2addr v6, v2

    .line 1645
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    .line 1647
    iput v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private hbAssignCodes([I[CIII)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt p3, p4, :cond_2

    move v2, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p5, :cond_1

    .line 521
    aget-char v3, p2, v1

    if-ne v3, p3, :cond_0

    .line 522
    aput v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static hbMakeCodeLengths([C[III)V
    .locals 18

    move/from16 v1, p2

    const/16 v2, 0x104

    .line 85
    new-array v3, v2, [I

    const/16 v4, 0x204

    .line 86
    new-array v5, v4, [I

    .line 87
    new-array v6, v4, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v1, :cond_1

    add-int/lit8 v10, v8, 0x1

    .line 90
    aget v11, p1, v8

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    aget v9, p1, v8

    :goto_1
    shl-int/lit8 v8, v9, 0x8

    aput v8, v5, v10

    move v8, v10

    goto :goto_0

    :cond_1
    :goto_2
    aput v7, v3, v7

    aput v7, v5, v7

    const/4 v0, -0x2

    aput v0, v6, v7

    const/4 v0, 0x1

    const/4 v8, 0x0

    :goto_3
    const/4 v10, -0x1

    if-gt v0, v1, :cond_3

    .line 102
    aput v10, v6, v0

    add-int/lit8 v8, v8, 0x1

    .line 104
    aput v0, v3, v8

    .line 108
    aget v10, v3, v8

    move v11, v8

    .line 109
    :goto_4
    aget v12, v5, v10

    shr-int/lit8 v13, v11, 0x1

    aget v14, v3, v13

    aget v14, v5, v14

    if-ge v12, v14, :cond_2

    .line 110
    aget v12, v3, v13

    aput v12, v3, v11

    move v11, v13

    goto :goto_4

    .line 113
    :cond_2
    aput v10, v3, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    if-lt v8, v2, :cond_4

    .line 117
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_4
    move v0, v1

    :goto_5
    if-le v8, v9, :cond_d

    .line 121
    aget v11, v3, v9

    .line 122
    aget v12, v3, v8

    aput v12, v3, v9

    add-int/lit8 v8, v8, -0x1

    .line 127
    aget v12, v3, v9

    const/4 v13, 0x1

    :goto_6
    shl-int/lit8 v14, v13, 0x1

    if-le v14, v8, :cond_5

    goto :goto_7

    :cond_5
    if-ge v14, v8, :cond_6

    add-int/lit8 v15, v14, 0x1

    .line 133
    aget v16, v3, v15

    aget v2, v5, v16

    aget v16, v3, v14

    aget v7, v5, v16

    if-ge v2, v7, :cond_6

    move v14, v15

    .line 137
    :cond_6
    aget v2, v5, v12

    aget v7, v3, v14

    aget v7, v5, v7

    if-ge v2, v7, :cond_c

    .line 143
    :goto_7
    aput v12, v3, v13

    .line 145
    aget v2, v3, v9

    .line 146
    aget v7, v3, v8

    aput v7, v3, v9

    add-int/lit8 v7, v8, -0x1

    .line 151
    aget v15, v3, v9

    const/4 v8, 0x1

    :goto_8
    shl-int/lit8 v12, v8, 0x1

    if-le v12, v7, :cond_7

    goto :goto_9

    :cond_7
    if-ge v12, v7, :cond_8

    add-int/lit8 v13, v12, 0x1

    .line 157
    aget v14, v3, v13

    aget v14, v5, v14

    aget v16, v3, v12

    aget v4, v5, v16

    if-ge v14, v4, :cond_8

    move v12, v13

    .line 161
    :cond_8
    aget v4, v5, v15

    aget v13, v3, v12

    aget v13, v5, v13

    if-ge v4, v13, :cond_b

    .line 167
    :goto_9
    aput v15, v3, v8

    add-int/lit8 v0, v0, 0x1

    .line 170
    aput v0, v6, v2

    aput v0, v6, v11

    .line 172
    aget v4, v5, v11

    and-int/lit16 v4, v4, -0x100

    aget v8, v5, v2

    and-int/lit16 v8, v8, -0x100

    add-int/2addr v4, v8

    aget v8, v5, v11

    and-int/lit16 v8, v8, 0xff

    aget v12, v5, v2

    and-int/lit16 v12, v12, 0xff

    if-le v8, v12, :cond_9

    aget v2, v5, v11

    :goto_a
    and-int/lit16 v2, v2, 0xff

    goto :goto_b

    :cond_9
    aget v2, v5, v2

    goto :goto_a

    :goto_b
    add-int/2addr v2, v9

    or-int/2addr v2, v4

    aput v2, v5, v0

    .line 179
    aput v10, v6, v0

    add-int/lit8 v8, v7, 0x1

    .line 181
    aput v0, v3, v8

    .line 185
    aget v2, v3, v8

    move v4, v8

    .line 186
    :goto_c
    aget v7, v5, v2

    shr-int/lit8 v11, v4, 0x1

    aget v12, v3, v11

    aget v12, v5, v12

    if-ge v7, v12, :cond_a

    .line 187
    aget v7, v3, v11

    aput v7, v3, v4

    move v4, v11

    goto :goto_c

    .line 190
    :cond_a
    aput v2, v3, v4

    const/16 v2, 0x104

    const/16 v4, 0x204

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 164
    :cond_b
    aget v4, v3, v12

    aput v4, v3, v8

    move v8, v12

    const/16 v4, 0x204

    goto :goto_8

    .line 140
    :cond_c
    aget v2, v3, v14

    aput v2, v3, v13

    move v13, v14

    const/16 v2, 0x104

    const/16 v4, 0x204

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_d
    const/16 v2, 0x204

    if-lt v0, v2, :cond_e

    .line 194
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_e
    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_d
    if-gt v0, v1, :cond_11

    move v7, v0

    const/4 v8, 0x0

    .line 201
    :goto_e
    aget v10, v6, v7

    if-ltz v10, :cond_f

    .line 202
    aget v7, v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 v7, v0, -0x1

    int-to-char v10, v8

    .line 205
    aput-char v10, p0, v7

    move/from16 v7, p3

    if-le v8, v7, :cond_10

    const/4 v4, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_11
    move/from16 v7, p3

    if-nez v4, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x1

    :goto_f
    if-ge v0, v1, :cond_13

    .line 216
    aget v4, v5, v0

    shr-int/lit8 v4, v4, 0x8

    .line 217
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    shl-int/lit8 v4, v4, 0x8

    .line 218
    aput v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_13
    const/16 v2, 0x104

    const/16 v4, 0x204

    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method private initBlock()V
    .locals 3

    .line 439
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mCrc:Lorg/bouncycastle/apache/bzip2/CRC;

    invoke-virtual {v0}, Lorg/bouncycastle/apache/bzip2/CRC;->initialiseCRC()V

    const/4 v0, -0x1

    .line 440
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x186a0

    .line 448
    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockSize100k:I

    mul-int v1, v1, v0

    add-int/lit8 v1, v1, -0x14

    iput v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    return-void
.end method

.method private initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bytesOut:I

    .line 424
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nBlocksRandomised:I

    const/16 v1, 0x68

    .line 429
    invoke-direct {p0, v1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    .line 430
    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->blockSize100k:I

    add-int/lit8 v1, v1, 0x30

    invoke-direct {p0, v1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutUChar(I)V

    .line 432
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->combinedCRC:I

    return-void
.end method

.method private mainSort()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x100

    .line 1140
    new-array v2, v1, [I

    .line 1141
    new-array v3, v1, [I

    .line 1142
    new-array v4, v1, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/16 v8, 0x14

    const/4 v9, 0x1

    if-ge v6, v8, :cond_0

    .line 1154
    iget-object v8, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v10, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    iget-object v7, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v11, v9

    rem-int v11, v6, v11

    add-int/2addr v11, v9

    aget-char v7, v7, v11

    aput-char v7, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1156
    :goto_1
    iget v10, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v10, v8

    if-gt v6, v10, :cond_1

    .line 1157
    iget-object v10, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aput v5, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1160
    :cond_1
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v10, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v11, v9

    aget-char v10, v10, v11

    aput-char v10, v6, v5

    .line 1162
    iget v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    const/16 v10, 0xfa0

    if-ge v6, v10, :cond_3

    const/4 v1, 0x0

    .line 1167
    :goto_2
    iget v2, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-gt v1, v2, :cond_2

    .line 1168
    iget-object v2, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1170
    :cond_2
    iput-boolean v5, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    .line 1171
    iput v5, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    iput v5, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    .line 1172
    iget v1, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    invoke-direct {v0, v5, v1, v5}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->simpleSort(III)V

    goto/16 :goto_15

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/16 v10, 0xff

    if-gt v6, v10, :cond_4

    .line 1176
    aput-boolean v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/high16 v11, 0x10000

    if-gt v6, v11, :cond_5

    .line 1180
    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aput v5, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1183
    :cond_5
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    aget-char v6, v6, v5

    move v12, v6

    const/4 v6, 0x0

    .line 1184
    :goto_5
    iget v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-gt v6, v13, :cond_6

    .line 1185
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v6, v6, 0x1

    aget-char v13, v13, v6

    .line 1186
    iget-object v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v13

    aget v15, v14, v12

    add-int/2addr v15, v9

    aput v15, v14, v12

    move v12, v13

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    :goto_6
    if-gt v6, v11, :cond_7

    .line 1191
    iget-object v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v13, v12, v6

    iget-object v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    add-int/lit8 v15, v6, -0x1

    aget v14, v14, v15

    add-int/2addr v13, v14

    aput v13, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1194
    :cond_7
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    aget-char v6, v6, v9

    move v11, v6

    const/4 v6, 0x0

    .line 1195
    :goto_7
    iget v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-ge v6, v12, :cond_8

    .line 1196
    iget-object v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v13, v6, 0x2

    aget-char v12, v12, v13

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v11, v12

    .line 1199
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v14, v13, v11

    sub-int/2addr v14, v9

    aput v14, v13, v11

    .line 1200
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v11, v14, v11

    aput v6, v13, v11

    add-int/lit8 v6, v6, 0x1

    move v11, v12

    goto :goto_7

    .line 1203
    :cond_8
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v11, v9

    aget-char v6, v6, v11

    shl-int/lit8 v6, v6, 0x8

    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    aget-char v11, v11, v9

    add-int/2addr v6, v11

    .line 1204
    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v12, v11, v6

    sub-int/2addr v12, v9

    aput v12, v11, v6

    .line 1205
    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v6, v12, v6

    iget v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    aput v12, v11, v6

    const/4 v6, 0x0

    :goto_8
    if-gt v6, v10, :cond_9

    .line 1214
    aput v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x1

    :cond_a
    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v9

    if-le v6, v1, :cond_a

    .line 1225
    :goto_9
    div-int/lit8 v6, v6, 0x3

    move v1, v6

    :goto_a
    if-gt v1, v10, :cond_d

    .line 1227
    aget v11, v2, v1

    move v12, v1

    .line 1229
    :goto_b
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    sub-int v14, v12, v6

    aget v15, v2, v14

    add-int/2addr v15, v9

    shl-int/lit8 v15, v15, 0x8

    aget v13, v13, v15

    iget-object v15, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v16, v2, v14

    shl-int/lit8 v16, v16, 0x8

    aget v15, v15, v16

    sub-int/2addr v13, v15

    iget-object v15, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    add-int/lit8 v16, v11, 0x1

    shl-int/lit8 v16, v16, 0x8

    aget v15, v15, v16

    iget-object v5, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v16, v11, 0x8

    aget v5, v5, v16

    sub-int/2addr v15, v5

    if-le v13, v15, :cond_c

    .line 1232
    aget v5, v2, v14

    aput v5, v2, v12

    add-int/lit8 v5, v6, -0x1

    if-gt v14, v5, :cond_b

    goto :goto_c

    :cond_b
    move v12, v14

    const/4 v5, 0x0

    goto :goto_b

    :cond_c
    move v14, v12

    .line 1238
    :goto_c
    aput v11, v2, v14

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    goto :goto_a

    :cond_d
    if-ne v6, v9, :cond_1b

    const/4 v1, 0x0

    :goto_d
    if-gt v1, v10, :cond_1a

    .line 1251
    aget v5, v2, v1

    const/4 v6, 0x0

    :goto_e
    const/high16 v11, 0x200000

    const v12, -0x200001

    if-gt v6, v10, :cond_10

    shl-int/lit8 v13, v5, 0x8

    add-int/2addr v13, v6

    .line 1262
    iget-object v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v14, v14, v13

    and-int/2addr v14, v11

    if-eq v14, v11, :cond_f

    .line 1263
    iget-object v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v14, v14, v13

    and-int/2addr v14, v12

    .line 1264
    iget-object v15, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    add-int/lit8 v16, v13, 0x1

    aget v15, v15, v16

    and-int/2addr v12, v15

    sub-int/2addr v12, v9

    if-le v12, v14, :cond_e

    .line 1266
    invoke-direct {v0, v14, v12, v7}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->qSort3(III)V

    .line 1268
    iget v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    iget v14, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    if-le v12, v14, :cond_e

    iget-boolean v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    if-eqz v12, :cond_e

    return-void

    .line 1272
    :cond_e
    iget-object v12, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    aget v14, v12, v13

    or-int/2addr v11, v14

    aput v11, v12, v13

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1284
    :cond_10
    aput-boolean v9, v4, v5

    if-ge v1, v10, :cond_14

    .line 1287
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v13, v5, 0x8

    aget v6, v6, v13

    and-int/2addr v6, v12

    .line 1288
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    add-int/lit8 v14, v5, 0x1

    shl-int/lit8 v14, v14, 0x8

    aget v13, v13, v14

    and-int/2addr v13, v12

    sub-int/2addr v13, v6

    const/4 v14, 0x0

    :goto_f
    shr-int v15, v13, v14

    const v7, 0xfffe

    if-le v15, v7, :cond_11

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_10
    if-ge v7, v13, :cond_13

    .line 1296
    iget-object v15, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    add-int v16, v6, v7

    aget v15, v15, v16

    shr-int v16, v7, v14

    .line 1298
    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    aput v16, v11, v15

    if-ge v15, v8, :cond_12

    .line 1300
    iget-object v11, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->quadrant:[I

    iget v8, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v15, v8

    add-int/2addr v15, v9

    aput v16, v11, v15

    :cond_12
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x14

    const/high16 v11, 0x200000

    goto :goto_10

    :cond_13
    add-int/lit8 v13, v13, -0x1

    shr-int v6, v13, v14

    const v7, 0xffff

    if-le v6, v7, :cond_14

    .line 1305
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_14
    const/4 v6, 0x0

    :goto_11
    if-gt v6, v10, :cond_15

    .line 1314
    iget-object v7, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v5

    aget v7, v7, v8

    and-int/2addr v7, v12

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 1317
    :cond_15
    iget-object v6, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v7, v5, 0x8

    aget v6, v6, v7

    and-int/2addr v6, v12

    .line 1318
    :goto_12
    iget-object v7, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v8, v8, 0x8

    aget v7, v7, v8

    and-int/2addr v7, v12

    if-ge v6, v7, :cond_18

    .line 1319
    iget-object v7, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v8, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v8, v8, v6

    aget-char v7, v7, v8

    .line 1320
    aget-boolean v8, v4, v7

    if-nez v8, :cond_17

    .line 1321
    iget-object v8, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v11, v3, v7

    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v13, v13, v6

    if-nez v13, :cond_16

    iget v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    goto :goto_13

    :cond_16
    iget-object v13, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v13, v13, v6

    sub-int/2addr v13, v9

    :goto_13
    aput v13, v8, v11

    .line 1322
    aget v8, v3, v7

    add-int/2addr v8, v9

    aput v8, v3, v7

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_18
    const/4 v6, 0x0

    :goto_14
    if-gt v6, v10, :cond_19

    .line 1327
    iget-object v7, v0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->ftab:[I

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v5

    aget v11, v7, v8

    const/high16 v12, 0x200000

    or-int/2addr v11, v12

    aput v11, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_19
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x14

    goto/16 :goto_d

    :cond_1a
    :goto_15
    return-void

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_9
.end method

.method private makeMaps()V
    .locals 4

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->seqToUnseq:[C

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    int-to-char v3, v0

    aput-char v3, v1, v2

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->unseqToSeq:[C

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 71
    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private med3(CCC)C
    .locals 1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    move p2, p1

    move p1, v0

    :goto_0
    if-le p1, p3, :cond_1

    move p1, p3

    :cond_1
    if-le p2, p1, :cond_2

    move p1, p2

    :cond_2
    return p1
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->origPtr:I

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsPutIntVS(II)V

    .line 898
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->generateMTFValues()V

    .line 899
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->sendMTFValues()V

    return-void
.end method

.method private static panic()V
    .locals 2

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "panic"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private qSort3(III)V
    .locals 12

    const/16 v0, 0x3e8

    .line 1018
    new-array v1, v0, [Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1020
    new-instance v4, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;-><init>(Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$1;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    aget-object v3, v1, v2

    iput p1, v3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1026
    aget-object p1, v1, v2

    iput p2, p1, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1027
    aget-object p1, v1, v2

    iput p3, p1, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    const/4 p1, 0x1

    const/4 p2, 0x1

    :cond_1
    :goto_1
    if-lez p2, :cond_f

    if-lt p2, v0, :cond_2

    .line 1032
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1036
    aget-object p3, v1, p2

    iget p3, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1037
    aget-object v2, v1, p2

    iget v2, v2, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1038
    aget-object v3, v1, p2

    iget v3, v3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    sub-int v4, v2, p3

    const/16 v5, 0x14

    if-lt v4, v5, :cond_e

    const/16 v4, 0xa

    if-le v3, v4, :cond_3

    goto/16 :goto_7

    .line 1048
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v5, v5, p3

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    aget-char v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v6, v6, v2

    add-int/2addr v6, v3

    add-int/2addr v6, p1

    aget-char v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v7, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    add-int v8, p3, v2

    shr-int/2addr v8, p1

    aget v7, v7, v8

    add-int/2addr v7, v3

    add-int/2addr v7, p1

    aget-char v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->med3(CCC)C

    move-result v4

    move v5, p3

    move v7, v5

    move v6, v2

    move v8, v6

    :goto_2
    if-le v5, v6, :cond_4

    goto :goto_3

    .line 1060
    :cond_4
    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v10, v10, v5

    add-int/2addr v10, v3

    add-int/2addr v10, p1

    aget-char v9, v9, v10

    sub-int/2addr v9, v4

    if-nez v9, :cond_5

    .line 1063
    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v9, v9, v5

    .line 1064
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v11, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v11, v11, v7

    aput v11, v10, v5

    .line 1065
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v9, v10, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-lez v9, :cond_d

    :goto_3
    if-le v5, v6, :cond_6

    goto :goto_4

    .line 1079
    :cond_6
    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v10, v10, v6

    add-int/2addr v10, v3

    add-int/2addr v10, p1

    aget-char v9, v9, v10

    sub-int/2addr v9, v4

    if-nez v9, :cond_7

    .line 1082
    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v9, v9, v6

    .line 1083
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v11, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v11, v11, v8

    aput v11, v10, v6

    .line 1084
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v9, v10, v8

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_7
    if-gez v9, :cond_c

    :goto_4
    if-le v5, v6, :cond_b

    if-ge v8, v7, :cond_8

    .line 1106
    aget-object v4, v1, p2

    iput p3, v4, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1107
    aget-object p3, v1, p2

    iput v2, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1108
    aget-object p3, v1, p2

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_8
    sub-int v4, v7, p3

    sub-int v9, v5, v7

    if-ge v4, v9, :cond_9

    goto :goto_5

    :cond_9
    move v4, v9

    :goto_5
    sub-int v9, v5, v4

    .line 1114
    invoke-direct {p0, p3, v9, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->vswap(III)V

    sub-int v4, v2, v8

    sub-int v6, v8, v6

    if-ge v4, v6, :cond_a

    goto :goto_6

    :cond_a
    move v4, v6

    :goto_6
    sub-int v8, v2, v4

    add-int/2addr v8, p1

    .line 1116
    invoke-direct {p0, v5, v8, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->vswap(III)V

    add-int/2addr v5, p3

    sub-int/2addr v5, v7

    sub-int/2addr v5, p1

    sub-int v4, v2, v6

    add-int/2addr v4, p1

    .line 1121
    aget-object v6, v1, p2

    iput p3, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1122
    aget-object p3, v1, p2

    iput v5, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1123
    aget-object p3, v1, p2

    iput v3, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    add-int/lit8 p2, p2, 0x1

    .line 1126
    aget-object p3, v1, p2

    add-int/2addr v5, p1

    iput v5, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1127
    aget-object p3, v1, p2

    add-int/lit8 v5, v4, -0x1

    iput v5, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1128
    aget-object p3, v1, p2

    add-int/lit8 v5, v3, 0x1

    iput v5, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    add-int/2addr p2, p1

    .line 1131
    aget-object p3, v1, p2

    iput v4, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->ll:I

    .line 1132
    aget-object p3, v1, p2

    iput v2, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->hh:I

    .line 1133
    aget-object p3, v1, p2

    iput v3, p3, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream$StackElem;->dd:I

    add-int/2addr p2, p1

    goto/16 :goto_1

    .line 1098
    :cond_b
    iget-object v9, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v9, v9, v5

    .line 1099
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v11, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v11, v11, v6

    aput v11, v10, v5

    .line 1100
    iget-object v10, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v9, v10, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1041
    :cond_e
    :goto_7
    invoke-direct {p0, p3, v2, v3}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->simpleSort(III)V

    .line 1042
    iget p3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    if-le p3, v2, :cond_1

    iget-boolean p3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    if-eqz p3, :cond_1

    return-void

    :cond_f
    return-void
.end method

.method private randomiseBlock()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 1338
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1341
    :goto_1
    iget v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    if-gt v1, v4, :cond_3

    if-nez v2, :cond_1

    .line 1343
    sget-object v2, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->rNums:[I

    aget v2, v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x200

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1350
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    add-int/lit8 v1, v1, 0x1

    aget-char v5, v4, v1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 1352
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    aget-char v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 1354
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    iget-object v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    aget-char v5, v5, v1

    aput-boolean v6, v4, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private sendMTFValues()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    const/16 v0, 0x102

    const/4 v1, 0x6

    .line 583
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, C

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [[C

    .line 589
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nInUse:I

    const/4 v8, 0x2

    add-int/lit8 v9, v2, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v11, 0xf

    if-ge v2, v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_0

    .line 592
    aget-object v4, v7, v2

    aput-char v11, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_1
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    if-gtz v2, :cond_2

    .line 598
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    .line 601
    :cond_2
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_3

    const/4 v14, 0x2

    goto :goto_2

    .line 603
    :cond_3
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_4

    const/4 v14, 0x3

    goto :goto_2

    .line 605
    :cond_4
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v3, 0x4b0

    if-ge v2, v3, :cond_5

    const/4 v14, 0x4

    goto :goto_2

    .line 607
    :cond_5
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    const/16 v3, 0x960

    if-ge v2, v3, :cond_6

    const/4 v14, 0x5

    goto :goto_2

    :cond_6
    const/4 v14, 0x6

    .line 617
    :goto_2
    iget v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    move v3, v2

    move v2, v14

    const/4 v5, 0x0

    :goto_3
    const/4 v15, 0x1

    if-lez v2, :cond_b

    .line 620
    div-int v12, v3, v2

    add-int/lit8 v17, v5, -0x1

    move/from16 v4, v17

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_7

    add-int/lit8 v0, v9, -0x1

    if-ge v4, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 625
    iget-object v0, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v0, v0, v4

    add-int/2addr v13, v0

    const/16 v0, 0x102

    goto :goto_4

    :cond_7
    if-le v4, v5, :cond_8

    if-eq v2, v14, :cond_8

    if-eq v2, v15, :cond_8

    sub-int v0, v14, v2

    .line 628
    rem-int/2addr v0, v8

    if-ne v0, v15, :cond_8

    .line 630
    iget-object v0, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mtfFreq:[I

    aget v0, v0, v4

    sub-int/2addr v13, v0

    add-int/lit8 v4, v4, -0x1

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_a

    if-lt v0, v5, :cond_9

    if-gt v0, v4, :cond_9

    add-int/lit8 v12, v2, -0x1

    .line 636
    aget-object v12, v7, v12

    aput-char v10, v12, v0

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v2, -0x1

    .line 638
    aget-object v12, v7, v12

    aput-char v11, v12, v0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr v3, v13

    const/16 v0, 0x102

    goto :goto_3

    .line 648
    :cond_b
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v0, I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 649
    new-array v2, v1, [I

    .line 650
    new-array v3, v1, [S

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_7
    const/16 v13, 0x14

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1a

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v14, :cond_c

    .line 656
    aput v10, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v14, :cond_e

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v9, :cond_d

    .line 661
    aget-object v17, v0, v5

    aput v10, v17, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 671
    :goto_b
    iget v11, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    if-lt v5, v11, :cond_10

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v14, :cond_f

    .line 745
    aget-object v11, v7, v5

    aget-object v8, v0, v5

    invoke-static {v11, v8, v9, v13}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->hbMakeCodeLengths([C[III)V

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    goto :goto_c

    :cond_f
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x2

    const/16 v11, 0xf

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v5, 0x32

    sub-int/2addr v8, v15

    .line 675
    iget v11, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    if-lt v8, v11, :cond_11

    .line 676
    iget v8, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    sub-int/2addr v8, v15

    :cond_11
    const/4 v11, 0x0

    :goto_d
    if-ge v11, v14, :cond_12

    .line 684
    aput-short v10, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_12
    if-ne v14, v1, :cond_14

    move v11, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_e
    if-gt v11, v8, :cond_13

    .line 691
    iget-object v13, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aget-short v13, v13, v11

    .line 692
    aget-object v23, v7, v10

    aget-char v23, v23, v13

    add-int v1, v17, v23

    int-to-short v1, v1

    .line 693
    aget-object v17, v7, v15

    aget-char v17, v17, v13

    add-int v15, v18, v17

    int-to-short v15, v15

    const/16 v17, 0x2

    .line 694
    aget-object v18, v7, v17

    aget-char v17, v18, v13

    add-int v10, v19, v17

    int-to-short v10, v10

    const/16 v17, 0x3

    .line 695
    aget-object v18, v7, v17

    aget-char v17, v18, v13

    move/from16 v25, v1

    add-int v1, v20, v17

    int-to-short v1, v1

    const/16 v17, 0x4

    .line 696
    aget-object v18, v7, v17

    aget-char v17, v18, v13

    move/from16 v26, v1

    add-int v1, v21, v17

    int-to-short v1, v1

    const/16 v16, 0x5

    .line 697
    aget-object v17, v7, v16

    aget-char v13, v17, v13

    add-int v13, v22, v13

    int-to-short v13, v13

    add-int/lit8 v11, v11, 0x1

    move/from16 v21, v1

    move/from16 v19, v10

    move/from16 v22, v13

    move/from16 v18, v15

    move/from16 v17, v25

    move/from16 v20, v26

    const/4 v1, 0x6

    const/4 v10, 0x0

    const/16 v13, 0x14

    const/4 v15, 0x1

    goto :goto_e

    :cond_13
    const/4 v1, 0x0

    aput-short v17, v3, v1

    const/4 v1, 0x1

    aput-short v18, v3, v1

    const/4 v1, 0x2

    aput-short v19, v3, v1

    const/4 v1, 0x3

    aput-short v20, v3, v1

    const/4 v1, 0x4

    aput-short v21, v3, v1

    const/4 v10, 0x5

    aput-short v22, v3, v10

    goto :goto_11

    :cond_14
    const/4 v1, 0x4

    move v10, v5

    :goto_f
    if-gt v10, v8, :cond_16

    .line 707
    iget-object v11, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aget-short v11, v11, v10

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v14, :cond_15

    .line 709
    aget-short v15, v3, v13

    aget-object v17, v7, v13

    aget-char v17, v17, v11

    add-int v15, v15, v17

    int-to-short v15, v15

    aput-short v15, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_16
    :goto_11
    const v10, 0x3b9ac9ff

    const/4 v11, -0x1

    const/4 v10, 0x0

    const v11, 0x3b9ac9ff

    const/4 v13, -0x1

    :goto_12
    if-ge v10, v14, :cond_18

    .line 721
    aget-short v15, v3, v10

    if-ge v15, v11, :cond_17

    .line 722
    aget-short v11, v3, v10

    move v13, v10

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 727
    :cond_18
    aget v10, v2, v13

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v2, v13

    .line 728
    iget-object v10, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selector:[C

    int-to-char v11, v13

    aput-char v11, v10, v12

    add-int/lit8 v12, v12, 0x1

    :goto_13
    if-gt v5, v8, :cond_19

    .line 735
    aget-object v10, v0, v13

    iget-object v11, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aget-short v11, v11, v5

    aget v15, v10, v11

    const/16 v17, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_19
    add-int/lit8 v5, v8, 0x1

    const/4 v1, 0x6

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/16 v13, 0x14

    const/4 v15, 0x1

    goto/16 :goto_b

    :cond_1a
    const/4 v0, 0x0

    .line 749
    check-cast v0, [[I

    const/16 v0, 0x8

    if-lt v14, v0, :cond_1b

    .line 754
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_1b
    const v0, 0x8000

    if-ge v12, v0, :cond_1d

    const/16 v0, 0x4652

    if-le v12, v0, :cond_1c

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v0, 0x6

    goto :goto_16

    .line 757
    :cond_1d
    :goto_15
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    goto :goto_14

    .line 763
    :goto_16
    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v14, :cond_1e

    int-to-char v2, v0

    .line 766
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v12, :cond_20

    .line 769
    iget-object v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selector:[C

    aget-char v2, v2, v0

    const/16 v24, 0x0

    .line 771
    aget-char v3, v1, v24

    const/4 v4, 0x0

    :goto_19
    if-eq v2, v3, :cond_1f

    add-int/lit8 v4, v4, 0x1

    .line 775
    aget-char v5, v1, v4

    .line 776
    aput-char v3, v1, v4

    move v3, v5

    goto :goto_19

    :cond_1f
    aput-char v3, v1, v24

    .line 779
    iget-object v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selectorMtf:[C

    int-to-char v3, v4

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_20
    const/4 v0, 0x6

    const/16 v2, 0x102

    .line 783
    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [[I

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v14, :cond_26

    const/16 v0, 0x20

    const/4 v0, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x0

    :goto_1b
    if-ge v0, v9, :cond_23

    .line 790
    aget-object v1, v7, v10

    aget-char v1, v1, v0

    if-le v1, v4, :cond_21

    .line 791
    aget-object v1, v7, v10

    aget-char v4, v1, v0

    .line 793
    :cond_21
    aget-object v1, v7, v10

    aget-char v1, v1, v0

    if-ge v1, v3, :cond_22

    .line 794
    aget-object v1, v7, v10

    aget-char v3, v1, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_23
    const/16 v11, 0x14

    if-le v4, v11, :cond_24

    .line 798
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_24
    const/4 v0, 0x1

    if-ge v3, v0, :cond_25

    .line 801
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    .line 803
    :cond_25
    aget-object v1, v8, v10

    aget-object v2, v7, v10

    move-object v0, v6

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->hbAssignCodes([I[CIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_26
    const/16 v0, 0x10

    .line 808
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_29

    const/4 v3, 0x0

    .line 810
    aput-boolean v3, v1, v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v0, :cond_28

    .line 812
    iget-object v4, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    mul-int/lit8 v5, v2, 0x10

    add-int/2addr v5, v3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 813
    aput-boolean v4, v1, v2

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 820
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    .line 821
    invoke-direct {v6, v3, v3}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    goto :goto_1f

    :cond_2a
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 823
    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2b
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_2e

    .line 828
    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_2d

    .line 830
    iget-object v4, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    mul-int/lit8 v5, v2, 0x10

    add-int/2addr v5, v3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    .line 831
    invoke-direct {v6, v4, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    goto :goto_22

    :cond_2c
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 833
    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    const/4 v2, 0x3

    .line 843
    invoke-direct {v6, v2, v14}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    const/16 v0, 0xf

    .line 844
    invoke-direct {v6, v0, v12}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v12, :cond_30

    const/4 v1, 0x0

    .line 846
    :goto_24
    iget-object v2, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selectorMtf:[C

    aget-char v2, v2, v0

    if-ge v1, v2, :cond_2f

    const/4 v2, 0x1

    .line 847
    invoke-direct {v6, v2, v2}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2f
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 849
    invoke-direct {v6, v2, v1}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_25
    if-ge v0, v14, :cond_34

    .line 856
    aget-object v2, v7, v0

    aget-char v2, v2, v1

    const/4 v1, 0x5

    .line 857
    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    move v3, v2

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v9, :cond_33

    .line 859
    :goto_27
    aget-object v4, v7, v0

    aget-char v4, v4, v2

    if-ge v3, v4, :cond_31

    const/4 v4, 0x2

    .line 860
    invoke-direct {v6, v4, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_31
    const/4 v4, 0x2

    .line 863
    :goto_28
    aget-object v5, v7, v0

    aget-char v5, v5, v2

    if-le v3, v5, :cond_32

    const/4 v5, 0x3

    .line 864
    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    :cond_32
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 867
    invoke-direct {v6, v10, v11}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_33
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v11, 0x0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    goto :goto_25

    :cond_34
    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 876
    :goto_29
    iget v1, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    if-lt v11, v1, :cond_36

    if-eq v0, v12, :cond_35

    .line 892
    invoke-static {}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->panic()V

    :cond_35
    return-void

    :cond_36
    add-int/lit8 v1, v11, 0x32

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 880
    iget v3, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    if-lt v1, v3, :cond_37

    .line 881
    iget v1, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->nMTF:I

    sub-int/2addr v1, v2

    :cond_37
    :goto_2a
    if-gt v11, v1, :cond_38

    .line 884
    iget-object v3, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selector:[C

    aget-char v3, v3, v0

    aget-object v3, v7, v3

    iget-object v4, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aget-short v4, v4, v11

    aget-char v3, v3, v4

    iget-object v4, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->selector:[C

    aget-char v4, v4, v0

    aget-object v4, v8, v4

    iget-object v5, v6, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->szptr:[S

    aget-short v5, v5, v11

    aget v4, v4, v5

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsW(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    :cond_38
    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method private simpleSort(III)V
    .locals 9

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 914
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->incs:[I

    aget v2, v2, v1

    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_c

    .line 920
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->incs:[I

    aget v0, v0, v1

    add-int v2, p1, v0

    move v3, v2

    :cond_2
    if-le v3, p2, :cond_3

    goto :goto_6

    .line 928
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v4, v4, v3

    move v5, v3

    .line 930
    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    sub-int v7, v5, v0

    aget v6, v6, v7

    add-int/2addr v6, p3

    add-int v8, v4, p3

    invoke-direct {p0, v6, v8}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->fullGtU(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 931
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v8, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v8, v8, v7

    aput v8, v6, v5

    add-int/lit8 v5, v2, -0x1

    if-gt v7, v5, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_2

    .line 937
    :cond_5
    :goto_3
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    if-le v3, p2, :cond_6

    goto :goto_6

    .line 944
    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v4, v4, v3

    move v5, v3

    .line 946
    :goto_4
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    sub-int v7, v5, v0

    aget v6, v6, v7

    add-int/2addr v6, p3

    add-int v8, v4, p3

    invoke-direct {p0, v6, v8}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->fullGtU(II)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 947
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v8, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v8, v8, v7

    aput v8, v6, v5

    add-int/lit8 v5, v2, -0x1

    if-gt v7, v5, :cond_7

    move v5, v7

    goto :goto_5

    :cond_7
    move v5, v7

    goto :goto_4

    .line 953
    :cond_8
    :goto_5
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    if-le v3, p2, :cond_9

    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 960
    :cond_9
    iget-object v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v4, v4, v3

    move v5, v3

    .line 962
    :goto_7
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    sub-int v7, v5, v0

    aget v6, v6, v7

    add-int/2addr v6, p3

    add-int v8, v4, p3

    invoke-direct {p0, v6, v8}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->fullGtU(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 963
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v8, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v8, v8, v7

    aput v8, v6, v5

    add-int/lit8 v5, v2, -0x1

    if-gt v7, v5, :cond_a

    move v5, v7

    goto :goto_8

    :cond_a
    move v5, v7

    goto :goto_7

    .line 969
    :cond_b
    :goto_8
    iget-object v6, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    .line 972
    iget v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workDone:I

    iget v5, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->workLimit:I

    if-le v4, v5, :cond_2

    iget-boolean v4, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->firstAttempt:Z

    if-eqz v4, :cond_2

    return-void

    :cond_c
    return-void
.end method

.method private vswap(III)V
    .locals 3

    :goto_0
    if-lez p3, :cond_0

    .line 982
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v0, v0, p1

    .line 983
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    iget-object v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aget v2, v2, p2

    aput v2, v1, p1

    .line 984
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->zptr:[I

    aput v0, v1, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->allowableBlockSize:I

    if-ge v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v0, 0x0

    .line 338
    :goto_0
    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->mCrc:Lorg/bouncycastle/apache/bzip2/CRC;

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/apache/bzip2/CRC;->updateCRC(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    packed-switch v0, :pswitch_data_0

    .line 361
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->inUse:[Z

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    add-int/lit8 v1, v1, -0x4

    aput-boolean v2, v0, v1

    .line 362
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 364
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 365
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 366
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 367
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 368
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 369
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 370
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 371
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    add-int/lit8 v2, v2, -0x4

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 353
    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 355
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 356
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 357
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 358
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 347
    :pswitch_1
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 348
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v3, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 349
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 350
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 343
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    .line 344
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->block:[C

    iget v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->last:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 375
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->endBlock()V

    .line 376
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->initBlock()V

    .line 377
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->writeRun()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->finish()V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->closed:Z

    .line 396
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 397
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->close()V

    .line 385
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->finished:Z

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    if-lez v0, :cond_1

    .line 406
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->writeRun()V

    :cond_1
    const/4 v0, -0x1

    .line 408
    iput v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    .line 409
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->endBlock()V

    .line 410
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->endCompression()V

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->finished:Z

    .line 412
    invoke-virtual {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    .line 417
    iget-object v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->bsStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit16 p1, p1, 0x100

    .line 315
    rem-int/lit16 p1, p1, 0x100

    .line 316
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 317
    iget v0, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    if-ne v0, p1, :cond_0

    .line 318
    iget p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    .line 319
    iget p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    const/16 v0, 0xfe

    if-le p1, v0, :cond_2

    .line 320
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->writeRun()V

    .line 321
    iput v1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    const/4 p1, 0x0

    .line 322
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    goto :goto_0

    .line 325
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->writeRun()V

    .line 326
    iput v2, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    .line 327
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    goto :goto_0

    .line 330
    :cond_1
    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->currentChar:I

    .line 331
    iget p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/apache/bzip2/CBZip2OutputStream;->runLength:I

    :cond_2
    :goto_0
    return-void
.end method
