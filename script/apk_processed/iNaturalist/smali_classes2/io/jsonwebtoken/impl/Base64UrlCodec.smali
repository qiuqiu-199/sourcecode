.class public Lio/jsonwebtoken/impl/Base64UrlCodec;
.super Lio/jsonwebtoken/impl/AbstractTextCodec;
.source "Base64UrlCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/jsonwebtoken/impl/AbstractTextCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 3

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/Base64UrlCodec;->ensurePadding([C)[C

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 69
    aget-char v1, p1, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2b

    .line 70
    aput-char v1, p1, v0

    goto :goto_1

    .line 71
    :cond_0
    aget-char v1, p1, v0

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2f

    .line 72
    aput-char v1, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 78
    sget-object p1, Lio/jsonwebtoken/impl/TextCodec;->BASE64:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {p1, v0}, Lio/jsonwebtoken/impl/TextCodec;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 3

    .line 22
    sget-object v0, Lio/jsonwebtoken/impl/TextCodec;->BASE64:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/impl/TextCodec;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 23
    sget-object v0, Lio/jsonwebtoken/impl/Base64UrlCodec;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/Base64UrlCodec;->removePadding([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 30
    aget-byte v1, p1, v0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2d

    .line 31
    aput-byte v1, p1, v0

    goto :goto_1

    .line 32
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5f

    .line 33
    aput-byte v1, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/jsonwebtoken/impl/Base64UrlCodec;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method protected ensurePadding([C)[C
    .locals 5

    .line 88
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    rsub-int/lit8 v0, v0, 0x4

    :goto_1
    if-lez v0, :cond_3

    .line 94
    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [C

    .line 95
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-ge v1, v0, :cond_2

    .line 97
    array-length v3, p1

    add-int/2addr v3, v1

    const/16 v4, 0x3d

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :cond_3
    return-object p1
.end method

.method protected removePadding([B)[B
    .locals 5

    .line 45
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_0

    .line 46
    aget-byte v3, p1, v0

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    .line 53
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    .line 54
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method
