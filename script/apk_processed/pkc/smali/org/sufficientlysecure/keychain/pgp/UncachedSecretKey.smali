.class public Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;
.super Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;
.source "UncachedSecretKey.java"


# static fields
.field public static final AUTHENTICATION:I = 0x20

.field public static final CERTIFY_OTHER:I = 0x1

.field public static final ENCRYPT_COMMS:I = 0x4

.field public static final ENCRYPT_STORAGE:I = 0x8

.field public static final SIGN_DATA:I = 0x2


# instance fields
.field final mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPSecretKey;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 37
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 38
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;---><init>(Lorg/bouncycastle/openpgp/PGPSecretKey;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public encodeSecretKey(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 47
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;--->encodeSecretKey(Ljava/io/OutputStream;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretKeyExternal()Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;->mSecretKey:Lorg/bouncycastle/openpgp/PGPSecretKey;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/UncachedSecretKey;--->getSecretKeyExternal()Lorg/bouncycastle/openpgp/PGPSecretKey;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
