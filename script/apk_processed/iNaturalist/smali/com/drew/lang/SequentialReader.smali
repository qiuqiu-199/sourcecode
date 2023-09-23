.class public abstract Lcom/drew/lang/SequentialReader;
.super Ljava/lang/Object;
.source "SequentialReader.java"


# instance fields
.field private _isMotorolaByteOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return-void
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract getByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes([BII)V
    .param p1    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(I)[B
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDouble64()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat32()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt16()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getInt32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    const/high16 v2, 0xff0000

    const/high16 v3, -0x1000000

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    return v0
.end method

.method public getInt64()J
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 242
    iget-boolean v1, v0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const/16 v6, 0x8

    const-wide/32 v7, 0xff0000

    const/16 v9, 0x10

    const-wide v10, 0xff000000L

    const/16 v12, 0x18

    const-wide v13, 0xff00000000L

    const/16 v15, 0x20

    const-wide v16, 0xff0000000000L

    const/16 v18, 0x28

    const-wide/high16 v19, 0xff000000000000L

    const/16 v21, 0x30

    const-wide/high16 v22, -0x100000000000000L

    const/16 v24, 0x38

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-long v2, v1

    shl-long v1, v2, v24

    and-long v1, v1, v22

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v4, v3

    shl-long v3, v4, v21

    and-long v3, v3, v19

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v18

    and-long v3, v3, v16

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v15

    and-long/2addr v3, v13

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v12

    and-long/2addr v3, v10

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v9

    and-long/2addr v3, v7

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v6

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v25, 0xff

    and-long v3, v3, v25

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v25, 0xff

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v25

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v6

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v9

    and-long/2addr v3, v7

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v12

    and-long/2addr v3, v10

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v15

    and-long/2addr v3, v13

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v18

    and-long v3, v3, v16

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v21

    and-long v3, v3, v19

    or-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    int-to-long v3, v3

    shl-long v3, v3, v24

    and-long v3, v3, v22

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getInt8()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    return v0
.end method

.method public getNullTerminatedBytes(I)[B
    .locals 4
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    aput-byte v3, v0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    return-object v0

    .line 384
    :cond_1
    new-array p1, v2, [B

    if-lez v2, :cond_2

    .line 386
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object p1
.end method

.method public getNullTerminatedString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/drew/lang/SequentialReader;->getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNullTerminatedStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getNullTerminatedBytes(I)[B

    move-result-object p1

    .line 360
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract getPosition()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getS15Fixed16()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const-wide/high16 v1, 0x40f0000000000000L    # 65536.0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-float v0, v0

    .line 278
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    float-to-double v4, v0

    int-to-double v6, v3

    .line 280
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v0, v4

    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 285
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-float v3, v3

    float-to-double v3, v3

    int-to-double v5, v0

    .line 287
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-float v0, v3

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 312
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method public getString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    .line 322
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getStringValue(ILjava/nio/charset/Charset;)Lcom/drew/metadata/StringValue;
    .locals 1
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/drew/metadata/StringValue;

    invoke-virtual {p0, p1}, Lcom/drew/lang/SequentialReader;->getBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/drew/metadata/StringValue;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getUInt16()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const v1, 0xff00

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public getUInt32()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    const-wide/16 v1, 0xff

    const-wide/32 v3, 0xff00

    const/16 v5, 0x8

    const-wide/32 v6, 0xff0000

    const/16 v8, 0x10

    const-wide v9, 0xff000000L

    const/16 v11, 0x18

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    shl-long v11, v12, v11

    and-long/2addr v9, v11

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v11, v0

    shl-long/2addr v11, v8

    and-long/2addr v6, v11

    or-long/2addr v6, v9

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v8, v5

    and-long/2addr v3, v8

    or-long/2addr v3, v6

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v5, v0

    and-long/2addr v1, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    and-long/2addr v1, v12

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v12, v0

    shl-long/2addr v12, v5

    and-long/2addr v3, v12

    or-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v8

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v11

    and-long/2addr v3, v9

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/drew/lang/SequentialReader;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public isMotorolaByteOrder()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return v0
.end method

.method public setMotorolaByteOrder(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/drew/lang/SequentialReader;->_isMotorolaByteOrder:Z

    return-void
.end method

.method public abstract skip(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trySkip(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
