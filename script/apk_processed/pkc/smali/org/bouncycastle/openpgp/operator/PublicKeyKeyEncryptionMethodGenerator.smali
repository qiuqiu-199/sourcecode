.class public abstract Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.source "PublicKeyKeyEncryptionMethodGenerator.java"


# instance fields
.field private hiddenRecipients:Z

.field private pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;Z)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 28
    iput-boolean p2, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->hiddenRecipients:Z

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p2

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 49
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown asymmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use ECDSA for encryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use DSA for encryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use an RSA_SIGN key for encryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use EdDSA for encryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private convertToEncodedMPI([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MPI encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method protected abstract encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 107
    iget-boolean p1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->hiddenRecipients:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    .line 108
    :goto_0
    new-instance p1, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->processSessionInfo([B)[[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;-><init>(JI[[B)V

    return-object p1
.end method

.method public processSessionInfo([B)[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown asymmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :pswitch_0
    new-array v0, v2, [[B

    .line 65
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_0

    .line 80
    :cond_0
    new-array v0, v2, [[B

    aput-object p1, v0, v3

    goto :goto_0

    .line 69
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    .line 70
    array-length v4, p1

    div-int/2addr v4, v1

    new-array v4, v4, [B

    .line 72
    array-length v5, v0

    invoke-static {p1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v5, v0

    array-length v6, v4

    invoke-static {p1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-array p1, v1, [[B

    .line 76
    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object v0

    aput-object v0, p1, v3

    .line 77
    invoke-direct {p0, v4}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object v0

    aput-object v0, p1, v2

    move-object v0, p1

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
