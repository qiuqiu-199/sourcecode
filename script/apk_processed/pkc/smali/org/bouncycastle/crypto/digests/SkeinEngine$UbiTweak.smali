.class Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;
.super Ljava/lang/Object;
.source "SkeinEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UbiTweak"
.end annotation


# instance fields
.field private extendedPosition:Z

.field private tweak:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 247
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 256
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    return-void
.end method


# virtual methods
.method public advancePosition(I)V
    .locals 13

    .line 324
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 326
    new-array v0, v0, [J

    .line 327
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v4, v3, v2

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    aput-wide v8, v0, v2

    .line 328
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    and-long v8, v4, v6

    aput-wide v8, v0, v1

    .line 329
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v8, v4, v1

    and-long v4, v8, v6

    const/4 v8, 0x2

    aput-wide v4, v0, v8

    int-to-long v4, p1

    const/4 p1, 0x0

    .line 332
    :goto_0
    array-length v9, v0

    if-ge p1, v9, :cond_0

    .line 334
    aget-wide v9, v0, p1

    add-long v11, v4, v9

    .line 335
    aput-wide v11, v0, p1

    ushr-long v4, v11, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v4, v0, v1

    and-long v9, v4, v6

    shl-long v3, v9, v3

    aget-wide v9, v0, v2

    and-long v11, v9, v6

    or-long v9, v3, v11

    aput-wide v9, p1, v2

    .line 339
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v3, v2, v1

    const-wide v9, -0x100000000L

    and-long v11, v3, v9

    aget-wide v2, v0, v8

    and-long v4, v2, v6

    or-long v2, v11, v4

    aput-wide v2, p1, v1

    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v3, v0, v2

    int-to-long v5, p1

    add-long v7, v3, v5

    .line 345
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aput-wide v7, p1, v2

    const-wide v2, 0x7fffffff80000000L

    cmp-long p1, v7, v2

    if-lez p1, :cond_2

    .line 348
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 6

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/16 v0, 0x38

    ushr-long v0, v1, v0

    const-wide/16 v2, 0x3f

    and-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public getWords()[J
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    return-object v0
.end method

.method public isFinal()Z
    .locals 8

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFirst()Z
    .locals 8

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    .line 269
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 270
    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->setFirst(Z)V

    return-void
.end method

.method public reset(Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;)V
    .locals 2

    .line 261
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 262
    iget-boolean p1, p1, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    return-void
.end method

.method public setFinal(Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, -0x8000000000000000L

    or-long v5, v1, v3

    aput-wide v5, p1, v0

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v1, p1, v0

    const-wide v3, 0x7fffffffffffffffL

    and-long v5, v1, v3

    aput-wide v5, p1, v0

    :goto_0
    return-void
.end method

.method public setFirst(Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    or-long v5, v1, v3

    aput-wide v5, p1, v0

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v1, p1, v0

    const-wide v3, -0x4000000000000001L    # -1.9999999999999998

    and-long v5, v1, v3

    aput-wide v5, p1, v0

    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 11

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    const-wide v5, -0x4000000000L

    and-long v7, v3, v5

    int-to-long v3, p1

    const-wide/16 v5, 0x3f

    and-long v9, v3, v5

    const/16 p1, 0x38

    shl-long v3, v9, p1

    or-long v5, v7, v3

    aput-wide v5, v0, v2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->isFirst()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine$UbiTweak;->isFinal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method