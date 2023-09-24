.class public Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "AuthenticationOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthenticationOperation"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 62
    invoke-direct {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private executeInternal(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;
    .locals 22

    move-object/16 v19, p0

    move-object/16 v20, p1

    move-object/16 v21, p2

    move-object/16 p0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    .line 86
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 88
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 91
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;->getChallenge()[B

    move-result-object v4

    .line 100
    invoke-virtual/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getHashAlgorithm()I

    move-result v8

    .line 102
    invoke-virtual/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAuthenticationMasterKeyId()J

    move-result-wide v9

    .line 103
    invoke-virtual/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAuthenticationSubKeyId()Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_0

    .line 106
    :try_start_0
    iget-object v11, v1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v11, v9, v10}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretAuthenticationId(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_KEY_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 109
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v12, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 116
    :cond_0
    :goto_0
    :try_start_1
    iget-object v13, v1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v13, v9, v10}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v13
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 122
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v14

    .line 125
    invoke-virtual/range {v20 .. v20}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->getAllowedAuthenticationKeyIds()Ljava/util/List;

    move-result-object v15

    const/4 v5, 0x2

    if-eqz v15, :cond_1

    .line 126
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 128
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_KEY_NOT_ALLOWED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 129
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    const/16 v4, 0x21

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 133
    :cond_1
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->isExpired()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->isRevoked()Z

    move-result v12

    if-nez v12, :cond_7

    .line 134
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isExpired()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isRevoked()Z

    move-result v12

    if-eqz v12, :cond_2

    goto/16 :goto_1

    .line 140
    :cond_2
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canAuthenticate()Z

    move-result v12

    if-nez v12, :cond_3

    .line 141
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_KEY_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 142
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 147
    :cond_3
    :try_start_2
    iget-object v12, v1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-wide/from16 v16, v6

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v5
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    .line 153
    sget-object v6, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 207
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Unhandled SecretKeyType! (should not happen)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 203
    :pswitch_0
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 204
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 173
    :pswitch_1
    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v5

    if-nez v5, :cond_4

    .line 176
    :try_start_3
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v6

    invoke-virtual {v1, v9, v10, v6, v7}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v6
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    :catch_1
    :cond_4
    if-nez v5, :cond_5

    .line 181
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_PENDING_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 182
    new-instance v4, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    .line 184
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v5

    .line 183
    invoke-static {v9, v10, v5, v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredAuthenticationPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v5

    invoke-direct {v4, v3, v5, v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v4

    .line 190
    :cond_5
    :try_start_4
    invoke-virtual {v14, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v5
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v5, :cond_6

    .line 196
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_BAD_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 197
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v5, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :catch_2
    const/4 v5, 0x1

    .line 192
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 193
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v5, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 158
    :pswitch_2
    :try_start_5
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>()V

    invoke-virtual {v14, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v5
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_5 .. :try_end_5} :catch_6

    if-nez v5, :cond_6

    .line 165
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "PASSPHRASE_EMPTY/DIVERT_TO_CARD keyphrase not unlocked with empty passphrase. This is a programming error!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 215
    :cond_6
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v5

    .line 214
    invoke-virtual {v14, v8, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getAuthenticationSignatureGenerator(ILjava/util/Map;)Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;

    move-result-object v5
    :try_end_6
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_6 .. :try_end_6} :catch_5

    .line 221
    array-length v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->update([BII)V

    .line 224
    :try_start_7
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/AuthenticationSignatureGenerator;->getSignature()[B

    move-result-object v4
    :try_end_7
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_7 .. :try_end_7} :catch_3

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v16

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication operation duration : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    long-to-double v10, v7

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 240
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v10, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 242
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->setSignature([B)V

    .line 243
    iput-wide v7, v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->mOperationTime:J

    return-object v2

    :catch_3
    const/4 v5, 0x1

    .line 232
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_SIG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 233
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v5, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :catch_4
    move-exception v0

    const/4 v5, 0x1

    .line 227
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_PENDING_NFC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 228
    new-instance v4, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    .line 229
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v6

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v8

    iget-object v10, v0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v11, v0, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    .line 228
    invoke-static/range {v6 .. v11}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createSecurityTokenAuthenticationOperation(JJ[BI)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v5

    invoke-direct {v4, v3, v5, v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v4

    .line 217
    :catch_5
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_NFC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 218
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :catch_6
    const/4 v4, 0x1

    .line 160
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 161
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :catch_7
    const/4 v4, 0x1

    .line 149
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_KEY_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 150
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :cond_7
    :goto_1
    const/4 v4, 0x1

    .line 135
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_REVOKED_OR_EXPIRED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 136
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :catch_8
    const/4 v4, 0x1

    .line 118
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_AUTH_ERROR_KEY_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 119
    new-instance v2, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;--->executeInternal(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 57
    check-cast p1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 76
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->executeInternal(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;--->execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 69
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;->getAuthenticationData()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    move-result-object v0

    invoke-direct {v1, v0, v3, v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->executeInternal(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;--->execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
