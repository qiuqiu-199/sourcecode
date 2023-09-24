.class public Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;
.super Ljava/lang/Object;
.source "SshEncodedData.java"


# instance fields
.field private mData:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    const/16 v0, 0x40

    .line 26
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;-><init>(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;---><init>(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 73
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->getBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putBoolean(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putBoolean(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putByte(B)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putByte(B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putMPInt(Ljava/math/BigInteger;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 44
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 45
    array-length v0, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v1, v3, v0

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putUInt32(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putMPInt(Ljava/math/BigInteger;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putString(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putString([B)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putString(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putString([B)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 39
    array-length v0, v4

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->putUInt32(I)V

    .line 40
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putString([B)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public putUInt32(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 53
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    shr-int/lit8 v1, v3, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    shr-int/lit8 v1, v3, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    shr-int/lit8 v1, v3, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;->mData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/key/SshEncodedData;--->putUInt32(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
