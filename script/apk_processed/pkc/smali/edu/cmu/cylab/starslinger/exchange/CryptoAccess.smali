.class public Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;
.super Ljava/lang/Object;
.source "CryptoAccess.java"


# static fields
.field public static final HALFKEY_LEN:I

.field private static sG:Ljava/math/BigInteger;

.field private static sP:Ljava/math/BigInteger;


# instance fields
.field private mKA:Ljavax/crypto/KeyAgreement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA237327FFFFFFFFFFFFFFFF"

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->HALFKEY_LEN:I

    .line 73
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA237327FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    .line 74
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "02"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSha3Hash([B)[B
    .locals 1

    .line 260
    new-instance v0, Lfr/cryptohash/Keccak256;

    invoke-direct {v0}, Lfr/cryptohash/Keccak256;-><init>()V

    .line 261
    invoke-interface {v0, p0}, Lfr/cryptohash/Digest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeSha3Hash2([B[B)[B
    .locals 2

    .line 265
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 267
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeSha3Hash3([B[B[B)[B
    .locals 2

    .line 272
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/math/BigInteger;)[B
    .locals 4

    .line 246
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    array-length v3, p0

    invoke-static {v0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static hmacSha3([B[B)[B
    .locals 0

    .line 242
    invoke-static {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static hmacSha3Trunc128([B[B)[B
    .locals 2

    const/16 v0, 0x10

    .line 224
    new-array v1, v0, [B

    .line 225
    invoke-static {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->computeSha3Hash2([B[B)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public createFinalKey([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "DH"

    .line 124
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 126
    new-instance p1, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    sget-object v4, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    invoke-direct {p1, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 127
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 128
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 131
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1
.end method

.method public createNodeKey([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "DH"

    .line 100
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 102
    new-instance p1, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    sget-object v4, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    invoke-direct {p1, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 103
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 104
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 107
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 108
    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    sget-object v4, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    invoke-virtual {v3, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 110
    new-instance v4, Ljavax/crypto/spec/DHPrivateKeySpec;

    sget-object v5, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    sget-object v6, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5, v6}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 111
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 112
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    const-string p1, "DH"

    .line 114
    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    .line 115
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 117
    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptData([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "1"

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3([B[B)[B

    move-result-object v0

    const-string v1, "2"

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3Trunc128([B[B)[B

    move-result-object p2

    .line 203
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p2, "AES/CBC/PKCS7Padding"

    .line 204
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 205
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    .line 206
    invoke-virtual {p2, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 207
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptNonce([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "1"

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3([B[B)[B

    move-result-object v0

    const-string v1, "2"

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3Trunc128([B[B)[B

    move-result-object p2

    .line 155
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p2, "AES/CBC/PKCS7Padding"

    .line 156
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 157
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    .line 158
    invoke-virtual {p2, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptData([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "1"

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3([B[B)[B

    move-result-object v0

    const-string v1, "2"

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3Trunc128([B[B)[B

    move-result-object p2

    .line 180
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p2, "AES/CBC/PKCS7Padding"

    .line 181
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 182
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p2, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 184
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptNonce([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "1"

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3([B[B)[B

    move-result-object v0

    const-string v1, "2"

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p2}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->hmacSha3Trunc128([B[B)[B

    move-result-object p2

    .line 140
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p2, "AES/CBC/PKCS7Padding"

    .line 141
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 142
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p2, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 144
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public generateDHPublicKey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "DH"

    .line 81
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 82
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v2, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sP:Ljava/math/BigInteger;

    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->sG:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 86
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    const-string v2, "DH"

    .line 89
    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    iput-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    .line 90
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->mKA:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v2, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 93
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/CryptoAccess;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method
