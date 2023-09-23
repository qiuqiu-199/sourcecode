.class public abstract Lorg/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


# direct methods
.method public static add([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    add-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 15
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 17
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 18
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x2

    .line 20
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 21
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x3

    .line 23
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 24
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x4

    .line 26
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 27
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x5

    .line 29
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 30
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x6

    .line 32
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 33
    aput v1, p2, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x7

    .line 35
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 36
    aput p0, p2, v5

    ushr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 74
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    add-long v1, v5, v7

    aget v5, p2, v0

    int-to-long v5, v5

    and-long v7, v5, v3

    add-long v5, v1, v7

    const-wide/16 v1, 0x0

    add-long v7, v5, v1

    long-to-int v1, v7

    .line 75
    aput v1, p2, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 77
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 78
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    .line 80
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 81
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    .line 83
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 84
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    .line 86
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 87
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    .line 89
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 90
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    .line 92
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    aget v8, p2, v5

    int-to-long v8, v8

    and-long v10, v8, v3

    add-long v8, v6, v10

    add-long v6, v1, v8

    long-to-int v1, v6

    .line 93
    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    .line 95
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    add-long p0, v8, v6

    aget v6, p2, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    add-long v3, p0, v8

    add-long p0, v1, v3

    long-to-int v1, p0

    .line 96
    aput v1, p2, v5

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([II[III)I
    .locals 14

    move/from16 v2, p4

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    add-int/lit8 v2, p1, 0x0

    .line 164
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v8, v2, v4

    add-int/lit8 v2, p3, 0x0

    aget v3, p2, v2

    int-to-long v10, v3

    and-long v12, v10, v4

    add-long v10, v8, v12

    add-long v8, v6, v10

    long-to-int v3, v8

    .line 165
    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long v6, v8, v2

    add-int/lit8 v3, p1, 0x1

    .line 167
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x1

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 168
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x2

    .line 170
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x2

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 171
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x3

    .line 173
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x3

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 174
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x4

    .line 176
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x4

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 177
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x5

    .line 179
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x5

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 180
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v3, p1, 0x6

    .line 182
    aget v3, p0, v3

    int-to-long v8, v3

    and-long v10, v8, v4

    add-int/lit8 v3, p3, 0x6

    aget v8, p2, v3

    int-to-long v8, v8

    and-long v12, v8, v4

    add-long v8, v10, v12

    add-long v10, v6, v8

    long-to-int v6, v10

    .line 183
    aput v6, p2, v3

    ushr-long v6, v10, v2

    add-int/lit8 v1, p1, 0x7

    .line 185
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v8, v0, v4

    add-int/lit8 v0, p3, 0x7

    aget v1, p2, v0

    int-to-long v10, v1

    and-long v12, v10, v4

    add-long v3, v8, v12

    add-long v8, v6, v3

    long-to-int v1, v8

    .line 186
    aput v1, p2, v0

    ushr-long v0, v8, v2

    long-to-int v0, v0

    return v0
.end method

.method public static addTo([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 134
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    add-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 135
    aput v1, p1, v0

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    const/4 v5, 0x1

    .line 137
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 138
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x2

    .line 140
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 141
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x3

    .line 143
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 144
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x4

    .line 146
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 147
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x5

    .line 149
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 150
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x6

    .line 152
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    add-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 153
    aput v1, p1, v5

    ushr-long v1, v8, v0

    const/4 v5, 0x7

    .line 155
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    add-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 156
    aput p0, p1, v5

    ushr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addToEachOther([II[II)I
    .locals 17

    add-int/lit8 v3, p1, 0x0

    .line 194
    aget v4, p0, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    add-int/lit8 v4, p3, 0x0

    aget v5, p2, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    add-long v10, v8, v12

    const-wide/16 v8, 0x0

    add-long v12, v10, v8

    long-to-int v5, v12

    .line 195
    aput v5, p0, v3

    .line 196
    aput v5, p2, v4

    const/16 v3, 0x20

    ushr-long v4, v12, v3

    add-int/lit8 v8, p1, 0x1

    .line 198
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x1

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 199
    aput v4, p0, v8

    .line 200
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x2

    .line 202
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x2

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 203
    aput v4, p0, v8

    .line 204
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x3

    .line 206
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x3

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 207
    aput v4, p0, v8

    .line 208
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x4

    .line 210
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x4

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 211
    aput v4, p0, v8

    .line 212
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x5

    .line 214
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x5

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 215
    aput v4, p0, v8

    .line 216
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v8, p1, 0x6

    .line 218
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v11, v9, v6

    add-int/lit8 v9, p3, 0x6

    aget v10, p2, v9

    int-to-long v13, v10

    and-long v15, v13, v6

    add-long v13, v11, v15

    add-long v10, v4, v13

    long-to-int v4, v10

    .line 219
    aput v4, p0, v8

    .line 220
    aput v4, p2, v9

    ushr-long v4, v10, v3

    add-int/lit8 v1, p1, 0x7

    .line 222
    aget v8, p0, v1

    int-to-long v8, v8

    and-long v10, v8, v6

    add-int/lit8 v2, p3, 0x7

    aget v8, p2, v2

    int-to-long v8, v8

    and-long v12, v8, v6

    add-long v6, v10, v12

    add-long v8, v4, v6

    long-to-int v4, v8

    .line 223
    aput v4, p0, v1

    .line 224
    aput v4, p2, v2

    ushr-long v0, v8, v3

    long-to-int v0, v0

    return v0
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0x8

    .line 251
    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x4

    .line 256
    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0x10

    .line 261
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/16 v0, 0x8

    .line 266
    new-array v0, v0, [J

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 271
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    .line 278
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 287
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static eq64([J[J)Z
    .locals 6

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    .line 299
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 309
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 318
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 319
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 311
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 5

    .line 326
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    .line 333
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 335
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    const/16 v1, 0x40

    .line 336
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0

    .line 328
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 345
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    .line 353
    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 374
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 375
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 360
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 361
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 386
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 392
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isOne64([J)Z
    .locals 8

    const/4 v0, 0x0

    .line 402
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 408
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 420
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isZero64([J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 432
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 48

    add-int/lit8 v5, p3, 0x0

    .line 513
    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    add-int/lit8 v5, p3, 0x1

    .line 514
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v11, v5, v7

    add-int/lit8 v5, p3, 0x2

    .line 515
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v13, v5, v7

    add-int/lit8 v5, p3, 0x3

    .line 516
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v15, v5, v7

    add-int/lit8 v5, p3, 0x4

    .line 517
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v17, v5, v7

    add-int/lit8 v5, p3, 0x5

    .line 518
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v19, v5, v7

    add-int/lit8 v5, p3, 0x6

    .line 519
    aget v5, p2, v5

    int-to-long v5, v5

    and-long v21, v5, v7

    add-int/lit8 v3, p3, 0x7

    .line 520
    aget v2, p2, v3

    int-to-long v2, v2

    and-long v5, v2, v7

    add-int/lit8 v2, p1, 0x0

    .line 523
    aget v2, p0, v2

    int-to-long v2, v2

    and-long v23, v2, v7

    mul-long v2, v23, v9

    const-wide/16 v25, 0x0

    add-long v7, v2, v25

    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v7

    .line 525
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v29, v23, v11

    add-long v2, v7, v29

    add-int/lit8 v7, p5, 0x1

    long-to-int v8, v2

    .line 528
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    mul-long v29, v23, v13

    add-long v7, v2, v29

    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v7

    .line 531
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v29, v23, v15

    add-long v2, v7, v29

    add-int/lit8 v7, p5, 0x3

    long-to-int v8, v2

    .line 534
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    mul-long v29, v23, v17

    add-long v7, v2, v29

    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v7

    .line 537
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v29, v23, v19

    add-long v2, v7, v29

    add-int/lit8 v7, p5, 0x5

    long-to-int v8, v2

    .line 540
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    mul-long v29, v23, v21

    add-long v7, v2, v29

    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v7

    .line 543
    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v7, v2

    mul-long v23, v23, v5

    add-long v2, v7, v23

    add-int/lit8 v7, p5, 0x7

    long-to-int v8, v2

    .line 546
    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    add-int/lit8 v7, p5, 0x8

    long-to-int v2, v2

    .line 548
    aput v2, p4, v7

    const/4 v2, 0x1

    move/from16 v4, p5

    const/4 v3, 0x1

    :goto_0
    const/16 v7, 0x8

    if-ge v3, v7, :cond_0

    add-int/2addr v4, v2

    add-int v7, p1, v3

    .line 554
    aget v7, p0, v7

    int-to-long v7, v7

    const-wide v23, 0xffffffffL

    and-long v27, v7, v23

    mul-long v7, v27, v9

    add-int/lit8 v29, v4, 0x0

    .line 555
    aget v2, p4, v29

    int-to-long v0, v2

    and-long v32, v0, v23

    add-long v0, v7, v32

    add-long v7, v0, v25

    long-to-int v0, v7

    .line 556
    aput v0, p4, v29

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v11

    add-int/lit8 v29, v4, 0x1

    .line 558
    aget v0, p4, v29

    move-wide/from16 v34, v9

    int-to-long v9, v0

    and-long v30, v9, v23

    add-long v9, v7, v30

    add-long v7, v1, v9

    long-to-int v0, v7

    .line 559
    aput v0, p4, v29

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v13

    add-int/lit8 v9, v4, 0x2

    .line 561
    aget v10, p4, v9

    move-wide/from16 v36, v1

    int-to-long v0, v10

    and-long v29, v0, v23

    add-long v0, v7, v29

    add-long v7, v36, v0

    long-to-int v0, v7

    .line 562
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v15

    add-int/lit8 v9, v4, 0x3

    .line 564
    aget v10, p4, v9

    move-wide/from16 v38, v1

    int-to-long v0, v10

    and-long v29, v0, v23

    add-long v0, v7, v29

    add-long v7, v38, v0

    long-to-int v0, v7

    .line 565
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v17

    add-int/lit8 v9, v4, 0x4

    .line 567
    aget v10, p4, v9

    move-wide/from16 v40, v1

    int-to-long v0, v10

    and-long v29, v0, v23

    add-long v0, v7, v29

    add-long v7, v40, v0

    long-to-int v0, v7

    .line 568
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v19

    add-int/lit8 v9, v4, 0x5

    .line 570
    aget v10, p4, v9

    move-wide/from16 v42, v1

    int-to-long v0, v10

    and-long v29, v0, v23

    add-long v0, v7, v29

    add-long v7, v42, v0

    long-to-int v0, v7

    .line 571
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v7, v27, v21

    add-int/lit8 v9, v4, 0x6

    .line 573
    aget v10, p4, v9

    move-wide/from16 v44, v1

    int-to-long v0, v10

    and-long v29, v0, v23

    add-long v0, v7, v29

    add-long v7, v44, v0

    long-to-int v0, v7

    .line 574
    aput v0, p4, v9

    const/16 v0, 0x20

    ushr-long v1, v7, v0

    mul-long v27, v27, v5

    add-int/lit8 v7, v4, 0x7

    .line 576
    aget v8, p4, v7

    int-to-long v8, v8

    and-long v29, v8, v23

    add-long v8, v27, v29

    move-wide/from16 v46, v5

    add-long v5, v1, v8

    long-to-int v1, v5

    .line 577
    aput v1, p4, v7

    ushr-long v1, v5, v0

    add-int/lit8 v5, v4, 0x8

    long-to-int v1, v1

    .line 579
    aput v1, p4, v5

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v34

    move-wide/from16 v5, v46

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 38

    const/4 v3, 0x0

    .line 442
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    const/4 v4, 0x1

    .line 443
    aget v5, p1, v4

    int-to-long v10, v5

    and-long v12, v10, v6

    const/4 v5, 0x2

    .line 444
    aget v10, p1, v5

    int-to-long v10, v10

    and-long v14, v10, v6

    const/4 v10, 0x3

    .line 445
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v16, v10, v6

    const/4 v10, 0x4

    .line 446
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v18, v10, v6

    const/4 v10, 0x5

    .line 447
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v20, v10, v6

    const/4 v10, 0x6

    .line 448
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v22, v10, v6

    const/4 v10, 0x7

    .line 449
    aget v1, p1, v10

    int-to-long v10, v1

    and-long v24, v10, v6

    .line 452
    aget v1, p0, v3

    int-to-long v10, v1

    and-long v26, v10, v6

    mul-long v10, v26, v8

    const-wide/16 v28, 0x0

    add-long v6, v10, v28

    long-to-int v1, v6

    .line 454
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    mul-long v10, v26, v12

    move-wide/from16 v32, v12

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 457
    aput v3, p2, v4

    ushr-long v6, v12, v1

    mul-long v10, v26, v14

    add-long v12, v6, v10

    long-to-int v3, v12

    .line 460
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v26, v16

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x3

    .line 463
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v26, v18

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x4

    .line 466
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v26, v20

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x5

    .line 469
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v10, v26, v22

    add-long v12, v5, v10

    long-to-int v3, v12

    const/4 v5, 0x6

    .line 472
    aput v3, p2, v5

    ushr-long v5, v12, v1

    mul-long v26, v26, v24

    add-long v10, v5, v26

    long-to-int v3, v10

    const/4 v5, 0x7

    .line 475
    aput v3, p2, v5

    ushr-long v5, v10, v1

    long-to-int v3, v5

    const/16 v5, 0x8

    .line 477
    aput v3, p2, v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 482
    aget v3, p0, v4

    int-to-long v6, v3

    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    mul-long v6, v12, v8

    add-int/lit8 v3, v4, 0x0

    .line 483
    aget v5, p2, v3

    int-to-long v1, v5

    and-long v26, v1, v10

    add-long v1, v6, v26

    add-long v5, v1, v28

    long-to-int v1, v5

    .line 484
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    mul-long v26, v12, v32

    add-int/lit8 v3, v4, 0x1

    .line 486
    aget v7, p2, v3

    int-to-long v1, v7

    and-long v30, v1, v10

    add-long v1, v26, v30

    add-long v10, v5, v1

    long-to-int v1, v10

    .line 487
    aput v1, p2, v3

    const/16 v1, 0x20

    ushr-long v5, v10, v1

    mul-long v10, v12, v14

    add-int/lit8 v7, v4, 0x2

    .line 489
    aget v1, p2, v7

    int-to-long v0, v1

    const-wide v26, 0xffffffffL

    and-long v30, v0, v26

    add-long v0, v10, v30

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 490
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v16

    add-int/lit8 v1, v4, 0x3

    .line 492
    aget v7, p2, v1

    move/from16 v34, v1

    int-to-long v0, v7

    and-long v30, v0, v26

    add-long v0, v10, v30

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 493
    aput v0, p2, v34

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v18

    add-int/lit8 v1, v4, 0x4

    .line 495
    aget v7, p2, v1

    move/from16 v35, v1

    int-to-long v0, v7

    and-long v30, v0, v26

    add-long v0, v10, v30

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 496
    aput v0, p2, v35

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v20

    add-int/lit8 v1, v4, 0x5

    .line 498
    aget v7, p2, v1

    move/from16 v36, v1

    int-to-long v0, v7

    and-long v30, v0, v26

    add-long v0, v10, v30

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 499
    aput v0, p2, v36

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v10, v12, v22

    add-int/lit8 v1, v4, 0x6

    .line 501
    aget v7, p2, v1

    move/from16 v37, v1

    int-to-long v0, v7

    and-long v30, v0, v26

    add-long v0, v10, v30

    add-long v10, v5, v0

    long-to-int v0, v10

    .line 502
    aput v0, p2, v37

    const/16 v0, 0x20

    ushr-long v5, v10, v0

    mul-long v12, v12, v24

    add-int/lit8 v1, v4, 0x7

    .line 504
    aget v7, p2, v1

    int-to-long v10, v7

    and-long v30, v10, v26

    add-long v10, v12, v30

    add-long v12, v5, v10

    long-to-int v5, v12

    .line 505
    aput v5, p2, v1

    ushr-long v5, v12, v0

    add-int/lit8 v4, v4, 0x8

    long-to-int v1, v5

    .line 507
    aput v1, p2, v4

    move v4, v3

    const/16 v1, 0x20

    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 22

    move/from16 v4, p0

    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    add-int/lit8 v4, p2, 0x0

    .line 681
    aget v4, p1, v4

    int-to-long v5, v4

    and-long v11, v5, v7

    mul-long v5, v9, v11

    add-int/lit8 v4, p4, 0x0

    .line 682
    aget v4, p3, v4

    int-to-long v2, v4

    and-long v15, v2, v7

    add-long v2, v5, v15

    const-wide/16 v5, 0x0

    add-long v7, v2, v5

    add-int/lit8 v2, p6, 0x0

    long-to-int v3, v7

    .line 683
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v7, v2

    add-int/lit8 v3, p2, 0x1

    .line 685
    aget v3, p1, v3

    int-to-long v7, v3

    const-wide v15, 0xffffffffL

    and-long v17, v7, v15

    mul-long v7, v9, v17

    add-long v19, v7, v11

    add-int/lit8 v4, p4, 0x1

    .line 686
    aget v4, p3, v4

    int-to-long v11, v4

    and-long v13, v11, v15

    add-long v11, v19, v13

    add-long v2, v5, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v2

    .line 687
    aput v5, p5, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    .line 689
    aget v4, p1, v4

    int-to-long v5, v4

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    mul-long v5, v9, v13

    add-long v15, v5, v17

    add-int/lit8 v5, p4, 0x2

    .line 690
    aget v5, p3, v5

    int-to-long v5, v5

    and-long v17, v5, v11

    add-long v5, v15, v17

    add-long v11, v2, v5

    add-int/lit8 v2, p6, 0x2

    long-to-int v3, v11

    .line 691
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x3

    .line 693
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x3

    .line 694
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x3

    long-to-int v3, v11

    .line 695
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x4

    .line 697
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v13, v2, v11

    mul-long v2, v9, v13

    add-long v17, v2, v15

    add-int/lit8 v2, p4, 0x4

    .line 698
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v15, v2, v11

    add-long v2, v17, v15

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x4

    long-to-int v3, v11

    .line 699
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x5

    .line 701
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v15, v2, v11

    mul-long v2, v9, v15

    add-long v17, v2, v13

    add-int/lit8 v2, p4, 0x5

    .line 702
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v13, v2, v11

    add-long v2, v17, v13

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v11

    .line 703
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v2, p2, 0x6

    .line 705
    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long v13, v2, v11

    mul-long v2, v9, v13

    add-long v17, v2, v15

    add-int/lit8 v2, p4, 0x6

    .line 706
    aget v2, p3, v2

    int-to-long v2, v2

    and-long v15, v2, v11

    add-long v2, v17, v15

    add-long v11, v5, v2

    add-int/lit8 v2, p6, 0x6

    long-to-int v3, v11

    .line 707
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v5, v11, v2

    add-int/lit8 v1, p2, 0x7

    .line 709
    aget v0, p1, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v11, v0, v2

    mul-long v9, v9, v11

    add-long v0, v9, v13

    add-int/lit8 v4, p4, 0x7

    .line 710
    aget v4, p3, v4

    int-to-long v7, v4

    and-long v9, v7, v2

    add-long v2, v0, v9

    add-long v0, v5, v2

    add-int/lit8 v2, p6, 0x7

    long-to-int v3, v0

    .line 711
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-long v2, v0, v11

    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 19

    move-object/from16 v2, p3

    move/from16 v3, p0

    move/from16 v4, p4

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long v9, v5, v7

    and-long v5, p1, v7

    mul-long v11, v9, v5

    add-int/lit8 v3, v4, 0x0

    .line 814
    aget v13, v2, v3

    int-to-long v13, v13

    and-long v15, v13, v7

    add-long v13, v11, v15

    const-wide/16 v11, 0x0

    add-long v7, v13, v11

    long-to-int v13, v7

    .line 815
    aput v13, v2, v3

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    ushr-long v0, p1, v3

    mul-long v9, v9, v0

    add-long v13, v9, v5

    add-int/lit8 v5, v4, 0x1

    .line 818
    aget v6, v2, v5

    int-to-long v9, v6

    const-wide v15, 0xffffffffL

    and-long v17, v9, v15

    add-long v9, v13, v17

    add-long v13, v7, v9

    long-to-int v6, v13

    .line 819
    aput v6, v2, v5

    ushr-long v5, v13, v3

    add-int/lit8 v7, v4, 0x2

    .line 821
    aget v8, v2, v7

    int-to-long v8, v8

    and-long v13, v8, v15

    add-long v8, v0, v13

    add-long v0, v5, v8

    long-to-int v5, v0

    .line 822
    aput v5, v2, v7

    ushr-long/2addr v0, v3

    add-int/lit8 v5, v4, 0x3

    .line 824
    aget v6, v2, v5

    int-to-long v6, v6

    and-long v8, v6, v15

    add-long v6, v0, v8

    long-to-int v0, v6

    .line 825
    aput v0, v2, v5

    ushr-long v0, v6, v3

    cmp-long v3, v0, v11

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x4

    .line 827
    invoke-static {v0, v2, v4, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    int-to-long p0, p1

    and-long v0, p0, v2

    mul-long v4, v4, v0

    add-int/lit8 p0, p3, 0x0

    .line 836
    aget p1, p2, p0

    int-to-long v6, p1

    and-long v8, v6, v2

    add-long v6, v4, v8

    const-wide/16 v4, 0x0

    add-long v8, v6, v4

    long-to-int p1, v8

    .line 837
    aput p1, p2, p0

    const/16 p0, 0x20

    ushr-long v6, v8, p0

    add-int/lit8 p1, p3, 0x1

    .line 839
    aget v8, p2, p1

    int-to-long v8, v8

    and-long v10, v8, v2

    add-long v8, v0, v10

    add-long v0, v6, v8

    long-to-int v6, v0

    .line 840
    aput v6, p2, p1

    ushr-long/2addr v0, p0

    add-int/lit8 p1, p3, 0x2

    .line 842
    aget v6, p2, p1

    int-to-long v6, v6

    and-long v8, v6, v2

    add-long v2, v0, v8

    long-to-int v0, v2

    .line 843
    aput v0, p2, p1

    ushr-long p0, v2, p0

    cmp-long v0, p0, v4

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    const/4 p1, 0x3

    .line 845
    invoke-static {p0, p2, p3, p1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 37

    const/4 v2, 0x0

    .line 585
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v3, 0x1

    .line 586
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    const/4 v3, 0x2

    .line 587
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v11, v3, v5

    const/4 v3, 0x3

    .line 588
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v13, v3, v5

    const/4 v3, 0x4

    .line 589
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v15, v3, v5

    const/4 v3, 0x5

    .line 590
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v17, v3, v5

    const/4 v3, 0x6

    .line 591
    aget v3, p1, v3

    int-to-long v3, v3

    and-long v19, v3, v5

    const/4 v3, 0x7

    .line 592
    aget v0, p1, v3

    int-to-long v3, v0

    and-long v21, v3, v5

    const-wide/16 v23, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v2, v0, :cond_0

    .line 597
    aget v3, p0, v2

    int-to-long v3, v3

    and-long v26, v3, v5

    mul-long v3, v26, v7

    add-int/lit8 v28, v2, 0x0

    .line 598
    aget v0, p2, v28

    move-wide/from16 v29, v7

    int-to-long v7, v0

    and-long v31, v7, v5

    add-long v7, v3, v31

    const-wide/16 v3, 0x0

    add-long v5, v7, v3

    long-to-int v0, v5

    .line 599
    aput v0, p2, v28

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v7, v26, v9

    add-int/lit8 v25, v2, 0x1

    .line 601
    aget v3, p2, v25

    int-to-long v3, v3

    const-wide v31, 0xffffffffL

    and-long v33, v3, v31

    add-long v3, v7, v33

    add-long v7, v5, v3

    long-to-int v3, v7

    .line 602
    aput v3, p2, v25

    ushr-long v3, v7, v0

    mul-long v5, v26, v11

    add-int/lit8 v7, v2, 0x2

    .line 604
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v33, v0, v31

    add-long v0, v5, v33

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 605
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v26, v13

    add-int/lit8 v7, v2, 0x3

    .line 607
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v33, v0, v31

    add-long v0, v5, v33

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 608
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v26, v15

    add-int/lit8 v7, v2, 0x4

    .line 610
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v33, v0, v31

    add-long v0, v5, v33

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 611
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v26, v17

    add-int/lit8 v7, v2, 0x5

    .line 613
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v33, v0, v31

    add-long v0, v5, v33

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 614
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v5, v26, v19

    add-int/lit8 v7, v2, 0x6

    .line 616
    aget v8, p2, v7

    int-to-long v0, v8

    and-long v33, v0, v31

    add-long v0, v5, v33

    add-long v5, v3, v0

    long-to-int v0, v5

    .line 617
    aput v0, p2, v7

    const/16 v0, 0x20

    ushr-long v3, v5, v0

    mul-long v26, v26, v21

    add-int/lit8 v5, v2, 0x7

    .line 619
    aget v6, p2, v5

    int-to-long v6, v6

    and-long v33, v6, v31

    add-long v6, v26, v33

    move-wide/from16 v35, v9

    add-long v8, v3, v6

    long-to-int v3, v8

    .line 620
    aput v3, p2, v5

    ushr-long v3, v8, v0

    add-int/lit8 v2, v2, 0x8

    .line 622
    aget v5, p2, v2

    int-to-long v5, v5

    and-long v7, v5, v31

    move-wide/from16 v5, v23

    add-long v23, v5, v7

    add-long v5, v3, v23

    long-to-int v3, v5

    .line 623
    aput v3, p2, v2

    ushr-long v23, v5, v0

    move/from16 v2, v25

    move-wide/from16 v7, v29

    move-wide/from16 v5, v31

    move-wide/from16 v9, v35

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v5, v23

    long-to-int v0, v5

    return v0
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 13

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    const/4 p0, 0x0

    .line 750
    aget v0, p2, p0

    int-to-long v0, v0

    and-long v6, v0, v2

    mul-long v6, v6, v4

    aget v0, p1, p0

    int-to-long v0, v0

    and-long v8, v0, v2

    add-long v0, v6, v8

    const-wide/16 v6, 0x0

    add-long v8, v0, v6

    long-to-int v0, v8

    .line 751
    aput v0, p2, p0

    const/16 p0, 0x20

    ushr-long v0, v8, p0

    const/4 v6, 0x1

    .line 753
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 754
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x2

    .line 756
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 757
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x3

    .line 759
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 760
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x4

    .line 762
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 763
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x5

    .line 765
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 766
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x6

    .line 768
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v9, v9, v4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long v11, v7, v2

    add-long v7, v9, v11

    add-long v9, v0, v7

    long-to-int v0, v9

    .line 769
    aput v0, p2, v6

    ushr-long v0, v9, p0

    const/4 v6, 0x7

    .line 771
    aget v7, p2, v6

    int-to-long v7, v7

    and-long v9, v7, v2

    mul-long v4, v4, v9

    aget p1, p1, v6

    int-to-long v7, p1

    and-long v9, v7, v2

    add-long v2, v4, v9

    add-long v4, v0, v2

    long-to-int p1, v4

    .line 772
    aput p1, p2, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static square([II[II)V
    .locals 55

    add-int/lit8 v3, p1, 0x0

    .line 1044
    aget v3, p0, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long v7, v3, v5

    const/4 v4, 0x0

    const/16 v9, 0x10

    const/4 v4, 0x7

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v4, -0x1

    add-int v4, p1, v4

    .line 1052
    aget v4, p0, v4

    int-to-long v12, v4

    and-long v14, v12, v5

    mul-long v12, v14, v14

    add-int/lit8 v9, v9, -0x1

    add-int v4, p3, v9

    shl-int/lit8 v10, v10, 0x1f

    const/16 v14, 0x21

    ushr-long v5, v12, v14

    long-to-int v5, v5

    or-int/2addr v5, v10

    .line 1054
    aput v5, p2, v4

    add-int/lit8 v9, v9, -0x1

    add-int v4, p3, v9

    const/4 v5, 0x1

    move/from16 v18, v9

    ushr-long v9, v12, v5

    long-to-int v6, v9

    .line 1055
    aput v6, p2, v4

    long-to-int v10, v12

    if-gtz v11, :cond_0

    mul-long v11, v7, v7

    shl-int/lit8 v4, v10, 0x1f

    int-to-long v9, v4

    const-wide v15, 0xffffffffL

    and-long v18, v9, v15

    ushr-long v9, v11, v14

    or-long v13, v18, v9

    add-int/lit8 v4, p3, 0x0

    long-to-int v6, v11

    .line 1063
    aput v6, p2, v4

    const/16 v4, 0x20

    ushr-long v9, v11, v4

    long-to-int v6, v9

    and-int/2addr v6, v5

    add-int/lit8 v9, p1, 0x1

    .line 1068
    aget v9, p0, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long v18, v9, v11

    add-int/lit8 v9, p3, 0x2

    .line 1069
    aget v10, p2, v9

    int-to-long v3, v10

    and-long v20, v3, v11

    mul-long v3, v18, v7

    add-long v10, v13, v3

    long-to-int v3, v10

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v12, v3, 0x1

    or-int/2addr v6, v12

    .line 1074
    aput v6, p2, v4

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x20

    ushr-long/2addr v10, v4

    add-long v12, v20, v10

    add-int/lit8 v4, p1, 0x2

    .line 1079
    aget v4, p0, v4

    int-to-long v10, v4

    const-wide v14, 0xffffffffL

    and-long v20, v10, v14

    add-int/lit8 v4, p3, 0x3

    .line 1080
    aget v6, p2, v4

    int-to-long v10, v6

    and-long v22, v10, v14

    add-int/lit8 v6, p3, 0x4

    .line 1081
    aget v10, p2, v6

    int-to-long v10, v10

    and-long v24, v10, v14

    mul-long v10, v20, v7

    move/from16 v26, v6

    add-long v5, v12, v10

    long-to-int v10, v5

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v3, v11

    .line 1085
    aput v3, p2, v9

    ushr-int/lit8 v3, v10, 0x1f

    const/16 v9, 0x20

    ushr-long/2addr v5, v9

    mul-long v10, v20, v18

    add-long v12, v5, v10

    add-long v5, v22, v12

    ushr-long v10, v5, v9

    add-long v12, v24, v10

    const-wide v9, 0xffffffffL

    and-long v14, v5, v9

    add-int/lit8 v5, p1, 0x3

    .line 1092
    aget v5, p0, v5

    int-to-long v5, v5

    and-long v22, v5, v9

    add-int/lit8 v5, p3, 0x5

    .line 1093
    aget v6, p2, v5

    move/from16 v27, v5

    int-to-long v5, v6

    and-long v24, v5, v9

    add-int/lit8 v5, p3, 0x6

    .line 1094
    aget v6, p2, v5

    move/from16 v28, v5

    int-to-long v5, v6

    and-long v29, v5, v9

    mul-long v5, v22, v7

    add-long v9, v14, v5

    long-to-int v5, v9

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v3, v6

    .line 1098
    aput v3, p2, v4

    ushr-int/lit8 v3, v5, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v9, v4

    mul-long v9, v22, v18

    add-long v14, v5, v9

    add-long v5, v12, v14

    ushr-long v9, v5, v4

    mul-long v11, v22, v20

    add-long v13, v9, v11

    add-long v9, v24, v13

    const-wide v11, 0xffffffffL

    and-long v13, v5, v11

    ushr-long v5, v9, v4

    add-long v24, v29, v5

    and-long v4, v9, v11

    add-int/lit8 v6, p1, 0x4

    .line 1107
    aget v6, p0, v6

    int-to-long v9, v6

    and-long v29, v9, v11

    add-int/lit8 v6, p3, 0x7

    .line 1108
    aget v9, p2, v6

    int-to-long v9, v9

    and-long v31, v9, v11

    add-int/lit8 v9, p3, 0x8

    .line 1109
    aget v10, p2, v9

    move/from16 v33, v9

    int-to-long v9, v10

    and-long v34, v9, v11

    mul-long v9, v29, v7

    add-long v11, v13, v9

    long-to-int v9, v11

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v3, v10

    .line 1113
    aput v3, p2, v26

    ushr-int/lit8 v3, v9, 0x1f

    const/16 v9, 0x20

    ushr-long v10, v11, v9

    mul-long v12, v29, v18

    add-long v14, v10, v12

    add-long v10, v4, v14

    ushr-long v4, v10, v9

    mul-long v12, v29, v20

    add-long v14, v4, v12

    add-long v4, v24, v14

    const-wide v12, 0xffffffffL

    and-long v14, v10, v12

    ushr-long v10, v4, v9

    mul-long v16, v29, v22

    add-long v24, v10, v16

    add-long v10, v31, v24

    and-long v24, v4, v12

    ushr-long v4, v10, v9

    add-long v31, v34, v4

    and-long v4, v10, v12

    add-int/lit8 v9, p1, 0x5

    .line 1124
    aget v9, p0, v9

    int-to-long v9, v9

    and-long v34, v9, v12

    add-int/lit8 v9, p3, 0x9

    .line 1125
    aget v10, p2, v9

    int-to-long v10, v10

    and-long v36, v10, v12

    add-int/lit8 v10, p3, 0xa

    .line 1126
    aget v11, p2, v10

    move/from16 v38, v10

    int-to-long v10, v11

    and-long v39, v10, v12

    mul-long v10, v34, v7

    add-long v12, v14, v10

    long-to-int v10, v12

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v3, v11

    .line 1130
    aput v3, p2, v27

    ushr-int/lit8 v3, v10, 0x1f

    const/16 v10, 0x20

    ushr-long v11, v12, v10

    mul-long v13, v34, v18

    add-long v26, v11, v13

    add-long v11, v24, v26

    ushr-long v13, v11, v10

    mul-long v24, v34, v20

    add-long v26, v13, v24

    add-long v13, v4, v26

    const-wide v4, 0xffffffffL

    and-long v24, v11, v4

    ushr-long v11, v13, v10

    mul-long v15, v34, v22

    add-long v26, v11, v15

    add-long v11, v31, v26

    and-long v26, v13, v4

    ushr-long v13, v11, v10

    mul-long v15, v34, v29

    add-long v31, v13, v15

    add-long v13, v36, v31

    and-long v31, v11, v4

    ushr-long v11, v13, v10

    add-long v36, v39, v11

    and-long v10, v13, v4

    add-int/lit8 v12, p1, 0x6

    .line 1143
    aget v12, p0, v12

    int-to-long v12, v12

    and-long v14, v12, v4

    add-int/lit8 v12, p3, 0xb

    .line 1144
    aget v13, p2, v12

    move/from16 v41, v12

    int-to-long v12, v13

    and-long v39, v12, v4

    add-int/lit8 v12, p3, 0xc

    .line 1145
    aget v13, p2, v12

    move/from16 v42, v12

    int-to-long v12, v13

    and-long v43, v12, v4

    mul-long v4, v14, v7

    add-long v12, v24, v4

    long-to-int v4, v12

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    .line 1149
    aput v3, p2, v28

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0x20

    ushr-long/2addr v12, v4

    mul-long v24, v14, v18

    add-long v45, v12, v24

    add-long v12, v26, v45

    ushr-long v24, v12, v4

    mul-long v26, v14, v20

    add-long v45, v24, v26

    add-long v24, v31, v45

    const-wide v16, 0xffffffffL

    and-long v26, v12, v16

    ushr-long v12, v24, v4

    mul-long v31, v14, v22

    add-long v45, v12, v31

    add-long v12, v10, v45

    and-long v10, v24, v16

    ushr-long v24, v12, v4

    mul-long v31, v14, v29

    add-long v45, v24, v31

    add-long v24, v36, v45

    and-long v31, v12, v16

    ushr-long v12, v24, v4

    mul-long v36, v14, v34

    add-long v45, v12, v36

    add-long v12, v39, v45

    and-long v36, v24, v16

    ushr-long v24, v12, v4

    add-long v4, v43, v24

    and-long v24, v12, v16

    const/4 v12, 0x7

    add-int/lit8 v1, p1, 0x7

    .line 1164
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v12, v0, v16

    add-int/lit8 v0, p3, 0xd

    .line 1165
    aget v1, p2, v0

    move/from16 v47, v0

    int-to-long v0, v1

    and-long v39, v0, v16

    add-int/lit8 v0, p3, 0xe

    .line 1166
    aget v1, p2, v0

    move/from16 v48, v0

    int-to-long v0, v1

    and-long v43, v0, v16

    mul-long v7, v7, v12

    add-long v0, v26, v7

    long-to-int v7, v0

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v3, v8

    .line 1170
    aput v3, p2, v6

    ushr-int/lit8 v3, v7, 0x1f

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    mul-long v18, v18, v12

    add-long v7, v0, v18

    add-long v0, v10, v7

    ushr-long v7, v0, v6

    mul-long v20, v20, v12

    add-long v10, v7, v20

    add-long v7, v31, v10

    ushr-long v10, v7, v6

    mul-long v22, v22, v12

    add-long v16, v10, v22

    add-long v10, v36, v16

    ushr-long v16, v10, v6

    mul-long v29, v29, v12

    add-long v18, v16, v29

    move-wide/from16 v49, v10

    add-long v10, v24, v18

    ushr-long v16, v10, v6

    mul-long v34, v34, v12

    add-long v18, v16, v34

    move-wide/from16 v51, v10

    add-long v10, v4, v18

    ushr-long v4, v10, v6

    mul-long v12, v12, v14

    add-long v14, v4, v12

    add-long v4, v39, v14

    ushr-long v12, v4, v6

    move-wide/from16 v53, v4

    add-long v4, v43, v12

    long-to-int v0, v0

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v3

    .line 1182
    aput v1, p2, v33

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1185
    aput v0, p2, v9

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v6, v49

    long-to-int v1, v6

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1188
    aput v0, p2, v38

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v6, v51

    long-to-int v1, v6

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1191
    aput v0, p2, v41

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1194
    aput v0, p2, v42

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v6, v53

    long-to-int v1, v6

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1197
    aput v0, p2, v47

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v4

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 1200
    aput v0, p2, v48

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xf

    .line 1202
    aget v2, p2, v1

    const/16 v3, 0x20

    shr-long v3, v4, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1203
    aput v0, p2, v1

    return-void

    :cond_0
    const-wide v16, 0xffffffffL

    move v4, v11

    move-wide/from16 v5, v16

    move/from16 v9, v18

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 44

    const/4 v1, 0x0

    .line 880
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v6, v2, v4

    const/16 v3, 0x10

    const/4 v3, 0x7

    const/16 v8, 0x10

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v3, -0x1

    .line 888
    aget v3, p0, v3

    int-to-long v11, v3

    and-long v13, v11, v4

    mul-long v13, v13, v13

    add-int/lit8 v8, v8, -0x1

    shl-int/lit8 v3, v9, 0x1f

    const/16 v9, 0x21

    ushr-long v11, v13, v9

    long-to-int v11, v11

    or-int/2addr v3, v11

    .line 890
    aput v3, p1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    ushr-long v11, v13, v3

    long-to-int v11, v11

    .line 891
    aput v11, p1, v8

    long-to-int v11, v13

    if-gtz v10, :cond_0

    mul-long v12, v6, v6

    shl-int/lit8 v8, v11, 0x1f

    int-to-long v10, v8

    and-long v14, v10, v4

    ushr-long v8, v12, v9

    or-long v10, v14, v8

    long-to-int v8, v12

    .line 899
    aput v8, p1, v1

    const/16 v1, 0x20

    ushr-long v8, v12, v1

    long-to-int v8, v8

    and-int/2addr v8, v3

    .line 904
    aget v9, p0, v3

    int-to-long v12, v9

    and-long v14, v12, v4

    const/4 v9, 0x2

    .line 905
    aget v12, p1, v9

    int-to-long v12, v12

    and-long v16, v12, v4

    mul-long v12, v14, v6

    add-long v4, v10, v12

    long-to-int v10, v4

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v8, v11

    .line 910
    aput v8, p1, v3

    ushr-int/lit8 v8, v10, 0x1f

    ushr-long/2addr v4, v1

    add-long v10, v16, v4

    .line 915
    aget v4, p0, v9

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long v16, v4, v12

    const/4 v4, 0x3

    .line 916
    aget v5, p1, v4

    int-to-long v2, v5

    and-long v20, v2, v12

    const/4 v2, 0x4

    .line 917
    aget v3, p1, v2

    int-to-long v2, v3

    and-long v22, v2, v12

    mul-long v2, v16, v6

    add-long v12, v10, v2

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v8

    .line 921
    aput v3, p1, v9

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v8, v12, v1

    mul-long v10, v16, v14

    add-long v12, v8, v10

    add-long v8, v20, v12

    ushr-long v10, v8, v1

    add-long v12, v22, v10

    const-wide v10, 0xffffffffL

    and-long v20, v8, v10

    .line 928
    aget v3, p0, v4

    int-to-long v8, v3

    and-long v22, v8, v10

    const/4 v3, 0x5

    .line 929
    aget v5, p1, v3

    int-to-long v8, v5

    and-long v24, v8, v10

    const/4 v5, 0x6

    .line 930
    aget v8, p1, v5

    int-to-long v8, v8

    and-long v26, v8, v10

    mul-long v8, v22, v6

    add-long v10, v20, v8

    long-to-int v8, v10

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v2, v9

    .line 934
    aput v2, p1, v4

    ushr-int/lit8 v2, v8, 0x1f

    ushr-long v8, v10, v1

    mul-long v10, v22, v14

    add-long v20, v8, v10

    add-long v8, v12, v20

    ushr-long v10, v8, v1

    mul-long v12, v22, v16

    add-long v20, v10, v12

    add-long v10, v24, v20

    const-wide v12, 0xffffffffL

    and-long v20, v8, v12

    ushr-long v8, v10, v1

    add-long v24, v26, v8

    and-long v8, v10, v12

    const/4 v4, 0x4

    .line 943
    aget v10, p0, v4

    int-to-long v10, v10

    and-long v26, v10, v12

    const/4 v4, 0x7

    .line 944
    aget v10, p1, v4

    int-to-long v10, v10

    and-long v28, v10, v12

    const/16 v4, 0x8

    .line 945
    aget v10, p1, v4

    int-to-long v10, v10

    and-long v30, v10, v12

    mul-long v10, v26, v6

    add-long v12, v20, v10

    long-to-int v10, v12

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v2, v11

    const/4 v11, 0x4

    .line 949
    aput v2, p1, v11

    ushr-int/lit8 v2, v10, 0x1f

    ushr-long v10, v12, v1

    mul-long v12, v26, v14

    add-long v20, v10, v12

    add-long v10, v8, v20

    ushr-long v8, v10, v1

    mul-long v12, v26, v16

    add-long v20, v8, v12

    add-long v8, v24, v20

    const-wide v12, 0xffffffffL

    and-long v20, v10, v12

    ushr-long v10, v8, v1

    mul-long v18, v26, v22

    add-long v24, v10, v18

    add-long v10, v28, v24

    and-long v24, v8, v12

    ushr-long v8, v10, v1

    add-long v28, v30, v8

    and-long v8, v10, v12

    .line 960
    aget v10, p0, v3

    int-to-long v10, v10

    and-long v30, v10, v12

    const/16 v10, 0x9

    .line 961
    aget v11, p1, v10

    int-to-long v10, v11

    and-long v32, v10, v12

    const/16 v10, 0xa

    .line 962
    aget v10, p1, v10

    int-to-long v10, v10

    and-long v34, v10, v12

    mul-long v10, v30, v6

    add-long v12, v20, v10

    long-to-int v10, v12

    shl-int/lit8 v11, v10, 0x1

    or-int/2addr v2, v11

    .line 966
    aput v2, p1, v3

    ushr-int/lit8 v2, v10, 0x1f

    ushr-long v10, v12, v1

    mul-long v12, v30, v14

    add-long v20, v10, v12

    add-long v10, v24, v20

    ushr-long v12, v10, v1

    mul-long v20, v30, v16

    add-long v24, v12, v20

    add-long v12, v8, v24

    const-wide v8, 0xffffffffL

    and-long v20, v10, v8

    ushr-long v10, v12, v1

    mul-long v18, v30, v22

    add-long v24, v10, v18

    add-long v10, v28, v24

    and-long v24, v12, v8

    ushr-long v12, v10, v1

    mul-long v18, v30, v26

    add-long v28, v12, v18

    add-long v12, v32, v28

    and-long v28, v10, v8

    ushr-long v10, v12, v1

    add-long v32, v34, v10

    and-long v10, v12, v8

    .line 979
    aget v3, p0, v5

    int-to-long v12, v3

    and-long v34, v12, v8

    const/16 v3, 0xb

    .line 980
    aget v3, p1, v3

    int-to-long v12, v3

    and-long v36, v12, v8

    const/16 v3, 0xc

    .line 981
    aget v3, p1, v3

    int-to-long v12, v3

    and-long v38, v12, v8

    mul-long v8, v34, v6

    add-long v12, v20, v8

    long-to-int v3, v12

    shl-int/lit8 v8, v3, 0x1

    or-int/2addr v2, v8

    .line 985
    aput v2, p1, v5

    ushr-int/lit8 v2, v3, 0x1f

    ushr-long v8, v12, v1

    mul-long v12, v34, v14

    add-long v20, v8, v12

    add-long v8, v24, v20

    ushr-long v12, v8, v1

    mul-long v20, v34, v16

    add-long v24, v12, v20

    add-long v12, v28, v24

    const-wide v18, 0xffffffffL

    and-long v20, v8, v18

    ushr-long v8, v12, v1

    mul-long v24, v34, v22

    add-long v28, v8, v24

    add-long v8, v10, v28

    and-long v10, v12, v18

    ushr-long v12, v8, v1

    mul-long v24, v34, v26

    add-long v28, v12, v24

    add-long v12, v32, v28

    and-long v24, v8, v18

    ushr-long v8, v12, v1

    mul-long v28, v34, v30

    add-long v32, v8, v28

    add-long v8, v36, v32

    and-long v28, v12, v18

    ushr-long v12, v8, v1

    add-long v32, v38, v12

    and-long v12, v8, v18

    const/4 v3, 0x7

    .line 1000
    aget v0, p0, v3

    int-to-long v8, v0

    and-long v36, v8, v18

    const/16 v0, 0xd

    .line 1001
    aget v0, p1, v0

    int-to-long v8, v0

    and-long v38, v8, v18

    const/16 v0, 0xe

    .line 1002
    aget v0, p1, v0

    int-to-long v8, v0

    and-long v40, v8, v18

    mul-long v6, v6, v36

    add-long v8, v20, v6

    long-to-int v0, v8

    shl-int/lit8 v3, v0, 0x1

    or-int/2addr v2, v3

    const/4 v3, 0x7

    .line 1006
    aput v2, p1, v3

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v2, v8, v1

    mul-long v14, v14, v36

    add-long v5, v2, v14

    add-long v2, v10, v5

    ushr-long v5, v2, v1

    mul-long v16, v16, v36

    add-long v7, v5, v16

    add-long v5, v24, v7

    ushr-long v7, v5, v1

    mul-long v22, v22, v36

    add-long v9, v7, v22

    add-long v7, v28, v9

    ushr-long v9, v7, v1

    mul-long v26, v26, v36

    add-long v14, v9, v26

    add-long v9, v12, v14

    ushr-long v11, v9, v1

    mul-long v30, v30, v36

    add-long v13, v11, v30

    add-long v11, v32, v13

    ushr-long v13, v11, v1

    mul-long v36, v36, v34

    add-long v15, v13, v36

    add-long v13, v38, v15

    ushr-long v15, v13, v1

    move-wide/from16 v42, v5

    add-long v4, v40, v15

    long-to-int v2, v2

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/16 v3, 0x8

    .line 1018
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    move-wide/from16 v2, v42

    long-to-int v2, v2

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v0, v3

    const/16 v3, 0x9

    .line 1021
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v7

    const/16 v3, 0xa

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v0, v6

    .line 1024
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v9

    const/16 v3, 0xb

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v0, v6

    .line 1027
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v11

    const/16 v3, 0xc

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v0, v6

    .line 1030
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v13

    const/16 v3, 0xd

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v0, v6

    .line 1033
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    long-to-int v2, v4

    const/16 v3, 0xe

    shl-int/lit8 v6, v2, 0x1

    or-int/2addr v0, v6

    .line 1036
    aput v0, p1, v3

    ushr-int/lit8 v0, v2, 0x1f

    const/16 v2, 0xf

    .line 1038
    aget v2, p1, v2

    shr-long v3, v4, v1

    long-to-int v1, v3

    add-int/2addr v2, v1

    const/16 v1, 0xf

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1039
    aput v0, p1, v1

    return-void

    :cond_0
    move v3, v10

    move v9, v11

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 16

    add-int/lit8 v4, p1, 0x0

    .line 1239
    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v8, v4, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long v10, v4, v6

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    add-long v10, v4, v8

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v10

    .line 1240
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long v8, v10, v4

    add-int/lit8 v5, p1, 0x1

    .line 1242
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x1

    long-to-int v8, v12

    .line 1243
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x2

    .line 1245
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x2

    long-to-int v8, v12

    .line 1246
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x3

    .line 1248
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x3

    long-to-int v8, v12

    .line 1249
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x4

    .line 1251
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x4

    long-to-int v8, v12

    .line 1252
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x5

    .line 1254
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x5

    long-to-int v8, v12

    .line 1255
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v5, p1, 0x6

    .line 1257
    aget v5, p0, v5

    int-to-long v10, v5

    and-long v12, v10, v6

    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v14, v10, v6

    sub-long v10, v12, v14

    add-long v12, v8, v10

    add-int/lit8 v5, p5, 0x6

    long-to-int v8, v12

    .line 1258
    aput v8, p4, v5

    shr-long v8, v12, v4

    add-int/lit8 v1, p1, 0x7

    .line 1260
    aget v0, p0, v1

    int-to-long v0, v0

    and-long v10, v0, v6

    add-int/lit8 v0, p3, 0x7

    aget v0, p2, v0

    int-to-long v0, v0

    and-long v2, v0, v6

    sub-long v0, v10, v2

    add-long v2, v8, v0

    add-int/lit8 v0, p5, 0x7

    long-to-int v1, v2

    .line 1261
    aput v1, p4, v0

    shr-long v0, v2, v4

    long-to-int v0, v0

    return v0
.end method

.method public static sub([I[I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 1209
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p1, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    sub-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 1210
    aput v1, p2, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 1212
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1213
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 1215
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1216
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 1218
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1219
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 1221
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1222
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 1224
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1225
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x6

    .line 1227
    aget v6, p0, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1228
    aput v1, p2, v5

    shr-long v1, v8, v0

    const/4 v5, 0x7

    .line 1230
    aget p0, p0, v5

    int-to-long v6, p0

    and-long v8, v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long v6, p0, v3

    sub-long p0, v8, v6

    add-long v3, v1, p0

    long-to-int p0, v3

    .line 1231
    aput p0, p2, v5

    shr-long p0, v3, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 12

    const/4 v0, 0x0

    .line 1299
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    aget v1, p0, v0

    int-to-long v1, v1

    and-long v7, v1, v3

    sub-long v1, v5, v7

    const-wide/16 v5, 0x0

    add-long v7, v1, v5

    long-to-int v1, v7

    .line 1300
    aput v1, p1, v0

    const/16 v0, 0x20

    shr-long v1, v7, v0

    const/4 v5, 0x1

    .line 1302
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1303
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x2

    .line 1305
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1306
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x3

    .line 1308
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1309
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x4

    .line 1311
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1312
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x5

    .line 1314
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1315
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x6

    .line 1317
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long v10, v6, v3

    sub-long v6, v8, v10

    add-long v8, v1, v6

    long-to-int v1, v8

    .line 1318
    aput v1, p1, v5

    shr-long v1, v8, v0

    const/4 v5, 0x7

    .line 1320
    aget v6, p1, v5

    int-to-long v6, v6

    and-long v8, v6, v3

    aget p0, p0, v5

    int-to-long v6, p0

    and-long v10, v6, v3

    sub-long v3, v8, v10

    add-long v6, v1, v3

    long-to-int p0, v6

    .line 1321
    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x20

    .line 1358
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1361
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    .line 1364
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1367
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 7

    const/16 v0, 0x20

    .line 1372
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1375
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    .line 1378
    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1386
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1387
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1388
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1389
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1390
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1391
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1392
    aput v0, p0, v1

    const/4 v1, 0x7

    .line 1393
    aput v0, p0, v1

    return-void
.end method
