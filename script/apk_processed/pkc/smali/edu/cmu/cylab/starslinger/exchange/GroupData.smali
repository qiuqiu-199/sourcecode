.class public Ledu/cmu/cylab/starslinger/exchange/GroupData;
.super Ljava/lang/Object;
.source "GroupData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ledu/cmu/cylab/starslinger/exchange/GroupData;",
        ">;"
    }
.end annotation


# instance fields
.field protected mGrpData:[[B

.field protected mGrpSize:I

.field protected mUsrIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    .line 68
    check-cast v0, [[B

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    .line 62
    check-cast p1, [[B

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 7

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    .line 495
    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I
    .locals 8

    .line 443
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 446
    :goto_0
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v1, v3, :cond_5

    .line 447
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 451
    :goto_1
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 452
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->usrIDs()[I

    move-result-object v6

    aget v6, v6, v4

    if-ne v3, v6, :cond_1

    .line 454
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v5

    move v7, v5

    move v5, v4

    move v4, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ne v5, v2, :cond_3

    return v2

    .line 461
    :cond_3
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v3, v3, v1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpData()[[B

    move-result-object v4

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Ledu/cmu/cylab/starslinger/exchange/GroupData;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->compareTo(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I

    move-result p1

    return p1
.end method

.method public getHash()[B
    .locals 1

    .line 318
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedData()[B

    move-result-object v0

    .line 319
    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOrderedData()[B
    .locals 7

    .line 293
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 295
    :goto_0
    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 296
    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v4, v4, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 301
    :goto_1
    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 303
    :goto_2
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v4, v5, :cond_2

    .line 304
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v5, v5, v4

    aget v6, v0, v3

    if-ne v5, v6, :cond_1

    .line 305
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 306
    iget v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getOrderedIDs()[I
    .locals 1

    .line 286
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 287
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-object v0
.end method

.method public grpData()[[B
    .locals 1

    .line 56
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    return-object v0
.end method

.method public grpSize()I
    .locals 1

    .line 48
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    return v0
.end method

.method public isDecommitUpdate(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I
    .locals 9

    .line 173
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 176
    :cond_0
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v1, v3, :cond_6

    .line 180
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 185
    :goto_1
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 186
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->usrIDs()[I

    move-result-object v7

    aget v7, v7, v5

    if-ne v3, v7, :cond_2

    .line 188
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v6

    move v8, v6

    move v6, v5

    move v5, v8

    :cond_2
    add-int/2addr v5, v2

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    const/4 p1, -0x3

    return p1

    :cond_4
    const/16 v3, 0x20

    .line 196
    new-array v5, v3, [B

    .line 198
    :try_start_0
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v5, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpData()[[B

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object v3

    .line 205
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    const-string p1, "SafeSlinger-Exchange"

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decoHash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SafeSlinger-Exchange"

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compHash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v4

    :catch_1
    return v4

    :cond_6
    return v0
.end method

.method public isSignatureUpdate(Ledu/cmu/cylab/starslinger/exchange/GroupData;)I
    .locals 11

    .line 225
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 228
    :cond_0
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v1, v3, :cond_7

    .line 232
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 237
    :goto_1
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 238
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->usrIDs()[I

    move-result-object v7

    aget v7, v7, v5

    if-ne v3, v7, :cond_2

    .line 240
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpSize()I

    move-result v6

    move v10, v6

    move v6, v5

    move v5, v10

    :cond_2
    add-int/2addr v5, v2

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    const/4 p1, -0x3

    return p1

    :cond_4
    const/16 v3, 0x20

    .line 249
    new-array v5, v3, [B

    .line 250
    new-array v7, v3, [B

    .line 251
    new-array v8, v3, [B

    .line 253
    :try_start_0
    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->grpData()[[B

    move-result-object v9

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 254
    invoke-virtual {v6, v5, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 255
    invoke-virtual {v6, v7, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v8, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-static {v7}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object v3

    .line 266
    invoke-static {v5, v3}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object v3

    .line 267
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p1, 0x2

    return p1

    .line 271
    :cond_5
    invoke-static {v5}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object v3

    .line 274
    invoke-static {v3, v7}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object v3

    .line 275
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_6

    const-string p1, "SafeSlinger-Exchange"

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descCommit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SafeSlinger-Exchange"

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compCommit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    return v4

    :catch_1
    return v4

    :cond_7
    return v0
.end method

.method public save_ID_data([B)I
    .locals 7

    const/4 v0, -0x1

    .line 81
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 84
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-le v1, v2, :cond_0

    return v0

    .line 89
    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    .line 90
    new-array v2, v1, [[B

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 95
    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v3

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    return v0

    .line 100
    :cond_1
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    new-array v6, v4, [B

    aput-object v6, v5, v3

    .line 101
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v5, v5, v3

    invoke-virtual {p1, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public save_data([B)I
    .locals 9

    const/4 v0, -0x1

    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 122
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-eq v1, v2, :cond_0

    return v0

    .line 126
    :cond_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    array-length v2, v2

    if-gt v1, v2, :cond_7

    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_2

    return v0

    .line 141
    :cond_2
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v6, v6, v3

    if-eq v6, v4, :cond_4

    move v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    .line 144
    iget-object v8, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v8, v8, v6

    if-ne v8, v4, :cond_3

    move v7, v6

    move v6, v1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v7, v3

    .line 151
    :cond_5
    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    new-array v6, v5, [B

    aput-object v6, v4, v7

    .line 152
    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v4, v4, v7

    invoke-virtual {p1, v4, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public sortAllHalfKeys()[[B
    .locals 10

    .line 328
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    new-array v0, v0, [[B

    .line 332
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 333
    :goto_0
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v3, v5, :cond_2

    move v5, v4

    const/4 v4, 0x0

    .line 334
    :goto_1
    iget v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v4, v6, :cond_1

    .line 335
    aget v6, v1, v3

    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_0

    const/16 v6, 0x20

    .line 336
    new-array v7, v6, [B

    .line 337
    sget v8, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->HALFKEY_LEN:I

    new-array v8, v8, [B

    .line 338
    iget-object v9, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v9, v9, v4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 339
    invoke-virtual {v9, v7, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 340
    sget v6, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->HALFKEY_LEN:I

    invoke-virtual {v9, v8, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 341
    aput-object v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method public sortAllMatchNonce()[[B
    .locals 8

    .line 402
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    new-array v0, v0, [[B

    .line 406
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 407
    :goto_0
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v3, v5, :cond_2

    move v5, v4

    const/4 v4, 0x0

    .line 408
    :goto_1
    iget v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v4, v6, :cond_1

    .line 409
    aget v6, v1, v3

    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_0

    .line 410
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v6, v6, v4

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method public sortOthersDataNew(I)[[B
    .locals 9

    .line 351
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [[B

    .line 355
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 356
    :goto_0
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v3, v5, :cond_3

    .line 357
    aget v5, v1, v3

    if-eq v5, p1, :cond_2

    move v5, v4

    const/4 v4, 0x0

    .line 358
    :goto_1
    iget v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v4, v6, :cond_1

    .line 359
    aget v6, v1, v3

    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_0

    .line 360
    sget v6, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->HALFKEY_LEN:I

    add-int/lit8 v6, v6, 0x20

    new-array v6, v6, [B

    .line 362
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v7, v7, v4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 363
    sget v8, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->HALFKEY_LEN:I

    add-int/lit8 v8, v8, 0x20

    invoke-virtual {v7, v6, v2, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 365
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 366
    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    return-object p1
.end method

.method public sortOthersMatchNonce(I)[[B
    .locals 8

    .line 419
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [[B

    .line 423
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupData;->getOrderedIDs()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 424
    :goto_0
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v3, v5, :cond_3

    .line 425
    aget v5, v1, v3

    if-eq v5, p1, :cond_2

    move v5, v4

    const/4 v4, 0x0

    .line 426
    :goto_1
    iget v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v4, v6, :cond_1

    .line 427
    aget v6, v1, v3

    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_0

    .line 428
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v6, v6, v4

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " members in the group, data sample:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 474
    new-array v2, v1, [B

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    .line 476
    :goto_0
    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpSize:I

    if-ge v0, v5, :cond_1

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    aget v4, v4, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "b "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    iget-object v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mGrpData:[[B

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 481
    invoke-virtual {v5, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v6, v1, :cond_0

    const/16 v6, 0x20

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    :goto_1
    new-array v6, v6, [B

    .line 483
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v4
.end method

.method public usrIDs()[I
    .locals 1

    .line 52
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupData;->mUsrIds:[I

    return-object v0
.end method
