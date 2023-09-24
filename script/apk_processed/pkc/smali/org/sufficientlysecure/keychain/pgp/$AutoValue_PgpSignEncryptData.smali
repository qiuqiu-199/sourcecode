.class abstract Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;
.super Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.source "$AutoValue_PgpSignEncryptData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;
    }
.end annotation


# instance fields
.field private final additionalEncryptId:J

.field private final allowedSigningKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/lang/String;

.field private final cleartextSignature:Z

.field private final compressionAlgorithm:I

.field private final detachedSignature:Z

.field private final enableAsciiArmorOutput:Z

.field private final encryptionMasterKeyIds:[J

.field private final hiddenRecipients:Z

.field private final passphraseBegin:Ljava/lang/String;

.field private final passphraseFormat:Ljava/lang/String;

.field private final signatureHashAlgorithm:I

.field private final signatureMasterKeyId:J

.field private final signatureSubKeyId:Ljava/lang/Long;

.field private final symmetricEncryptionAlgorithm:I

.field private final symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private final versionHeader:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "J",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "[J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "IIIZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move-object/16 p1, p4

    move-wide/16 p2, p5

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    move/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move/16 p11, p14

    move/16 p12, p15

    move/16 p13, p16

    move/16 p14, p17

    move-object/16 p15, p18

    move-object/16 p16, p19

    move-object v0, v3

    .line 48
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;-><init>()V

    move-object v1, v4

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    move-wide v1, v5

    .line 50
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    move-object v1, p1

    .line 51
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    move-wide v1, p2

    .line 52
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    move-object v1, p4

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-object v1, p5

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    move-object v1, p6

    .line 55
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    move-object v1, p7

    .line 56
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    move v1, p8

    .line 57
    iput v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->compressionAlgorithm:I

    move v1, p9

    .line 58
    iput v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureHashAlgorithm:I

    move/from16 v1, p10

    .line 59
    iput v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricEncryptionAlgorithm:I

    move/from16 v1, p11

    .line 60
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->enableAsciiArmorOutput:Z

    move/from16 v1, p12

    .line 61
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->cleartextSignature:Z

    move/from16 v1, p13

    .line 62
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->detachedSignature:Z

    move/from16 v1, p14

    .line 63
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->hiddenRecipients:Z

    move-object/from16 v1, p15

    .line 64
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 65
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    return-void

    const-string p17, "M_InsDal"

    const-string p18, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;---><init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p17 .. p18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x1

    if-ne v8, v7, :cond_0

    return v0

    .line 190
    :cond_0
    instance-of v1, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 191
    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    .line 192
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_0
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    .line 193
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getAdditionalEncryptId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 194
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureSubKeyId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureSubKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_1
    iget-wide v3, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    .line 195
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureMasterKeyId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    instance-of v3, v8, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;

    if-eqz v3, :cond_4

    move-object v3, v8

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    goto :goto_3

    .line 197
    :cond_4
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v3

    :goto_3
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    if-nez v1, :cond_5

    .line 198
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getAllowedSigningKeyIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_5
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getAllowedSigningKeyIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 199
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_6
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_5
    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->compressionAlgorithm:I

    .line 200
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCompressionAlgorithm()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureHashAlgorithm:I

    .line 201
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureHashAlgorithm()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricEncryptionAlgorithm:I

    .line 202
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricEncryptionAlgorithm()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->enableAsciiArmorOutput:Z

    .line 203
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->cleartextSignature:Z

    .line 204
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isCleartextSignature()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->detachedSignature:Z

    .line 205
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isDetachedSignature()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-boolean v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->hiddenRecipients:Z

    .line 206
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isHiddenRecipients()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 207
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_7
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_6
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 208
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_7

    :cond_8
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_a
    return v2

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getAdditionalEncryptId()J
    .locals 5

    move-object/16 v2, p0

    .line 76
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getAdditionalEncryptId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAllowedSigningKeyIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getAllowedSigningKeyIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCharset()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 71
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getCharset()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCompressionAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 117
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->compressionAlgorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getCompressionAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptionMasterKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 100
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getEncryptionMasterKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphraseBegin()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 159
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getPassphraseBegin()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPassphraseFormat()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 153
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getPassphraseFormat()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureHashAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 122
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureHashAlgorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getSignatureHashAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 87
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getSignatureMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureSubKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getSignatureSubKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSymmetricEncryptionAlgorithm()I
    .locals 4

    move-object/16 v1, p0

    .line 127
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricEncryptionAlgorithm:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getSymmetricEncryptionAlgorithm()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVersionHeader()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 112
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->getVersionHeader()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 13

    move-object/16 v10, p0

    .line 217
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 219
    iget-wide v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    iget-wide v6, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    xor-long v8, v3, v6

    long-to-int v3, v8

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 221
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 223
    iget-wide v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    ushr-long/2addr v3, v5

    iget-wide v5, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    xor-long v7, v3, v5

    long-to-int v3, v7

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 225
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 227
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 229
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 231
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 233
    iget v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->compressionAlgorithm:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 235
    iget v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureHashAlgorithm:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 237
    iget v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricEncryptionAlgorithm:I

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 239
    iget-boolean v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->enableAsciiArmorOutput:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v3, :cond_5

    const/16 v3, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v3, 0x4d5

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 241
    iget-boolean v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->cleartextSignature:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v3, 0x4d5

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 243
    iget-boolean v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->detachedSignature:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x4cf

    goto :goto_7

    :cond_7
    const/16 v3, 0x4d5

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 245
    iget-boolean v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->hiddenRecipients:Z

    if-eqz v3, :cond_8

    const/16 v4, 0x4cf

    :cond_8
    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 247
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    iget-object v3, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 249
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    if-nez v2, :cond_a

    goto :goto_9

    :cond_a
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    xor-int/2addr v0, v1

    return v0

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->hashCode()I"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isCleartextSignature()Z
    .locals 4

    move-object/16 v1, p0

    .line 137
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->cleartextSignature:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->isCleartextSignature()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isDetachedSignature()Z
    .locals 4

    move-object/16 v1, p0

    .line 142
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->detachedSignature:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->isDetachedSignature()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEnableAsciiArmorOutput()Z
    .locals 4

    move-object/16 v1, p0

    .line 132
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->enableAsciiArmorOutput:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->isEnableAsciiArmorOutput()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isHiddenRecipients()Z
    .locals 4

    move-object/16 v1, p0

    .line 147
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->hiddenRecipients:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->isHiddenRecipients()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PgpSignEncryptData{charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalEncryptId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->additionalEncryptId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", signatureSubKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureSubKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signatureMasterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureMasterKeyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", symmetricPassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encryptionMasterKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->encryptionMasterKeyIds:[J

    .line 170
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowedSigningKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->allowedSigningKeyIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->versionHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compressionAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->compressionAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signatureHashAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->signatureHashAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", symmetricEncryptionAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->symmetricEncryptionAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableAsciiArmorOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->enableAsciiArmorOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cleartextSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->cleartextSignature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", detachedSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->detachedSignature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hiddenRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->hiddenRecipients:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", passphraseFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", passphraseBegin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;->passphraseBegin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;--->toString()Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
