.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519;
.super Ljava/lang/Object;
.source "X25519.java"


# static fields
.field private static final PsubS_x:[I

.field private static precompBase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519;->PsubS_x:[I

    return-void

    :array_0
    .array-data 4
        0x3d48290
        0x2c7804d
        0x1207816
        0x28f5a68
        0x881ed4
        0xa2b71d
        0x217d1b7
        0x14cb523
        0x88ec1a
        0x42a264
    .end array-data
.end method

.method private static decode32([BI)I
    .locals 2

    .line 19
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 20
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 21
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 22
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static decodeScalar([BI[I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    .line 30
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    aget p0, p2, v0

    and-int/lit8 p0, p0, -0x8

    aput p0, p2, v0

    const/4 p0, 0x7

    .line 34
    aget p1, p2, p0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    aput p1, p2, p0

    .line 35
    aget p1, p2, p0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method private static pointDouble([I[I)V
    .locals 2

    .line 40
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 41
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 43
    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 44
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 45
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 46
    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 47
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sub([I[I[I)V

    const p0, 0x1db42

    .line 48
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([II[I)V

    .line 49
    invoke-static {p1, v1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 50
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method public static declared-synchronized precompute()V
    .locals 11

    const-class v0, Lorg/bouncycastle/math/ec/rfc7748/X25519;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompBase:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0x9d8

    .line 60
    :try_start_1
    new-array v1, v1, [I

    sput-object v1, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompBase:[I

    .line 62
    sget-object v1, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompBase:[I

    const/16 v2, 0x9ce

    .line 63
    new-array v3, v2, [I

    .line 65
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 66
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 68
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v7

    .line 69
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v8

    .line 71
    invoke-static {v4, v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 73
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v9

    invoke-static {v8, v6, v9, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    const/4 v10, 0x0

    .line 78
    :goto_0
    invoke-static {v7, v6, v1, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    if-ne v10, v2, :cond_2

    .line 96
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    .line 97
    invoke-static {v9, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->inv([I[I)V

    .line 101
    :goto_1
    invoke-static {v1, v10, v4, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 103
    invoke-static {v4, v2, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 105
    sget-object v7, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompBase:[I

    invoke-static {v4, v6, v7, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    .line 116
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v10, v10, -0xa

    .line 113
    :try_start_2
    invoke-static {v3, v10, v5, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 114
    invoke-static {v2, v5, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v4, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->pointDouble([I[I)V

    .line 87
    invoke-static {v4, v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 88
    invoke-static {v7, v9, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 89
    invoke-static {v9, v8, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 91
    invoke-static {v8, v6, v3, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0xa

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0

    throw v1
.end method

.method public static scalarMult([BI[BI[BI)V
    .locals 10

    const/16 v0, 0x8

    .line 127
    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decodeScalar([BI[I)V

    .line 129
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p0

    invoke-static {p2, p3, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([BI[I)V

    .line 130
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 131
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p3

    const/4 v1, 0x1

    aput v1, p3, p2

    .line 132
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    aput v1, v2, p2

    .line 133
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    .line 135
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .line 136
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    const/16 v6, 0xfe

    const/4 v7, 0x1

    .line 143
    :goto_0
    invoke-static {v2, v3, v4, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 144
    invoke-static {p1, p3, v3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 145
    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 146
    invoke-static {v2, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 147
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 148
    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 150
    invoke-static {v3, p1, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sub([I[I[I)V

    const v8, 0x1db42

    .line 151
    invoke-static {v5, v8, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([II[I)V

    .line 152
    invoke-static {p3, p1, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 153
    invoke-static {p3, v5, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 154
    invoke-static {p1, v3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 156
    invoke-static {v4, v2, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 157
    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 158
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 159
    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    add-int/lit8 v6, v6, -0x1

    ushr-int/lit8 v8, v6, 0x5

    and-int/lit8 v9, v6, 0x1f

    .line 164
    aget v8, v0, v8

    ushr-int/2addr v8, v9

    and-int/2addr v8, v1

    xor-int/2addr v7, v8

    .line 166
    invoke-static {v7, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cswap(I[I[I)V

    .line 167
    invoke-static {v7, p3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cswap(I[I[I)V

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    :goto_1
    if-ge p2, v7, :cond_0

    .line 176
    invoke-static {p1, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->pointDouble([I[I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 179
    :cond_0
    invoke-static {p3, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->inv([I[I)V

    .line 180
    invoke-static {p1, p3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 182
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 183
    invoke-static {p1, p4, p5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[BI)V

    return-void

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method public static scalarMult([BI[BI)[B
    .locals 7

    const/16 v0, 0x20

    .line 120
    new-array v0, v0, [B

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    .line 121
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMult([BI[BI[BI)V

    return-object v0
.end method

.method public static scalarMultBase([BI[BI)V
    .locals 12

    .line 188
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompute()V

    const/16 v0, 0x8

    .line 190
    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decodeScalar([BI[I)V

    .line 192
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p0

    .line 194
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 195
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    aput v1, v3, v2

    .line 196
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/math/ec/rfc7748/X25519;->PsubS_x:[I

    invoke-static {v5, v2, v4, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 197
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    aput v1, v5, v2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 210
    :goto_0
    sget-object v10, Lorg/bouncycastle/math/ec/rfc7748/X25519;->precompBase:[I

    invoke-static {v10, v7, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    add-int/lit8 v7, v7, 0xa

    ushr-int/lit8 v10, v8, 0x5

    and-int/lit8 v11, v8, 0x1f

    .line 214
    aget v10, v0, v10

    ushr-int/2addr v10, v11

    and-int/2addr v10, v1

    xor-int/2addr v9, v10

    .line 216
    invoke-static {v9, p1, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cswap(I[I[I)V

    .line 217
    invoke-static {v9, v3, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cswap(I[I[I)V

    .line 220
    invoke-static {p1, v3, p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 221
    invoke-static {p0, v3, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 222
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->carry([I)V

    .line 223
    invoke-static {p1, p0, p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 224
    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 225
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 226
    invoke-static {v5, p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 227
    invoke-static {v4, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    add-int/2addr v8, v1

    const/16 v9, 0xff

    if-lt v8, v9, :cond_1

    :goto_1
    if-ge v2, v6, :cond_0

    .line 235
    invoke-static {p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->pointDouble([I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->inv([I[I)V

    .line 239
    invoke-static {p1, v3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 241
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 242
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[BI)V

    return-void

    :cond_1
    move v9, v10

    goto :goto_0
.end method
