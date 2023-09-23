.class public Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;
.super Ljava/lang/Object;
.source "CachingDataDecryptorFactory.java"

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# instance fields
.field private mOperatorHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private final mSessionKeyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    check-cast v0, Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;-><init>(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;Ljava/util/Map;)V

    .line 33
    new-instance p2, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mOperatorHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    return-void
.end method


# virtual methods
.method public canDecrypt()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mOperatorHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public getCachedSessionKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasCachedSessionData(Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getSessionKey()[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public recoverSessionData(I[[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    if-nez v1, :cond_1

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "tried to decrypt without wrapped decryptor, this is a bug!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mWrappedDecryptor:Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;->recoverSessionData(I[[B)[B

    move-result-object p1

    .line 73
    iget-object p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->mSessionKeyCache:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
