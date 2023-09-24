.class public Lorg/bouncycastle/crypto/engines/Grain128Engine;
.super Ljava/lang/Object;
.source "Grain128Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    .line 297
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 299
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->oneRound()V

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 22

    move-object/from16 v0, p0

    .line 164
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    ushr-int/2addr v1, v3

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v1, v4

    .line 165
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0xc

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v5

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v4, v6

    .line 166
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v2

    ushr-int/lit8 v6, v6, 0xf

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v5

    shl-int/lit8 v7, v7, 0x11

    or-int/2addr v6, v7

    .line 167
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v5

    ushr-int/lit8 v7, v7, 0x4

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v3

    shl-int/lit8 v8, v8, 0x1c

    or-int/2addr v7, v8

    .line 168
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v5

    ushr-int/lit8 v8, v8, 0xd

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v3

    shl-int/lit8 v9, v9, 0x13

    or-int/2addr v8, v9

    .line 169
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v3

    .line 170
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v3

    ushr-int/lit8 v10, v10, 0x9

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0x17

    or-int/2addr v10, v11

    .line 171
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v3

    ushr-int/lit8 v11, v11, 0x19

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v12

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v11, v13

    .line 172
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v3

    ushr-int/lit8 v13, v13, 0x1f

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v12

    shl-int/2addr v14, v5

    or-int/2addr v13, v14

    .line 173
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v14, v14, v2

    ushr-int/lit8 v14, v14, 0x8

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v5

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    .line 174
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v2

    ushr-int/lit8 v15, v15, 0xd

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v12, v12, v5

    shl-int/lit8 v12, v12, 0x13

    or-int/2addr v12, v15

    .line 175
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v15, v2

    ushr-int/lit8 v2, v2, 0x14

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v5

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v2, v15

    .line 176
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v5

    ushr-int/lit8 v15, v15, 0xa

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v3

    shl-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v15

    .line 177
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/16 v17, 0x1

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x1c

    move/from16 v18, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v11, v11, v3

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v11, v15

    .line 178
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v3

    ushr-int/lit8 v15, v15, 0xf

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/16 v16, 0x3

    aget v3, v3, v16

    shl-int/lit8 v3, v3, 0x11

    or-int/2addr v3, v15

    .line 179
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/16 v19, 0x2

    aget v15, v15, v19

    ushr-int/lit8 v15, v15, 0x1d

    move/from16 v20, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v10, v10, v16

    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v10, v15

    .line 180
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v19

    ushr-int/lit8 v15, v15, 0x1f

    move/from16 v21, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v9, v9, v16

    const/16 v16, 0x1

    shl-int/lit8 v9, v9, 0x1

    or-int/2addr v9, v15

    and-int/2addr v14, v4

    and-int/2addr v2, v12

    xor-int/2addr v2, v14

    and-int/2addr v5, v13

    xor-int/2addr v2, v5

    and-int/2addr v3, v11

    xor-int/2addr v2, v3

    and-int v3, v4, v13

    and-int/2addr v3, v9

    xor-int/2addr v2, v3

    xor-int/2addr v2, v10

    xor-int/2addr v1, v2

    xor-int/2addr v1, v6

    xor-int/2addr v1, v7

    xor-int/2addr v1, v8

    xor-int v1, v1, v21

    xor-int v1, v1, v20

    xor-int v1, v1, v18

    return v1
.end method

.method private getOutputLFSR()I
    .locals 7

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 148
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v1, v2, v1

    ushr-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x19

    or-int/2addr v1, v2

    .line 149
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1a

    or-int/2addr v2, v3

    .line 150
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x6

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1a

    or-int/2addr v3, v5

    .line 151
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    .line 152
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v6

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    return v0
.end method

