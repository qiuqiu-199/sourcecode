.class public abstract Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.super Ljava/lang/Object;
.source "PgpSignEncryptData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 6

    .line 69
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;-><init>()V

    const-wide/16 v1, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setDetachedSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 76
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureHashAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricEncryptionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;--->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract getAdditionalEncryptId()J
.end method

.method public abstract getAllowedSigningKeyIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getCompressionAlgorithm()I
.end method

.method public abstract getEncryptionMasterKeyIds()[J
.end method

.method public abstract getPassphraseBegin()Ljava/lang/String;
.end method

.method public abstract getPassphraseFormat()Ljava/lang/String;
.end method

.method public abstract getSignatureHashAlgorithm()I
.end method

.method public abstract getSignatureMasterKeyId()J
.end method

.method public abstract getSignatureSubKeyId()Ljava/lang/Long;
.end method

.method public abstract getSymmetricEncryptionAlgorithm()I
.end method

.method public abstract getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method

.method public abstract getVersionHeader()Ljava/lang/String;
.end method

.method public abstract isCleartextSignature()Z
.end method

.method public abstract isDetachedSignature()Z
.end method

.method public abstract isEnableAsciiArmorOutput()Z
.end method

.method public abstract isHiddenRecipients()Z
.end method
