.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
.super Ljava/lang/Object;
.source "CommandApdu.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, v8

    move v1, v9

    move v2, v10

    move v3, p0

    .line 45
    invoke-static/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    move/16 p1, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, v8

    move v1, v9

    move v2, v10

    move v3, p0

    move v7, p1

    .line 49
    invoke-static/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 53
    array-length v6, p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v0, v8

    move v1, v9

    move v2, v10

    move v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIII[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 61
    array-length v6, p1

    const/4 v5, 0x0

    move v0, v8

    move v1, v9

    move v2, v10

    move v3, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIII[BI)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIII[BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 11

    move/16 v8, p0

    move/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    const/4 v7, 0x0

    move v0, v8

    move v1, v9

    move v2, v10

    move v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 57
    invoke-static/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v8

    return-object v8

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIII[BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 10

    move/16 v7, p0

    move/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    if-gez p4, :cond_0

    .line 67
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ne must not be negative"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/high16 v0, 0x10000

    if-le p4, v0, :cond_1

    .line 70
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ne is too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-eqz p1, :cond_2

    add-int/2addr p3, p2

    .line 73
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 75
    new-array p1, p1, [B

    goto :goto_0

    .line 78
    :goto_1
    new-instance p1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;

    move-object v0, p1

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;-><init>(IIII[BI)V

    return-object p1

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create(IIII[BIII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create([BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    add-int/2addr v2, v1

    .line 41
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->create([BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 16

    move-object/16 v13, p0

    .line 100
    array-length v0, v13

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 101
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v0, "apdu must be at least 4 bytes long"

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    const/4 v0, 0x0

    .line 104
    aget-byte v2, v13, v0

    and-int/lit16 v4, v2, 0xff

    const/4 v2, 0x1

    .line 105
    aget-byte v3, v13, v2

    and-int/lit16 v5, v3, 0xff

    const/4 v3, 0x2

    .line 106
    aget-byte v6, v13, v3

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    .line 107
    aget-byte v7, v13, v7

    and-int/lit16 v7, v7, 0xff

    .line 112
    array-length v8, v13

    const/4 v9, 0x0

    if-ne v8, v1, :cond_1

    move-object v1, v9

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 117
    :cond_1
    array-length v8, v13

    const/16 v10, 0x100

    const/4 v11, 0x5

    if-ne v8, v11, :cond_4

    .line 121
    aget-byte v2, v13, v1

    if-nez v2, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    :cond_3
    :goto_1
    move v2, v1

    move-object v1, v9

    goto :goto_2

    .line 122
    :cond_4
    aget-byte v8, v13, v1

    if-eqz v8, :cond_6

    .line 123
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 124
    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    array-length v3, v13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v11

    if-ne v3, v8, :cond_5

    goto :goto_0

    .line 131
    :cond_5
    array-length v3, v13

    sub-int/2addr v3, v2

    aget-byte v2, v13, v3

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_a

    const/16 v2, 0x100

    goto :goto_2

    .line 135
    :cond_6
    aget-byte v1, v13, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v8, 0x6

    aget-byte v8, v13, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v1, v8

    .line 136
    array-length v8, v13

    const/high16 v10, 0x10000

    const/4 v11, 0x7

    if-ne v8, v11, :cond_7

    if-nez v1, :cond_3

    const/high16 v1, 0x10000

    goto :goto_1

    .line 142
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 145
    array-length v12, v13

    add-int/2addr v1, v11

    if-ne v12, v1, :cond_8

    move-object v1, v8

    goto :goto_0

    .line 150
    :cond_8
    array-length v1, v13

    sub-int/2addr v1, v3

    .line 151
    aget-byte v3, v13, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v2

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    if-nez v1, :cond_9

    const/high16 v1, 0x10000

    :cond_9
    move v2, v1

    move-object v1, v8

    :cond_a
    :goto_2
    if-eqz v9, :cond_b

    .line 159
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v13, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    :goto_3
    move-object v8, v13

    goto :goto_4

    .line 161
    :cond_b
    new-array v13, v0, [B

    goto :goto_3

    .line 164
    :goto_4
    new-instance v13, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;

    move-object v3, v13

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;-><init>(IIII[BI)V

    return-object v13

    const-string v14, "M_InsDal"

    const-string v15, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    add-int/2addr v2, v1

    .line 82
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->fromBytes([BII)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getCLA()I
.end method

.method public abstract getData()[B
.end method

.method public abstract getINS()I
.end method

.method public abstract getNe()I
.end method

.method public abstract getP1()I
.end method

.method public abstract getP2()I
.end method

.method public toBytes()[B
    .locals 16

    move-object/16 v13, p0

    .line 170
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v0

    .line 171
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getNe()I

    move-result v1

    .line 172
    array-length v2, v0

    const/high16 v3, 0x10000

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x100

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x0

    if-nez v2, :cond_4

    if-nez v1, :cond_0

    .line 175
    new-array v0, v9, [B

    goto/16 :goto_4

    :cond_0
    if-gt v1, v7, :cond_2

    .line 180
    new-array v0, v10, [B

    if-eq v1, v7, :cond_1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aput-byte v1, v0, v9

    goto/16 :goto_4

    .line 184
    :cond_2
    new-array v0, v6, [B

    if-eq v1, v3, :cond_3

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    goto/16 :goto_4

    :cond_3
    aput-byte v11, v0, v10

    aput-byte v11, v0, v8

    goto/16 :goto_4

    :cond_4
    const/16 v2, 0xff

    if-nez v1, :cond_6

    .line 197
    array-length v1, v0

    if-gt v1, v2, :cond_5

    .line 199
    array-length v1, v0

    add-int/2addr v1, v10

    new-array v1, v1, [B

    .line 200
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 201
    array-length v2, v0

    invoke-static {v0, v11, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v0, v1

    goto :goto_4

    .line 204
    :cond_5
    array-length v1, v0

    add-int/2addr v1, v6

    new-array v1, v1, [B

    .line 205
    aput-byte v11, v1, v9

    .line 206
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    .line 207
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 208
    array-length v2, v0

    invoke-static {v0, v11, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 211
    :cond_6
    array-length v12, v0

    if-gt v12, v2, :cond_8

    if-gt v1, v7, :cond_8

    .line 213
    array-length v2, v0

    add-int/2addr v2, v8

    new-array v2, v2, [B

    .line 214
    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    .line 215
    array-length v3, v0

    invoke-static {v0, v11, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v0, v2

    sub-int/2addr v0, v5

    if-eq v1, v7, :cond_7

    int-to-byte v1, v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    aput-byte v1, v2, v0

    goto :goto_3

    .line 219
    :cond_8
    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    new-array v2, v2, [B

    .line 220
    aput-byte v11, v2, v9

    .line 221
    array-length v7, v0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v2, v10

    .line 222
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v2, v8

    .line 223
    array-length v7, v0

    invoke-static {v0, v11, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v1, v3, :cond_9

    .line 225
    array-length v0, v2

    sub-int/2addr v0, v4

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 226
    array-length v0, v2

    sub-int/2addr v0, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_3

    .line 228
    :cond_9
    array-length v0, v2

    sub-int/2addr v0, v4

    aput-byte v11, v2, v0

    .line 229
    array-length v0, v2

    sub-int/2addr v0, v5

    aput-byte v11, v2, v0

    :goto_3
    move-object v0, v2

    .line 235
    :goto_4
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getCLA()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    .line 236
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 237
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    .line 238
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0

    const-string v14, "M_InsDal"

    const-string v15, "Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;--->toBytes()[B"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
