.class Lorg/bouncycastle/openpgp/operator/PGPUtil;
.super Ljava/lang/Object;
.source "PGPUtil.java"


# direct methods
.method static makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move/from16 v1, p1

    const/16 v3, 0xc0

    const/16 v4, 0x100

    const/16 v5, 0x80

    packed-switch v1, :pswitch_data_0

    .line 84
    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown symmetric algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/16 v5, 0x100

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x40

    const/16 v5, 0x40

    goto :goto_0

    :pswitch_2
    const/16 v5, 0xc0

    .line 87
    :goto_0
    :pswitch_3
    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v1

    add-int/lit8 v5, v5, 0x7

    .line 88
    div-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v4

    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 97
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "s2k/digestCalculator mismatch"

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 104
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "digestCalculator not for MD5"

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 112
    :goto_1
    :try_start_0
    array-length v8, v3

    if-ge v6, v8, :cond_a

    if-eqz p2, :cond_6

    const/4 v8, 0x0

    :goto_2
    if-eq v8, v7, :cond_2

    .line 118
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 121
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/bcpg/S2K;->getIV()[B

    move-result-object v8

    .line 123
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    packed-switch v9, :pswitch_data_1

    .line 165
    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown S2K type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/bcpg/S2K;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_4
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 126
    :pswitch_5
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 133
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/bcpg/S2K;->getIterationCount()J

    move-result-wide v9

    .line 134
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 135
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 137
    array-length v11, v8

    array-length v12, v1

    add-int/2addr v11, v12

    int-to-long v11, v11

    sub-long v13, v9, v11

    :goto_3
    const-wide/16 v9, 0x0

    :goto_4
    cmp-long v11, v13, v9

    if-lez v11, :cond_8

    .line 141
    array-length v11, v8

    int-to-long v11, v11

    cmp-long v15, v13, v11

    if-gez v15, :cond_4

    long-to-int v9, v13

    .line 143
    invoke-virtual {v4, v8, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 148
    :cond_4
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 149
    array-length v11, v8

    int-to-long v11, v11

    sub-long v9, v13, v11

    .line 152
    array-length v11, v1

    int-to-long v11, v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_5

    long-to-int v9, v9

    .line 154
    invoke-virtual {v4, v1, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    array-length v11, v1

    int-to-long v11, v11

    sub-long v13, v9, v11

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eq v8, v7, :cond_7

    .line 172
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 175
    :cond_7
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 178
    :cond_8
    :goto_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 180
    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v8

    .line 182
    array-length v9, v8

    array-length v10, v3

    sub-int/2addr v10, v6

    if-le v9, v10, :cond_9

    .line 184
    array-length v9, v3

    sub-int/2addr v9, v6

    invoke-static {v8, v5, v3, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 188
    :cond_9
    array-length v9, v8

    invoke-static {v8, v5, v3, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :goto_7
    array-length v8, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 201
    :goto_8
    array-length v4, v1

    if-eq v2, v4, :cond_b

    .line 203
    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    return-object v3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 198
    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception calculating digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/bouncycastle/bcpg/S2K;[C)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 224
    invoke-interface {p0, v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    .line 227
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object p0

    return-object p0
.end method
