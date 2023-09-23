.class public abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final LOOKUP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->generateLookup()[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    return-void
.end method

.method public static asBytes([I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method

.method public static asInts([B[I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    return-void
.end method

.method public static asInts([B)[I
    .locals 2

    const/4 v0, 0x4

    .line 79
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[I)V

    return-object v0
.end method

.method private static generateLookup()[I
    .locals 9

    const/16 v0, 0x100

    .line 12
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x7

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_1

    const/4 v7, 0x1

    shl-int/2addr v7, v5

    and-int/2addr v7, v3

    if-eqz v7, :cond_0

    const/high16 v7, -0x1f000000

    rsub-int/lit8 v8, v5, 0x7

    ushr-int/2addr v7, v8

    xor-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 24
    :cond_1
    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static multiply([B[B)V
    .locals 1

    .line 103
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v0

    .line 104
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    .line 106
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    return-void
.end method

.method public static multiply([I[I)V
    .locals 17

    const/4 v0, 0x0

    .line 111
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    move v9, v1

    move v10, v3

    move v11, v5

    move v12, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v13, 0x4

    if-ge v1, v13, :cond_1

    .line 116
    aget v14, p1, v1

    move v15, v12

    move v12, v8

    move v8, v7

    move v7, v5

    move v5, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v3, v6, :cond_0

    shr-int/lit8 v6, v14, 0x1f

    shl-int/2addr v14, v2

    and-int v16, v9, v6

    xor-int v5, v5, v16

    and-int v16, v10, v6

    xor-int v7, v7, v16

    and-int v16, v11, v6

    xor-int v8, v8, v16

    and-int/2addr v6, v15

    xor-int/2addr v12, v6

    shl-int/lit8 v6, v15, 0x1f

    shr-int/lit8 v6, v6, 0x8

    ushr-int/lit8 v15, v15, 0x1

    shl-int/lit8 v16, v11, 0x1f

    or-int v15, v15, v16

    ushr-int/lit8 v11, v11, 0x1

    shl-int/lit8 v16, v10, 0x1f

    or-int v11, v11, v16

    ushr-int/lit8 v10, v10, 0x1

    shl-int/lit8 v16, v9, 0x1f

    or-int v10, v10, v16

    ushr-int/lit8 v9, v9, 0x1

    const/high16 v16, -0x1f000000

    and-int v6, v6, v16

    xor-int/2addr v9, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v12

    move v12, v15

    const/4 v6, 0x3

    goto :goto_0

    .line 133
    :cond_1
    aput v3, p0, v0

    .line 134
    aput v5, p0, v2

    .line 135
    aput v7, p0, v4

    const/4 v0, 0x3

    .line 136
    aput v8, p0, v0

    return-void
.end method

.method public static multiplyP([I[I)V
    .locals 3

    .line 171
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)I

    move-result p0

    shr-int/lit8 p0, p0, 0x8

    const/4 v0, 0x0

    .line 172
    aget v1, p1, v0

    const/high16 v2, -0x1f000000

    and-int/2addr p0, v2

    xor-int/2addr p0, v1

    aput p0, p1, v0

    return-void
.end method

.method public static multiplyP8([I[I)V
    .locals 3

    const/16 v0, 0x8

    .line 189
    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)I

    move-result p0

    const/4 v0, 0x0

    .line 190
    aget v1, p1, v0

    sget-object v2, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 p0, p0, 0x18

    aget p0, v2, p0

    xor-int/2addr p0, v1

    aput p0, p1, v0

    return-void
.end method

.method public static oneAsInts()[I
    .locals 3

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method static shiftRight([I[I)I
    .locals 4

    const/4 v0, 0x0

    .line 229
    aget v1, p0, v0

    ushr-int/lit8 v2, v1, 0x1

    .line 230
    aput v2, p1, v0

    shl-int/lit8 v0, v1, 0x1f

    const/4 v1, 0x1

    .line 232
    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    .line 233
    aput v0, p1, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x2

    .line 235
    aget v2, p0, v1

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    .line 236
    aput v0, p1, v1

    shl-int/lit8 v0, v2, 0x1f

    const/4 v1, 0x3

    .line 238
    aget p0, p0, v1

    ushr-int/lit8 v2, p0, 0x1

    or-int/2addr v0, v2

    .line 239
    aput v0, p1, v1

    shl-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static shiftRightN([II[I)I
    .locals 5

    const/4 v0, 0x0

    .line 299
    aget v1, p0, v0

    rsub-int/lit8 v2, p1, 0x20

    ushr-int v3, v1, p1

    .line 300
    aput v3, p2, v0

    shl-int v0, v1, v2

    const/4 v1, 0x1

    .line 302
    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    .line 303
    aput v0, p2, v1

    shl-int v0, v3, v2

    const/4 v1, 0x2

    .line 305
    aget v3, p0, v1

    ushr-int v4, v3, p1

    or-int/2addr v0, v4

    .line 306
    aput v0, p2, v1

    shl-int v0, v3, v2

    const/4 v1, 0x3

    .line 308
    aget p0, p0, v1

    ushr-int p1, p0, p1

    or-int/2addr p1, v0

    .line 309
    aput p1, p2, v1

    shl-int/2addr p0, v2

    return p0
.end method

.method public static xor([B[B)V
    .locals 3

    const/4 v0, 0x0

    .line 318
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 319
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 320
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 321
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static xor([B[BII)V
    .locals 2

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 330
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xor([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    .line 357
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 358
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x2

    .line 359
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x3

    .line 360
    aget p0, p0, v0

    aget p1, p1, v0

    xor-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method
