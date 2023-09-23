.class public Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 944
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 959
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 960
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 966
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Wrong version of key store."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 970
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v6, v1, [B

    .line 972
    array-length v1, v6

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    .line 974
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Key store corrupted."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 977
    :cond_2
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 979
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-ltz v7, :cond_6

    const/16 v1, 0x1000

    if-le v7, v1, :cond_3

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "OldPBEWithSHAAndTwofish-CBC"

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_4
    const-string p1, "PBEWithSHAAndTwofish-CBC"

    goto :goto_0

    :goto_1
    const/4 v4, 0x2

    move-object v2, p0

    move-object v5, p2

    .line 996
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 997
    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 999
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1000
    new-instance v0, Lorg/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Digest;)V

    .line 1002
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1005
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1006
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1010
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 1011
    invoke-static {p2, p1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1013
    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1015
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 1016
    new-instance p1, Ljava/io/IOException;

    const-string p2, "KeyStore integrity check failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    .line 983
    :cond_6
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Key store corrupted."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1024
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x14

    .line 1025
    new-array v5, p1, [B

    .line 1026
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    and-int/lit16 p1, p1, 0x3ff

    add-int/lit16 v6, p1, 0x400

    .line 1028
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1030
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1031
    array-length p1, v5

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1032
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1033
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "PBEWithSHAAndTwofish-CBC"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p2

    .line 1035
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 1037
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1038
    new-instance p1, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 1040
    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1042
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object p1

    .line 1044
    invoke-virtual {p2, p1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1046
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method
