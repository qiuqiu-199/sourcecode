.class public Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "PgpSignEncryptOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;",
        ">;"
    }
.end annotation


# static fields
.field private static NEW_LINE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "\r\n"

    const-string v1, "UTF-8"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->NEW_LINE:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UnsupportedEncodingException"

    const/4 v2, 0x0

    .line 103
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 112
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 108
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;
    .locals 52

    move-object/16 v49, p0

    move-object/16 v50, p1

    move-object/16 v51, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/from16 v8, v49

    move-object/from16 v9, v51

    move-object/from16 v10, p1

    .line 177
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 179
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 182
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureMasterKeyId()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    const/4 v15, 0x1

    if-eqz v3, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 183
    :goto_0
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 184
    :cond_1
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    .line 186
    :goto_1
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCompressionAlgorithm()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v1

    .line 191
    :goto_2
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v1

    const/high16 v5, 0x10000

    const/16 v18, 0x0

    if-eqz v1, :cond_9

    .line 196
    new-instance v1, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v10, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "Version"

    .line 198
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_5
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "Charset"

    .line 202
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_6
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "Passphrase-Format"

    .line 206
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_7
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "Passphrase-Begin"

    .line 210
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v3, v1

    move-object v4, v3

    goto :goto_3

    :cond_9
    move-object v3, v10

    move-object/from16 v4, v18

    :goto_3
    const/16 v1, 0x64

    const/4 v13, 0x1

    if-eqz v16, :cond_12

    const v14, 0x7f110c07

    .line 221
    invoke-virtual {v8, v14, v12, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 224
    :try_start_0
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureMasterKeyId()J

    move-result-wide v5

    .line 225
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureSubKeyId()Ljava/lang/Long;

    move-result-object v14
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v14, :cond_a

    .line 228
    :try_start_1
    iget-object v14, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v14, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretSignId(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 230
    :catch_0
    :try_start_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_KEY_SIGN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 231
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 235
    :cond_a
    :goto_4
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 236
    invoke-virtual {v1, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v1

    .line 237
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v2

    .line 239
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getAllowedSigningKeyIds()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 240
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 242
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_KEY_NOT_ALLOWED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 243
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 247
    :cond_b
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->isExpired()Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->isRevoked()Z

    move-result v1

    if-nez v1, :cond_11

    .line 248
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isExpired()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isRevoked()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_7

    .line 254
    :cond_c
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canSign()Z

    move-result v1

    if-nez v1, :cond_d

    .line 255
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_KEY_SIGN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    :try_start_4
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 259
    :cond_d
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    iget-object v12, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v12

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 296
    new-instance v1, Ljava/lang/AssertionError;

    goto :goto_6

    .line 292
    :pswitch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_5 .. :try_end_5} :catch_2

    .line 293
    :try_start_6
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 271
    :pswitch_1
    invoke-virtual/range {v51 .. v51}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1
    :try_end_6
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v1, :cond_e

    .line 274
    :try_start_7
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v12

    invoke-virtual {v8, v5, v6, v12, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v12
    :try_end_7
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_1
    :cond_e
    move-object v12, v1

    :goto_5
    if-nez v12, :cond_f

    .line 279
    :try_start_8
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_PENDING_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x2

    invoke-virtual {v11, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 280
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    .line 281
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v2

    .line 282
    invoke-virtual/range {v51 .. v51}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v4

    .line 280
    invoke-static {v5, v6, v2, v3, v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSignPassphrase(JJLjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v2

    invoke-direct {v1, v11, v2, v9}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v1

    .line 284
    :cond_f
    invoke-virtual {v2, v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 285
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_BAD_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_8
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_9
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_9 .. :try_end_9} :catch_2

    .line 286
    :try_start_a
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 262
    :pswitch_2
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>()V

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 263
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "PASSPHRASE_EMPTY/DIVERT_TO_CARD keyphrase not unlocked with empty passphrase. This is a programming error!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_10
    move-object v12, v2

    goto :goto_8

    :goto_6
    const-string v2, "Unhandled SecretKeyType! (should not happen)"

    .line 296
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 249
    :cond_11
    :goto_7
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_REVOKED_OR_EXPIRED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_a
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_a .. :try_end_a} :catch_2

    const/4 v2, 0x1

    :try_start_b
    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_b
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_b .. :try_end_b} :catch_2

    .line 250
    :try_start_c
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_c
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_c .. :try_end_c} :catch_2

    return-object v1

    .line 305
    :catch_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_UNLOCK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 306
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :catch_3
    const/4 v2, 0x1

    .line 302
    :catch_4
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_SIGN_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 303
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v15, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :cond_12
    move-object/from16 v12, v18

    :goto_8
    const v1, 0x7f110c20

    const/16 v2, 0x64

    const/4 v5, 0x2

    .line 309
    invoke-virtual {v8, v1, v5, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    if-eqz v17, :cond_18

    .line 316
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricEncryptionAlgorithm()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_13

    const/16 v1, 0x9

    .line 320
    :cond_13
    new-instance v13, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    invoke-direct {v13, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    const-string v1, "BC"

    .line 322
    invoke-virtual {v13, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v15}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setWithIntegrityPacket(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object v1

    .line 325
    new-instance v13, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;

    invoke-direct {v13, v1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    .line 327
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 329
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_SYMMETRIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v14, 0x1

    invoke-virtual {v11, v1, v14}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 331
    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    .line 332
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;-><init>([C)V

    .line 333
    invoke-virtual {v13, v1}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    move-object v14, v3

    move-object/from16 v28, v4

    move/from16 v31, v7

    const/4 v10, -0x1

    goto/16 :goto_b

    :cond_14
    const/4 v14, 0x1

    .line 335
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ASYMMETRIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v14}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 337
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getAdditionalEncryptId()J

    move-result-wide v23

    .line 338
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getEncryptionMasterKeyIds()[J

    move-result-object v2

    array-length v1, v2

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v1, :cond_17

    aget-wide v26, v2, v15

    cmp-long v21, v26, v23

    if-nez v21, :cond_15

    move/from16 v21, v1

    move-object/from16 v25, v2

    move-object v14, v3

    move-object/from16 v28, v4

    move/from16 v31, v7

    const/4 v10, -0x1

    goto :goto_a

    :cond_15
    move/from16 v21, v1

    const/16 v10, 0x64

    move-object v1, v8

    move-object/from16 v25, v2

    move v2, v14

    move-object v14, v3

    move-object v3, v11

    move-object/from16 v28, v4

    move-object/from16 v4, v50

    move-object v5, v13

    move/from16 v31, v7

    const/4 v10, -0x1

    move-wide/from16 v6, v26

    .line 343
    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->processEncryptionMasterKeyId(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 345
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :cond_16
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object v3, v14

    move/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v4, v28

    move/from16 v7, v31

    const/4 v5, 0x2

    const/4 v6, -0x1

    move-object/from16 v10, p1

    const/4 v14, 0x1

    goto :goto_9

    :cond_17
    move-object v14, v3

    move-object/from16 v28, v4

    move/from16 v31, v7

    const-wide/16 v1, 0x0

    const/4 v10, -0x1

    cmp-long v3, v23, v1

    if-eqz v3, :cond_19

    move-object v1, v8

    const/4 v3, 0x1

    move v2, v3

    move-object v3, v11

    move-object/from16 v4, v50

    move-object v5, v13

    move-wide/from16 v6, v23

    .line 350
    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->processEncryptionMasterKeyId(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;J)Z

    move-result v1

    if-nez v1, :cond_19

    .line 352
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :cond_18
    move-object v14, v3

    move-object/from16 v28, v4

    move/from16 v31, v7

    const/4 v10, -0x1

    move-object/from16 v13, v18

    .line 358
    :cond_19
    :goto_b
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getSignatureHashAlgorithm()I

    move-result v1

    if-ne v1, v10, :cond_1a

    const/16 v1, 0xa

    :cond_1a
    if-eqz v16, :cond_1c

    const v2, 0x7f110c1f

    const/4 v3, 0x4

    const/16 v4, 0x64

    .line 366
    invoke-virtual {v8, v2, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 369
    :try_start_d
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isCleartextSignature()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v17, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 372
    :goto_c
    invoke-virtual/range {v51 .. v51}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {v51 .. v51}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v4

    .line 370
    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getDataSignatureGenerator(IZLjava/util/Map;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    move-result-object v2
    :try_end_d
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_d

    .line 374
    :catch_5
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_NFC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 375
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    :cond_1c
    move-object/from16 v2, v18

    .line 379
    :goto_d
    new-instance v3, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v5, 0x5f

    const/16 v6, 0x8

    const/16 v7, 0x64

    invoke-direct {v3, v4, v6, v5, v7}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x64

    if-eqz v17, :cond_24

    const v4, 0x7f110c02

    .line 396
    :try_start_e
    invoke-virtual {v8, v4, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    if-eqz v16, :cond_1d

    .line 397
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_SIGCRYPTING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_e

    :cond_1d
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ENCRYPTING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    :goto_e
    const/4 v6, 0x1

    invoke-virtual {v11, v4, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_e
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    const/high16 v4, 0x10000

    .line 404
    :try_start_f
    new-array v6, v4, [B

    invoke-virtual {v13, v14, v6}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_f
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    move/from16 v15, v31

    if-eqz v15, :cond_1e

    .line 407
    :try_start_10
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_COMPRESSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;
    :try_end_10
    .catch Ljava/security/SignatureException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    const/4 v10, 0x2

    :try_start_11
    invoke-virtual {v11, v7, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 409
    new-instance v7, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {v7, v15}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 410
    new-instance v13, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    goto :goto_f

    :catch_6
    const/4 v10, 0x2

    :catch_7
    const/4 v2, 0x1

    goto/16 :goto_1c

    :catch_8
    const/4 v10, 0x2

    :catch_9
    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_1e
    const/4 v10, 0x2

    .line 412
    :try_start_12
    new-instance v13, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v13, v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v7, v18

    :goto_f
    if-eqz v16, :cond_1f

    const/4 v15, 0x0

    .line 416
    invoke-virtual {v2, v15}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateOnePassVersion(Z)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v10

    invoke-virtual {v10, v13}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    .line 419
    :cond_1f
    new-instance v10, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v10}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    .line 421
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isCleartextSignature()Z

    move-result v15

    if-eqz v15, :cond_20

    const/16 v15, 0x75

    const/16 v34, 0x75

    goto :goto_10

    :cond_20
    const/16 v15, 0x62

    const/16 v34, 0x62

    .line 427
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getOriginalFilename()Ljava/lang/String;

    move-result-object v35

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    new-array v5, v4, [B

    move-object/from16 v32, v10

    move-object/from16 v33, v13

    move-object/from16 v36, v15

    move-object/from16 v37, v5

    .line 426
    invoke-virtual/range {v32 .. v37}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;Ljava/util/Date;[B)Ljava/io/OutputStream;

    move-result-object v5

    .line 431
    new-array v4, v4, [B

    .line 432
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v26, 0x0

    .line 433
    :goto_11
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_23

    move-object/from16 v38, v6

    const/4 v6, 0x0

    .line 434
    invoke-virtual {v5, v4, v6, v15}, Ljava/io/OutputStream;->write([BII)V

    if-eqz v16, :cond_21

    .line 438
    invoke-virtual {v2, v4, v6, v15}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    :cond_21
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    int-to-long v4, v15

    add-long v29, v26, v4

    .line 442
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v4

    const-wide/16 v19, 0x0

    cmp-long v6, v4, v19

    if-lez v6, :cond_22

    mul-long v4, v29, v23

    .line 443
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v26

    div-long v4, v4, v26

    long-to-int v4, v4

    const/16 v5, 0x64

    .line 444
    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->setProgress(II)V

    :cond_22
    move-wide/from16 v26, v29

    move-object/from16 v6, v38

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    goto :goto_11

    :cond_23
    move-object/from16 v39, v5

    move-object/from16 v38, v6

    .line 448
    invoke-virtual {v10}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->close()V
    :try_end_12
    .catch Ljava/security/SignatureException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    move-object v3, v7

    move-object/from16 v6, v18

    move-object v13, v6

    move-object v15, v13

    move-object/from16 v7, v28

    move-object/from16 v4, v38

    move-object/from16 v10, v39

    goto/16 :goto_17

    :catch_a
    const/4 v10, 0x2

    goto/16 :goto_1b

    :catch_b
    const/4 v2, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1c

    :catch_c
    const/4 v2, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1d

    :catch_d
    const/4 v10, 0x1

    goto/16 :goto_1b

    :catch_e
    const/4 v2, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1c

    :catch_f
    const/4 v2, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1d

    :cond_24
    move/from16 v15, v31

    const/high16 v4, 0x10000

    const v5, 0x7f110c26

    if-eqz v16, :cond_26

    .line 451
    :try_start_13
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isCleartextSignature()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v7

    if-eqz v7, :cond_26

    const/16 v7, 0x64

    .line 454
    invoke-virtual {v8, v5, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 455
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_SIGNING_CLEARTEXT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    move-object/from16 v7, v28

    .line 458
    invoke-virtual {v7, v1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->beginClearText(I)V

    .line 460
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 461
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 464
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->processLine(Ljava/lang/String;Lorg/bouncycastle/bcpg/ArmoredOutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;)V

    .line 468
    :goto_12
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    .line 472
    sget-object v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->NEW_LINE:[B

    invoke-virtual {v7, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->write([B)V

    .line 483
    invoke-virtual {v7}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->endClearText()V

    .line 485
    new-instance v3, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v3, v7}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v10, v3

    move-object/from16 v3, v18

    move-object v4, v3

    move-object v6, v4

    move-object v13, v6

    move-object v15, v13

    goto/16 :goto_17

    .line 476
    :cond_25
    sget-object v5, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->NEW_LINE:[B

    invoke-virtual {v7, v5}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->write([B)V

    .line 479
    sget-object v5, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->NEW_LINE:[B

    invoke-virtual {v2, v5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([B)V

    .line 480
    invoke-static {v3, v7, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->processLine(Ljava/lang/String;Lorg/bouncycastle/bcpg/ArmoredOutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;)V

    goto :goto_12

    :cond_26
    move-object/from16 v7, v28

    if-eqz v16, :cond_2b

    .line 486
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isDetachedSignature()Z

    move-result v10

    if-eqz v10, :cond_2b

    const/16 v10, 0x64

    .line 489
    invoke-virtual {v8, v5, v6, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 490
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_SIGNING_DETACHED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 492
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 495
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isEnableAsciiArmorOutput()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 498
    new-instance v10, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v6, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v10, v13}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 499
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_27

    const-string v13, "Version"

    .line 500
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->getVersionHeader()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v15}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    move-object v13, v10

    goto :goto_13

    :cond_28
    move-object v10, v6

    move-object/from16 v13, v18

    .line 505
    :goto_13
    new-instance v15, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v15, v10}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 509
    new-array v4, v4, [B

    const-wide/16 v26, 0x0

    .line 510
    :goto_14
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_2a

    move-object/from16 v41, v5

    const/4 v5, 0x0

    .line 513
    invoke-virtual {v2, v4, v5, v10}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    move-object/from16 v42, v4

    int-to-long v4, v10

    add-long v28, v26, v4

    .line 516
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v4

    const-wide/16 v19, 0x0

    cmp-long v10, v4, v19

    if-lez v10, :cond_29

    mul-long v4, v28, v23

    .line 517
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v26

    div-long v4, v4, v26

    long-to-int v4, v4

    const/16 v5, 0x64

    .line 518
    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->setProgress(II)V

    :cond_29
    move-wide/from16 v26, v28

    move-object/from16 v5, v41

    move-object/from16 v4, v42

    goto :goto_14

    :cond_2a
    move-object/from16 v3, v18

    move-object v4, v3

    move-object v10, v4

    goto/16 :goto_17

    :cond_2b
    if-eqz v16, :cond_39

    .line 523
    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isCleartextSignature()Z

    move-result v10

    if-nez v10, :cond_39

    invoke-virtual/range {v50 .. v50}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isDetachedSignature()Z

    move-result v10

    if-nez v10, :cond_39

    const/16 v10, 0x64

    .line 526
    invoke-virtual {v8, v5, v6, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 527
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_SIGNING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 529
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v15, :cond_2c

    .line 532
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_COMPRESSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v10, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 534
    new-instance v10, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {v10, v15}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 535
    new-instance v13, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v10, v14}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_15

    .line 537
    :cond_2c
    new-instance v13, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v13, v14}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v10, v18

    :goto_15
    const/4 v15, 0x0

    .line 540
    invoke-virtual {v2, v15}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateOnePassVersion(Z)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    .line 542
    new-instance v6, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    const/16 v34, 0x62

    .line 544
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getOriginalFilename()Ljava/lang/String;

    move-result-object v35

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    move-object/from16 v43, v10

    new-array v10, v4, [B

    move-object/from16 v32, v6

    move-object/from16 v33, v13

    move-object/from16 v36, v15

    move-object/from16 v37, v10

    .line 543
    invoke-virtual/range {v32 .. v37}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;Ljava/util/Date;[B)Ljava/io/OutputStream;

    move-result-object v10

    .line 549
    new-array v4, v4, [B

    const-wide/16 v26, 0x0

    .line 550
    :goto_16
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_2e

    const/4 v15, 0x0

    .line 551
    invoke-virtual {v10, v4, v15, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 553
    invoke-virtual {v2, v4, v15, v13}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    move-object/from16 v45, v4

    move-object/from16 v44, v5

    int-to-long v4, v13

    add-long v28, v26, v4

    .line 556
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v4

    const-wide/16 v19, 0x0

    cmp-long v13, v4, v19

    if-lez v13, :cond_2d

    mul-long v4, v28, v23

    .line 557
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v26

    div-long v4, v4, v26

    long-to-int v4, v4

    const/16 v5, 0x64

    .line 558
    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->setProgress(II)V

    :cond_2d
    move-wide/from16 v26, v28

    move-object/from16 v5, v44

    move-object/from16 v4, v45

    goto :goto_16

    .line 562
    :cond_2e
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->close()V

    move-object/from16 v4, v18

    move-object v6, v4

    move-object v13, v6

    move-object v15, v13

    move-object/from16 v3, v43

    :goto_17
    if-eqz v16, :cond_30

    const v5, 0x7f110c0f

    move/from16 v46, v1

    move-object/from16 v47, v14

    const/16 v1, 0x64

    const/16 v14, 0x5f

    .line 568
    invoke-virtual {v8, v5, v14, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V
    :try_end_13
    .catch Ljava/security/SignatureException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    if-eqz v15, :cond_2f

    .line 571
    :try_start_14
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    goto :goto_19

    :catch_10
    move-exception v0

    move-object v1, v0

    goto :goto_18

    .line 573
    :cond_2f
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/security/SignatureException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_19

    .line 577
    :goto_18
    :try_start_15
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_PENDING_NFC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 578
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    .line 579
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v13

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v15

    iget-object v3, v1, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashToSign:[B

    iget v1, v1, Lorg/bouncycastle/openpgp/operator/jcajce/NfcSyncPGPContentSignerBuilder$NfcInteractionNeeded;->hashAlgo:I

    .line 580
    invoke-virtual/range {v51 .. v51}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getSignatureTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v17, v3

    move/from16 v18, v1

    .line 578
    invoke-static/range {v13 .. v19}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createSecurityTokenSignOperation(JJ[BILjava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    invoke-direct {v2, v11, v1, v9}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v2

    :cond_30
    move/from16 v46, v1

    move-object/from16 v47, v14

    const/16 v1, 0x64

    .line 584
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v2, 0x0

    sub-long v14, v9, v21

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sign/encrypt time taken: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%.2f"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    move-object/from16 v48, v2

    long-to-double v1, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v10, v2

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v48

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_31

    .line 590
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;->close()V

    :cond_31
    if-eqz v4, :cond_32

    .line 594
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_32
    if-eqz v7, :cond_33

    .line 598
    invoke-virtual {v7}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    :cond_33
    if-eqz v13, :cond_34

    .line 602
    invoke-virtual {v13}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    :cond_34
    if-eqz v6, :cond_35

    .line 606
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_35
    if-eqz v47, :cond_36

    move-object/from16 v10, v47

    .line 609
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_36
    move-object/from16 v1, p1

    const/16 v2, 0x64

    if-eqz v1, :cond_37

    .line 612
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_37
    const v1, 0x7f110c00

    .line 626
    invoke-virtual {v8, v1, v2, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->updateProgress(III)V

    .line 628
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 629
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 630
    iput-wide v14, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mOperationTime:J

    if-eqz v6, :cond_38

    .line 633
    :try_start_16
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 634
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 638
    :catch_11
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->setDetachedSignature([B)V

    move/from16 v2, v46

    .line 640
    :try_start_17
    invoke-static {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object v2

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pgp-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->setMicAlgDigestName(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_17 .. :try_end_17} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    move-object v2, v0

    const-string v3, "error setting micalg parameter!"

    const/4 v4, 0x0

    .line 644
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    :goto_1a
    return-object v1

    .line 564
    :cond_39
    :try_start_18
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot clearsign in non-ascii armored text, this is a bug!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_18
    .catch Ljava/security/SignatureException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 622
    :catch_13
    :goto_1b
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 623
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 619
    :goto_1c
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_PGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 620
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 616
    :goto_1d
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_SIG:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 617
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v1, v2, v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;--->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processEncryptionMasterKeyId(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;J)Z
    .locals 19

    move-object/16 v16, p0

    move/16 v17, p1

    move-object/16 v18, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-wide/16 p2, p5

    move/from16 v0, v17

    move-object/from16 v1, v18

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, v16

    .line 653
    :try_start_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v6, p2

    :try_start_1
    invoke-virtual {v5, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v5

    .line 654
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getEncryptIds()Ljava/util/Set;

    move-result-object v8

    .line 655
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 656
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v11

    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->isHiddenRecipients()Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPubKeyEncryptionGenerator(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    .line 658
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_KEY_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v13, v0, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    .line 659
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 658
    invoke-virtual {v1, v11, v13, v14}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v4, v16

    goto :goto_0

    .line 661
    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_KEY_WARN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    .line 663
    invoke-static/range {p2 .. p3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    .line 662
    invoke-virtual {v1, v3, v4, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    return v2

    .line 667
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->isExpired()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_3
    :goto_1
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_REVOKED_OR_EXPIRED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_0
    move-wide/from16 v6, p2

    .line 672
    :catch_1
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_KEY_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 673
    invoke-static/range {p2 .. p3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 672
    invoke-virtual {v1, v3, v0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    return v2

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;--->processEncryptionMasterKeyId(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/bouncycastle/openpgp/PGPEncryptedDataGenerator;J)Z"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static processLine(Ljava/lang/String;Lorg/bouncycastle/bcpg/ArmoredOutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    if-nez v3, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 691
    array-length v1, v0

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 694
    aget-char v2, v0, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 700
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v4, :cond_3

    .line 703
    invoke-virtual {v4, v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->write([B)V

    .line 705
    :cond_3
    invoke-virtual {v5, v3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->update([B)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;--->processLine(Ljava/lang/String;Lorg/bouncycastle/bcpg/ArmoredOutputStream;Lorg/bouncycastle/openpgp/PGPSignatureGenerator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 95
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 168
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v1

    return-object v1

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;--->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 118
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 122
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_INPUT_BYTES:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 124
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    new-instance v3, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    invoke-direct {v3, v1, v4, v5}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_INPUT_URI:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 128
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v1

    .line 130
    :try_start_0
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openInputStreamSafe(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 131
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    invoke-static {v4, v1, v5, v6}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J

    move-result-wide v4

    .line 132
    iget-object v6, v7, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v6, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v6, v3, v4, v5, v1}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v6

    .line 143
    :goto_0
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    :try_start_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    .line 146
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_OUTPUT_URI_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 149
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v8, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v8

    .line 152
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    :goto_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v8

    invoke-direct {v7, v8, v9, v3, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v8

    .line 157
    instance-of v9, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v9, :cond_2

    .line 158
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 159
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->setOutputBytes([B)V

    :cond_2
    return-object v8

    .line 135
    :catch_1
    sget-object v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_PSE_ERROR_INPUT_URI_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v8, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 136
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    invoke-direct {v8, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v8

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;--->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
