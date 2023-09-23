.class public Lorg/bouncycastle/bcpg/S2K;
.super Lorg/bouncycastle/bcpg/BCPGObject;
.source "S2K.java"


# instance fields
.field algorithm:I

.field itCount:I

.field iv:[B

.field protectionMode:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    const/16 v0, 0x65

    .line 78
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x3

    .line 122
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    .line 123
    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    .line 124
    iput-object p2, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    .line 125
    iput p3, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    .line 44
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    .line 47
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    .line 52
    iget p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    .line 54
    iget p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 56
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    .line 57
    iget-object p1, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    array-length v2, v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 59
    iget p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 69
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 70
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static createDummyS2K(I)Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    .line 200
    new-instance v0, Lorg/bouncycastle/bcpg/S2K;

    invoke-direct {v0}, Lorg/bouncycastle/bcpg/S2K;-><init>()V

    .line 201
    iput p0, v0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    return-object v0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 173
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 175
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 177
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 182
    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 184
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    .line 189
    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x4e

    .line 190
    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x55

    .line 191
    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 192
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    return v0
.end method

.method public getIV()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    return-object v0
.end method

.method public getIterationCount()J
    .locals 2

    .line 157
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x6

    shl-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProtectionMode()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    return v0
.end method