.method private getOutputNFSR()I
    .locals 22

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 117
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    ushr-int/2addr v3, v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1d

    or-int/2addr v3, v5

    .line 118
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xb

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v6

    shl-int/lit8 v7, v7, 0x15

    or-int/2addr v5, v7

    .line 119
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v2

    ushr-int/lit8 v7, v7, 0xd

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v6

    shl-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    .line 120
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v2

    ushr-int/lit8 v8, v8, 0x11

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v6

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    .line 121
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v2

    ushr-int/lit8 v9, v9, 0x12

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v6

    shl-int/lit8 v10, v10, 0xe

    or-int/2addr v9, v10

    .line 122
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v2

    ushr-int/lit8 v10, v10, 0x1a

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    .line 123
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v2, v11, v2

    ushr-int/lit8 v2, v2, 0x1b

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v2, v11

    .line 124
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    ushr-int/lit8 v11, v11, 0x8

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    .line 125
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v12, v12, v6

    ushr-int/lit8 v12, v12, 0x10

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v13

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v12, v14

    .line 126
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v6

    ushr-int/lit8 v14, v14, 0x18

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v13

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    .line 127
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v6

    ushr-int/lit8 v15, v15, 0x1b

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v4, v4, v13

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, v15

    .line 128
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v6

    ushr-int/lit8 v15, v15, 0x1d

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v13

    const/16 v16, 0x3

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v6, v15

    .line 129
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v13

    const/16 v17, 0x1

    ushr-int/lit8 v15, v15, 0x1

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v16

    shl-int/lit8 v13, v13, 0x1f

    or-int/2addr v13, v15

    .line 130
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/16 v17, 0x2

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x3

    move/from16 v18, v6

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v16

    shl-int/lit8 v6, v6, 0x1d

    or-int/2addr v6, v15

    .line 131
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x4

    move/from16 v19, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v16

    shl-int/lit8 v13, v13, 0x1c

    or-int/2addr v13, v15

    .line 132
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x14

    move/from16 v20, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v16

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v13, v15

    .line 133
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x1b

    move/from16 v21, v13

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v16

    shl-int/lit8 v13, v13, 0x5

    or-int/2addr v13, v15

    .line 134
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v16

    xor-int/2addr v1, v10

    xor-int/2addr v1, v14

    xor-int/2addr v1, v13

    xor-int/2addr v1, v15

    and-int/2addr v3, v6

    xor-int/2addr v1, v3

    and-int v3, v5, v7

    xor-int/2addr v1, v3

    and-int v3, v8, v9

    xor-int/2addr v1, v3

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    and-int v2, v11, v12

    xor-int/2addr v1, v2

    and-int v2, v18, v19

    xor-int/2addr v1, v2

    and-int v2, v20, v21

    xor-int/2addr v1, v2

    return v1
.end method

.method private initGrain()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    .line 103
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 104
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    return-void
.end method

.method private oneRound()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 278
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v3, v2

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    return-void
.end method

.method private setKey([B[B)V
    .locals 8

    const/4 v0, -0x1

    const/16 v1, 0xc

    .line 211
    aput-byte v0, p2, v1

    const/16 v1, 0xd

    .line 212
    aput-byte v0, p2, v1

    const/16 v1, 0xe

    .line 213
    aput-byte v0, p2, v1

    const/16 v1, 0xf

    .line 214
    aput-byte v0, p2, v1

    .line 215
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    .line 216
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 222
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v2, p2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v4, p2, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    const v7, 0xff00

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    aput v1, v0, p1

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v2, v2, v4

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v2, v2, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v2, v2, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, p1

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 3

    const/4 v0, 0x1

    .line 195
    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x2

    .line 196
    aget v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x3

    .line 197
    aget v2, p1, v0

    aput v2, p1, v1

    .line 198
    aput p2, p1, v0

    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Grain-128"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128 Init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 64
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 66
    array-length v0, p1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_2

    .line 74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128 Init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 83
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    .line 84
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    const/4 v0, 0x4

    .line 85
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    .line 86
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 87
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->reset()V

    return-void

    .line 68
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Grain-128  requires exactly 12 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    if-nez v0, :cond_0

    .line 241
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    .line 245
    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 247
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int v0, p5, p3

    .line 250
    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 252
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p5, v0

    add-int v2, p2, v0

    .line 257
    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x4

    .line 265
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->setKey([B[B)V

    .line 267
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initGrain()V

    return-void
.end method
