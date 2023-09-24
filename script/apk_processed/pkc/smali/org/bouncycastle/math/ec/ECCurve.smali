.class public abstract Lorg/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/ECCurve$F2m;,
        Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lorg/bouncycastle/math/ec/ECCurve$Fp;,
        Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;,
        Lorg/bouncycastle/math/ec/ECCurve$Config;
    }
.end annotation


# instance fields
.field protected a:Lorg/bouncycastle/math/ec/ECFieldElement;

.field protected b:Lorg/bouncycastle/math/ec/ECFieldElement;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected field:Lorg/bouncycastle/math/field/FiniteField;

.field protected multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/math/field/FiniteField;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 96
    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve;->field:Lorg/bouncycastle/math/field/FiniteField;

    return-void
.end method


# virtual methods
.method protected checkPoint(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 446
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 448
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'point\' must be non-null and on this curve"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkPoints([Lorg/bouncycastle/math/ec/ECPoint;II)V
    .locals 2

    if-nez p1, :cond_0

    .line 461
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 463
    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p2, v0

    .line 470
    aget-object v1, p1, v1

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    if-eq p0, v1, :cond_2

    .line 473
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' entries must be null or on this curve"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 465
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid range specified for \'points\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized configure()Lorg/bouncycastle/math/ec/ECCurve$Config;
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECCurve$Config;-><init>(Lorg/bouncycastle/math/ec/ECCurve;ILorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECMultiplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createDefaultMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lorg/bouncycastle/math/ec/GLVMultiplier;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    check-cast v1, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/math/ec/GLVMultiplier;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    .line 366
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    .line 368
    aget-byte v3, p1, v2

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 433
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid point encoding 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :pswitch_1
    array-length v5, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    if-eq v5, v6, :cond_0

    .line 418
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for hybrid encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_0
    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    .line 422
    invoke-static {p1, v6, v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 424
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eq v0, v2, :cond_2

    .line 426
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_2
    invoke-virtual {p0, v5, p1}, Lorg/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 402
    :pswitch_2
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    if-eq v1, v2, :cond_3

    .line 404
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for uncompressed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_3
    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 408
    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 410
    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 384
    :pswitch_3
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_4

    .line 386
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for compressed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    and-int/lit8 v1, v3, 0x1

    .line 390
    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 392
    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v0

    if-nez v0, :cond_6

    .line 395
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid point"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :pswitch_4
    array-length p1, p1

    if-eq p1, v4, :cond_5

    .line 375
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect length for infinity encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_6
    :goto_0
    if-eqz v3, :cond_7

    .line 436
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid infinity encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 489
    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCoordinateSystem()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getField()Lorg/bouncycastle/math/field/FiniteField;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->field:Lorg/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method public declared-synchronized getMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 349
    monitor-exit p0

    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 1

    .line 175
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->checkPoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 176
    monitor-enter p1

    .line 178
    :try_start_0
    iget-object v0, p1, Lorg/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/math/ec/PreCompInfo;

    :goto_0
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 180
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public hashCode()I
    .locals 3

    .line 494
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 496
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    .line 211
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 221
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean p1, p1, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public abstract isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 3

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 8

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECCurve;->checkPoints([Lorg/bouncycastle/math/ec/ECPoint;II)V

    .line 263
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 279
    new-array v0, p3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 280
    new-array v1, p3, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v5, p2, v3

    .line 284
    aget-object v6, p1, v5

    if-eqz v6, :cond_1

    if-nez p4, :cond_0

    .line 285
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 287
    :cond_0
    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v4

    add-int/lit8 v6, v4, 0x1

    .line 288
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    .line 297
    :cond_3
    invoke-static {v0, v2, v4, p4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_1
    if-ge v2, v4, :cond_4

    .line 301
    aget p2, v1, v2

    .line 302
    aget-object p3, p1, p2

    aget-object p4, v0, v2

    invoke-virtual {p3, p4}, Lorg/bouncycastle/math/ec/ECPoint;->normalize(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    if-eqz p4, :cond_6

    .line 270
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'iso\' not valid for affine coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompInfo;)V
    .locals 2

    .line 197
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->checkPoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 198
    monitor-enter p1

    .line 200
    :try_start_0
    iget-object v0, p1, Lorg/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p1, Lorg/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 205
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 119
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-object p1
.end method
