.class final Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;
.super Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
.source "$AutoValue_PgpSignEncryptData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private additionalEncryptId:Ljava/lang/Long;

.field private allowedSigningKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private cleartextSignature:Ljava/lang/Boolean;

.field private compressionAlgorithm:Ljava/lang/Integer;

.field private detachedSignature:Ljava/lang/Boolean;

.field private enableAsciiArmorOutput:Ljava/lang/Boolean;

.field private encryptionMasterKeyIds:[J

.field private hiddenRecipients:Ljava/lang/Boolean;

.field private passphraseBegin:Ljava/lang/String;

.field private passphraseFormat:Ljava/lang/String;

.field private signatureHashAlgorithm:Ljava/lang/Integer;

.field private signatureMasterKeyId:Ljava/lang/Long;

.field private signatureSubKeyId:Ljava/lang/Long;

.field private symmetricEncryptionAlgorithm:Ljava/lang/Integer;

.field private symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private versionHeader:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 271
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
    .locals 26

    move-object/16 v23, p0

    move-object/from16 v0, v23

    const-string v1, ""

    .line 361
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->additionalEncryptId:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " additionalEncryptId"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureMasterKeyId:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signatureMasterKeyId"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_1
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->compressionAlgorithm:Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " compressionAlgorithm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_2
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureHashAlgorithm:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signatureHashAlgorithm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_3
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->symmetricEncryptionAlgorithm:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " symmetricEncryptionAlgorithm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_4
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->enableAsciiArmorOutput:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enableAsciiArmorOutput"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_5
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->cleartextSignature:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cleartextSignature"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_6
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->detachedSignature:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detachedSignature"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    :cond_7
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->hiddenRecipients:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hiddenRecipients"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 389
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_9
    new-instance v1, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->charset:Ljava/lang/String;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->additionalEncryptId:Ljava/lang/Long;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureSubKeyId:Ljava/lang/Long;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureMasterKeyId:Ljava/lang/Long;

    .line 395
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v11, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->encryptionMasterKeyIds:[J

    iget-object v12, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->allowedSigningKeyIds:Ljava/util/List;

    iget-object v13, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->versionHeader:Ljava/lang/String;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->compressionAlgorithm:Ljava/lang/Integer;

    .line 400
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureHashAlgorithm:Ljava/lang/Integer;

    .line 401
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->symmetricEncryptionAlgorithm:Ljava/lang/Integer;

    .line 402
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->enableAsciiArmorOutput:Ljava/lang/Boolean;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->cleartextSignature:Ljava/lang/Boolean;

    .line 404
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->detachedSignature:Ljava/lang/Boolean;

    .line 405
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->hiddenRecipients:Ljava/lang/Boolean;

    .line 406
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->passphraseFormat:Ljava/lang/String;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->passphraseBegin:Ljava/lang/String;

    move-object/from16 v22, v3

    move-object v3, v1

    move-object/from16 v21, v2

    invoke-direct/range {v3 .. v22}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpSignEncryptData;-><init>(Ljava/lang/String;JLjava/lang/Long;JLorg/sufficientlysecure/keychain/util/Passphrase;[JLjava/util/List;Ljava/lang/String;IIIZZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    const-string v24, "M_InsDal"

    const-string v25, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->additionalEncryptId:Ljava/lang/Long;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setAllowedSigningKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 305
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->allowedSigningKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setAllowedSigningKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCharset(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 275
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->charset:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setCharset(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->cleartextSignature:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->compressionAlgorithm:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDetachedSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 340
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->detachedSignature:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setDetachedSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 330
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->enableAsciiArmorOutput:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 300
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->encryptionMasterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 345
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->hiddenRecipients:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPassphraseBegin(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 355
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->passphraseBegin:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setPassphraseBegin(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPassphraseFormat(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 350
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->passphraseFormat:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setPassphraseFormat(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureHashAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureHashAlgorithm:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setSignatureHashAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 290
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureMasterKeyId:Ljava/lang/Long;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 285
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->signatureSubKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setSignatureSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSymmetricEncryptionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->symmetricEncryptionAlgorithm:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setSymmetricEncryptionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 295
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->symmetricPassphrase:Lorg/sufficientlysecure/keychain/util/Passphrase;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setVersionHeader(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 310
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;->versionHeader:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptData$Builder;--->setVersionHeader(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
