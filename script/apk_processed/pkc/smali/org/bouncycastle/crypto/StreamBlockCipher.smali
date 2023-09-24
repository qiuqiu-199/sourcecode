.class public abstract Lorg/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method


# virtual methods
.method protected abstract calculateByte(B)B
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/crypto/StreamBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public processBytes([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p5, p3

    .line 35
    array-length v1, p4

    if-le v0, v1, :cond_0

    .line 37
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int v0, p2, p3

    .line 40
    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 42
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ge p2, v0, :cond_2

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 51
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v2

    goto :goto_0

    :cond_2
    return p3
.end method
