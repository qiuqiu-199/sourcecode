.class public abstract Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.super Ljava/lang/Object;
.source "PgpSignEncryptData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 82
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.end method

.method public abstract setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public setAllowedSigningKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAllowedSigningKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;--->setAllowedSigningKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method abstract setAllowedSigningKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"
        }
    .end annotation
.end method

.method public abstract setCharset(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setDetachedSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setPassphraseBegin(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setPassphraseFormat(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setSignatureHashAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setSignatureSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setSymmetricEncryptionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method

.method public abstract setVersionHeader(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.end method
