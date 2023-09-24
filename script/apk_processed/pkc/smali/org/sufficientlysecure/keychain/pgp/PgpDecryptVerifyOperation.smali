.class public Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "PgpDecryptVerifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;,
        Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;",
        ">;"
    }
.end annotation


# static fields
.field public static final PASSPHRASE_FORMAT_NUMERIC9X4:Ljava/lang/String; = "numeric9x4"

.field public static final PROGRESS_STRIDE_MILLISECONDS:I = 0xc8


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 96
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private decryptVerify(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/InputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v43, p0

    move-object/16 v44, p1

    move-object/16 v45, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    move-object/from16 v7, v43

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v1, p3

    .line 306
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 308
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v10, 0x1

    add-int/lit8 v11, v1, 0x1

    const/16 v12, 0x64

    const/4 v13, 0x0

    const v1, 0x7f110c23

    .line 311
    invoke-virtual {v7, v1, v13, v12}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 314
    invoke-direct {v7, v0, v9, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->parseArmorHeaders(Ljava/io/InputStream;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;

    move-result-object v1

    .line 315
    iget-object v15, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->charset:Ljava/lang/String;

    .line 317
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;

    const/4 v14, 0x2

    const/16 v16, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_0

    .line 318
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredBackupCode()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const-string v2, "numeric9x4"

    .line 319
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual/range {v44 .. v44}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAutocryptSetup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseBegin:Ljava/lang/String;

    .line 322
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredNumeric9x4Autocrypt(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseBegin:Ljava/lang/String;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredNumeric9x4(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object/from16 v6, v16

    .line 328
    :goto_1
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;-><init>()V

    .line 333
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;-><init>()V

    .line 335
    new-instance v1, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 336
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 338
    instance-of v2, v0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    if-eqz v2, :cond_7

    .line 339
    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;

    move-object v0, v7

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    move-object v12, v4

    move-object v4, v9

    move-object v14, v5

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->handleEncryptedPacket(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/bouncycastle/openpgp/PGPEncryptedDataList;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    .line 343
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->errorResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    if-eqz v1, :cond_3

    .line 344
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->errorResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    return-object v0

    .line 348
    :cond_3
    invoke-virtual {v14, v10}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setEncrypted(Z)V

    .line 349
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->decryptedSessionKey:[B

    if-eqz v1, :cond_4

    .line 350
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->decryptedSessionKey:[B

    invoke-virtual {v14, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setSessionKey([B[B)V

    .line 351
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->decryptedSessionKey:[B

    move-object/from16 v3, v45

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v45

    move-object v1, v3

    .line 354
    :goto_2
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v2, :cond_5

    .line 355
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_SYMMETRIC_ENCRYPTION_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v9, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 356
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    invoke-virtual {v12, v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V

    .line 357
    invoke-virtual {v14, v10}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setInsecure(Z)V

    .line 361
    :cond_5
    iget v2, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->symmetricEncryptionAlgo:I

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    .line 362
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkSecureSymmetricAlgorithm(I[B)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 365
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_SYMMETRIC_ENCRYPTION_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v9, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 366
    invoke-virtual {v12, v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addSymmetricSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V

    .line 367
    invoke-virtual {v14, v10}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setInsecure(Z)V

    .line 370
    :cond_6
    new-instance v2, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->cleartextStream:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 371
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v42, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v1

    move-object/from16 v1, v42

    goto :goto_3

    :cond_7
    move-object/from16 v3, v45

    move-object v12, v4

    move-object v14, v5

    .line 374
    invoke-virtual {v14, v13}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setEncrypted(Z)V

    move-object/from16 v2, v16

    .line 382
    :goto_3
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PREP_STREAMS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v4, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 384
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v4, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    add-int/2addr v11, v10

    .line 388
    instance-of v4, v0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    if-eqz v4, :cond_8

    .line 389
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_DECOMPRESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v9, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 391
    check-cast v0, Lorg/bouncycastle/openpgp/PGPCompressedData;

    .line 392
    new-instance v1, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 393
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 396
    :cond_8
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;

    iget-object v5, v7, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 397
    invoke-virtual/range {v44 .. v44}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v12}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V

    add-int/lit8 v5, v11, 0x1

    .line 398
    invoke-virtual {v4, v0, v9, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->initializeOnePassSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 399
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 402
    :cond_9
    instance-of v6, v0, Lorg/bouncycastle/openpgp/PGPSignatureList;

    if-eqz v6, :cond_a

    .line 404
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 407
    :cond_a
    instance-of v6, v0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    if-nez v6, :cond_b

    .line 408
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INVALID_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v0, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 409
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v0, v10, v9}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 413
    :cond_b
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v6, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v5, 0x2

    add-int/2addr v11, v5

    .line 416
    check-cast v0, Lorg/bouncycastle/openpgp/PGPLiteralData;

    .line 418
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    .line 420
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v5, ""

    .line 424
    :cond_c
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getFormat()I

    move-result v6

    const/16 v13, 0x74

    if-eq v6, v13, :cond_f

    .line 425
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getFormat()I

    move-result v6

    const/16 v13, 0x75

    if-ne v6, v13, :cond_d

    goto :goto_4

    .line 429
    :cond_d
    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "."

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v6, "."

    .line 431
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 434
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v13

    .line 435
    invoke-virtual {v13, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    :cond_f
    :goto_4
    const-string v16, "text/plain"

    :cond_10
    :goto_5
    if-nez v16, :cond_11

    const-string v6, "application/octet-stream"

    goto :goto_6

    :cond_11
    move-object/from16 v6, v16

    :goto_6
    const-string v13, ""

    .line 442
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 443
    sget-object v13, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_FILE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v30, v15

    add-int/lit8 v15, v11, 0x1

    move-object/from16 v31, v3

    new-array v3, v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v3, v16

    invoke-virtual {v9, v13, v15, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_7

    :cond_12
    move-object/from16 v31, v3

    move-object/from16 v30, v15

    .line 445
    :goto_7
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_TIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v13, v11, 0x1

    new-array v15, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/util/Date;

    move-object/from16 v32, v14

    .line 446
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getModificationTime()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v34, v1

    move-object/from16 v33, v2

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v15, v2

    .line 445
    invoke-virtual {v9, v3, v13, v15}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 451
    invoke-virtual/range {v44 .. v44}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isDecryptMetadataOnly()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 453
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_MIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v6, v4, v2

    invoke-virtual {v9, v1, v13, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->findDataLength()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 459
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_SIZE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v3, v3, [Ljava/lang/Object;

    .line 460
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 459
    invoke-virtual {v9, v4, v13, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_8

    .line 462
    :cond_13
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_SIZE_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v2, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 465
    :goto_8
    new-instance v2, Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 467
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getModificationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    if-nez v1, :cond_14

    const-wide/16 v19, 0x0

    goto :goto_9

    .line 468
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v19, v0

    :goto_9
    move-object v14, v2

    move-object/from16 v1, v30

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v21}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 470
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_OK_META_ONLY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v0, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 471
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 473
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionMetadata(Lorg/openintents/openpgp/OpenPgpMetadata;)V

    return-object v0

    :cond_15
    move-object/from16 v1, v30

    .line 477
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 482
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getStreamPosition()J

    move-result-wide v18

    sub-long v20, v16, v18

    .line 483
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v3, v16, v18

    if-eqz v3, :cond_16

    const-wide/16 v16, 0x0

    cmp-long v3, v20, v16

    if-lez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    :goto_a
    const/16 v10, 0x2000

    .line 485
    new-array v10, v10, [B

    move-object/from16 v35, v12

    const/16 v12, 0x30

    .line 486
    new-array v12, v12, [B

    move/from16 v36, v11

    .line 487
    new-instance v11, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;

    invoke-direct {v11, v10, v6, v1}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f110bfd

    move-object/from16 v37, v5

    const/16 v5, 0x64

    const/4 v6, 0x1

    .line 489
    invoke-virtual {v7, v1, v6, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    move-object/from16 v38, v0

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v16, 0x0

    .line 493
    :goto_b
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1c

    if-eqz v8, :cond_17

    move-object/from16 v39, v2

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v8, v10, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_c

    :cond_17
    move-object/from16 v39, v2

    const/4 v2, 0x0

    .line 500
    :goto_c
    invoke-virtual {v4, v10, v2, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->updateSignatureData([BII)V

    .line 502
    invoke-virtual {v11, v2, v0}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->readBytesFromBuffer(II)V

    const-wide/16 v18, 0x0

    cmp-long v22, v5, v18

    if-nez v22, :cond_19

    .line 506
    array-length v2, v12

    if-le v0, v2, :cond_18

    array-length v2, v12

    :goto_d
    const/4 v8, 0x0

    goto :goto_e

    :cond_18
    move v2, v0

    goto :goto_d

    :goto_e
    invoke-static {v10, v8, v12, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    move-object/from16 v40, v10

    move-object/from16 v41, v11

    int-to-long v10, v0

    add-long v22, v5, v10

    if-eqz v3, :cond_1b

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v16, v5

    if-gez v0, :cond_1b

    .line 511
    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getStreamPosition()J

    move-result-wide v5

    const-wide/16 v10, 0x64

    mul-long v5, v5, v10

    div-long v5, v5, v20

    cmp-long v0, v5, v10

    if-lez v0, :cond_1a

    goto :goto_f

    :cond_1a
    move-wide v10, v5

    :goto_f
    int-to-long v5, v1

    cmp-long v0, v10, v5

    if-lez v0, :cond_1b

    long-to-int v0, v10

    const/16 v1, 0x64

    .line 517
    invoke-virtual {v7, v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(II)V

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0xc8

    add-long v10, v1, v5

    move v1, v0

    move-wide/from16 v16, v10

    :cond_1b
    move-wide/from16 v5, v22

    move-object/from16 v2, v39

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    move-object/from16 v8, p2

    goto :goto_b

    :cond_1c
    move-object/from16 v41, v11

    .line 524
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object/from16 v1, v34

    .line 526
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 527
    invoke-virtual {v4, v0, v9, v13}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->verifySignatureOnePass(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 530
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    :cond_1d
    const/4 v1, 0x1

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v14

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt time taken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    new-array v3, v1, [Ljava/lang/Object;

    long-to-double v14, v10

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s, for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "-----BEGIN PGP PUBLIC KEY BLOCK-----"

    .line 541
    invoke-static {v12, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->matchesPrefix([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-----BEGIN PGP PRIVATE KEY BLOCK-----"

    .line 542
    invoke-static {v12, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->matchesPrefix([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_10

    :cond_1e
    const-string v0, "-----BEGIN PGP MESSAGE-----"

    .line 544
    invoke-static {v12, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->matchesPrefix([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "application/pgp-message"

    move-object v1, v0

    move-object/from16 v0, v41

    goto :goto_11

    :cond_1f
    move-object/from16 v0, v41

    .line 548
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getGuessedMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_20
    :goto_10
    move-object/from16 v0, v41

    const-string v1, "application/pgp-keys"

    .line 550
    :goto_11
    new-instance v2, Lorg/openintents/openpgp/OpenPgpMetadata;

    move-object/from16 v3, v38

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getModificationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    .line 551
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/CharsetVerifier;->getCharset()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v22, v2

    move-object/from16 v23, v37

    move-object/from16 v24, v1

    move-wide/from16 v27, v5

    invoke-direct/range {v22 .. v29}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 553
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_META_MIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    invoke-virtual {v9, v0, v13, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v36, -0x1

    if-eqz v33, :cond_23

    move-object/from16 v1, v33

    .line 559
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptedData:Lorg/bouncycastle/openpgp/PGPEncryptedData;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPEncryptedData;->isIntegrityProtected()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 560
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptedData:Lorg/bouncycastle/openpgp/PGPEncryptedData;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPEncryptedData;->verify()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 561
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INTEGRITY_CHECK_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_12

    .line 563
    :cond_21
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INTEGRITY_CHECK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 564
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v9}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    :cond_22
    const/4 v3, 0x1

    .line 566
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_23

    .line 570
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_MDC_MISSING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v5, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 571
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;-><init>([B)V

    move-object/from16 v1, v35

    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addSymmetricSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V

    move-object/from16 v5, v32

    .line 572
    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->setInsecure(Z)V

    goto :goto_13

    :cond_23
    :goto_12
    move-object/from16 v5, v32

    move-object/from16 v1, v35

    :goto_13
    const v3, 0x7f110c00

    const/16 v6, 0x64

    .line 576
    invoke-virtual {v7, v3, v6, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 578
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 581
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v9}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    move-object/from16 v3, v31

    .line 582
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setCachedCryptoInputParcel(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 583
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V

    .line 584
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpDecryptionResultBuilder;->build()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionResult(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    .line 585
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->build()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSecurityProblemResult(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V

    .line 586
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionMetadata(Lorg/openintents/openpgp/OpenPgpMetadata;)V

    .line 587
    iput-wide v10, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOperationTime:J

    return-object v0

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->decryptVerify(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/InputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v12, "Detached signature present, verifying with this signature only"

    .line 164
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v12, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-direct {v10, v11, p0, p1, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->verifyDetachedSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v11

    return-object v11

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v7

    .line 171
    instance-of v2, v7, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    if-eqz v2, :cond_2

    .line 172
    move-object v2, v7

    check-cast v2, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASCII Armor Header Line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->getArmorHeaderLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-direct {v10, v11, v2, p1, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->verifyCleartextSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/bouncycastle/bcpg/ArmoredInputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v11

    return-object v11

    :cond_1
    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, p0

    move-object v8, p1

    .line 181
    invoke-direct/range {v3 .. v9}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->decryptVerify(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/InputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v11

    return-object v11

    :cond_2
    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, p0

    move-object v8, p1

    .line 184
    invoke-direct/range {v3 .. v9}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->decryptVerify(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/InputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v11
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/util/encoders/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v11

    const-string v12, "IOException"

    .line 200
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v11, v12, p0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 202
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v12, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 203
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v12, v0, v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v12

    :catch_1
    move-exception v11

    const-string v12, "data error"

    .line 195
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v11, v12, p0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 197
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v12, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 198
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v12, v0, v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v12

    :catch_2
    move-exception v11

    const-string v12, "PGPException"

    .line 188
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v11, v12, p0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 190
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_PGP_EXCEPTION:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11, v12, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 191
    new-instance v12, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v12, v0, v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v12

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getLengthWithoutSeparator([B)I
    .locals 5

    move-object/16 v2, p0

    .line 1094
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1096
    aget-byte v1, v2, v0

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->isLineEnding(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->getLengthWithoutSeparator([B)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getLineSeparator()[B
    .locals 4

    const-string v0, "line.separator"

    .line 1108
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->getLineSeparator()[B"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private handleEncryptedPacket(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/bouncycastle/openpgp/PGPEncryptedDataList;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v25, p0

    move-object/16 v26, p1

    move-object/16 v27, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 597
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$1;)V

    .line 607
    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;

    const-string v8, "BC"

    .line 608
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getCryptoData()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object v8

    .line 614
    new-instance v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;

    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 617
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 618
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 619
    instance-of v6, v15, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    if-eqz v6, :cond_b

    .line 622
    move-object v6, v15

    check-cast v6, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    .line 623
    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v13

    .line 625
    sget-object v15, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASYM:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v17, v12

    new-array v12, v11, [Ljava/lang/Object;

    .line 626
    invoke-static {v13, v14}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v10

    .line 625
    invoke-virtual {v2, v15, v3, v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {v7, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->hasCachedSessionData(Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v0, v6

    move v14, v12

    move-object/from16 v12, v17

    const/4 v6, 0x0

    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 637
    :cond_0
    :try_start_0
    iget-object v15, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v15, v13, v14}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v15

    if-nez v15, :cond_1

    .line 639
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASKIP_NO_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v2, v6, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_2
    move/from16 v20, v12

    goto/16 :goto_3

    .line 644
    :cond_1
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 645
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encData.getKeyID(): "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v6

    const/4 v11, 0x0

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v10, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAllowedKeyIds: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6, v11}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "masterKeyId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6, v11}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 652
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->skippedDisallowedEncryptionKeys:Ljava/util/HashSet;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASKIP_NOT_ALLOWED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_2

    :cond_2
    move-object/from16 v19, v6

    .line 658
    :cond_3
    iget-object v6, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v6, v13, v14}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v6

    .line 659
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->isUsable()Z

    move-result v10

    if-nez v10, :cond_4

    .line 661
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASKIP_UNAVAILABLE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    move v14, v12

    goto/16 :goto_7

    .line 666
    :cond_4
    iget-object v10, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v20, v12

    .line 667
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v10

    .line 668
    invoke-virtual {v10, v13, v14}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getSecretKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;

    move-result-object v10

    .line 670
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canEncrypt()Z

    move-result v11

    if-nez v11, :cond_5

    .line 671
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASKIP_BAD_FLAGS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_3
    move-object/from16 v12, v17

    goto/16 :goto_6

    .line 675
    :cond_5
    sget-object v11, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v6, v11, :cond_6

    const/4 v12, 0x0

    goto :goto_5

    .line 677
    :cond_6
    sget-object v11, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v6, v11, :cond_7

    .line 678
    new-instance v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v11, ""

    invoke-direct {v6, v11}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object v12, v6

    goto :goto_5

    .line 679
    :cond_7
    invoke-virtual {v1, v13, v14}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->hasPassphraseForSubkey(J)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 680
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v6
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 685
    :cond_8
    :try_start_2
    invoke-virtual {v0, v13, v14}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->getCachedPassphrase(J)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v12
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 686
    :try_start_3
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PASS_CACHED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v2, v6, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_3
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v12, :cond_9

    .line 694
    :try_start_4
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PENDING_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v6, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 695
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v13, v14}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->add(JJ)V

    goto :goto_6

    .line 702
    :cond_9
    :goto_5
    invoke-static {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkForSecurityProblems(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 704
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v2, v11, v13}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 705
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    :cond_a
    move-object v15, v10

    move-object/from16 v0, v19

    move/from16 v14, v20

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto/16 :goto_c

    :catch_0
    move-object/from16 v12, v17

    .line 688
    :catch_1
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 689
    new-instance v6, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v10, 0x1

    invoke-direct {v6, v10, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v6
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v6

    :catch_2
    move/from16 v20, v12

    :catch_3
    move-object/from16 v12, v17

    .line 715
    :catch_4
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ASKIP_NO_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_6
    move/from16 v14, v20

    goto :goto_8

    :cond_b
    move-object/from16 v17, v12

    .line 722
    instance-of v6, v15, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    if-eqz v6, :cond_10

    .line 725
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_SYM:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v6, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 727
    invoke-virtual/range {v26 .. v26}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAllowSymmetricDecryption()Z

    move-result v6

    if-nez v6, :cond_c

    .line 728
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_SYM_SKIP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v2, v6, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_7
    move-object/from16 v12, v17

    :goto_8
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 738
    :cond_c
    move-object v6, v15

    check-cast v6, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    .line 742
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->hasPassphraseForSymmetric()Z

    move-result v10

    if-nez v10, :cond_e

    const-wide/16 v10, -0x1

    .line 745
    :try_start_5
    invoke-virtual {v0, v10, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->getCachedPassphrase(J)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v12
    :try_end_5
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_5 .. :try_end_5} :catch_5

    .line 746
    :try_start_6
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PASS_CACHED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v2, v10, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_6
    .catch Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    :catch_5
    move-object/from16 v12, v17

    :catch_6
    :goto_9
    if-nez v12, :cond_f

    .line 752
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PENDING_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v2, v6, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    if-eqz p3, :cond_d

    move-object/from16 v3, p3

    goto :goto_a

    .line 754
    :cond_d
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSymmetricPassphrase()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    .line 755
    :goto_a
    new-instance v4, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v4, v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    invoke-virtual {v5, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v1

    return-object v1

    .line 761
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v12

    :cond_f
    const/4 v0, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v12, v17

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v17, v12

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    const/4 v15, 0x0

    :goto_c
    if-nez v11, :cond_12

    .line 769
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_12

    .line 770
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    .line 774
    :cond_12
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 775
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v7

    .line 776
    instance-of v7, v9, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    if-eqz v7, :cond_13

    .line 777
    check-cast v9, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    move-object/from16 v22, v8

    .line 778
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v7

    .line 779
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_TRAIL_ASYM:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-object/from16 v24, v0

    move/from16 v23, v13

    const/4 v13, 0x1

    new-array v0, v13, [Ljava/lang/Object;

    .line 780
    invoke-static {v7, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 779
    invoke-virtual {v2, v9, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_e

    :cond_13
    move-object/from16 v24, v0

    move-object/from16 v22, v8

    move/from16 v23, v13

    .line 781
    instance-of v0, v9, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    if-eqz v0, :cond_14

    .line 782
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_TRAIL_SYM:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_e

    .line 784
    :cond_14
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_TRAIL_UNKNOWN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_e
    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v13, v23

    move-object/from16 v0, v24

    goto :goto_d

    :cond_15
    move-object/from16 v24, v0

    move-object/from16 v21, v7

    move/from16 v23, v13

    if-eqz v10, :cond_17

    .line 790
    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    const-string v7, "BC"

    .line 791
    invoke-virtual {v0, v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v0

    .line 792
    new-instance v7, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    invoke-direct {v7, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    const-string v0, "BC"

    .line 793
    invoke-virtual {v7, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v7

    .line 793
    invoke-virtual {v0, v7}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;

    move-result-object v0

    .line 797
    :try_start_7
    invoke-virtual {v6, v0}, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->getDataStream(Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->cleartextStream:Ljava/io/InputStream;
    :try_end_7
    .catch Lorg/bouncycastle/openpgp/PGPDataValidationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 805
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptedData:Lorg/bouncycastle/openpgp/PGPEncryptedData;

    .line 807
    invoke-virtual {v6, v0}, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;->getSymmetricAlgorithm(Lorg/bouncycastle/openpgp/operator/PBEDataDecryptorFactory;)I

    move-result v0

    iput v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->symmetricEncryptionAlgo:I

    goto/16 :goto_11

    .line 799
    :catch_7
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_SYM_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    if-eqz p3, :cond_16

    move-object/from16 v0, p3

    goto :goto_f

    .line 801
    :cond_16
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredSymmetricPassphrase()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    .line 802
    :goto_f
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v3, v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    :cond_17
    if-eqz v11, :cond_1d

    if-eqz v14, :cond_19

    move-object/from16 v7, v21

    :cond_18
    move-object/from16 v6, v24

    goto :goto_10

    .line 814
    :cond_19
    :try_start_8
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_UNLOCKING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 815
    invoke-virtual {v15, v12}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 816
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_BAD_PASSPHRASE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 817
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    :try_end_8
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_8 .. :try_end_8} :catch_9

    const/4 v1, 0x1

    :try_start_9
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_9
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_9 .. :try_end_9} :catch_a

    :try_start_a
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0
    :try_end_a
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_a .. :try_end_a} :catch_9

    return-object v0

    .line 824
    :cond_1a
    invoke-virtual {v15, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getCachingDecryptorFactory(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;

    move-result-object v7

    .line 828
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->canDecrypt()Z

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v6, v24

    .line 829
    invoke-virtual {v7, v6}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->hasCachedSessionData(Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 831
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PENDING_NFC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2, v0, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 832
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 834
    invoke-virtual {v15}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getRing()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getMasterKeyId()J

    move-result-wide v3

    .line 835
    invoke-virtual {v15}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getKeyId()J

    move-result-wide v7

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getSessionKey()[[B

    move-result-object v6

    const/4 v9, 0x0

    aget-object v6, v6, v9

    .line 833
    invoke-static {v3, v4, v7, v8, v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createSecurityTokenDecryptOperation(JJ[B)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 832
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    .line 841
    :cond_1b
    :goto_10
    :try_start_b
    invoke-virtual {v6, v7}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getDataStream(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->cleartextStream:Ljava/io/InputStream;
    :try_end_b
    .catch Lorg/bouncycastle/openpgp/PGPKeyValidationException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_8

    .line 847
    invoke-virtual {v6, v7}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;->getSymmetricAlgorithm(Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)I

    move-result v0

    iput v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->symmetricEncryptionAlgo:I

    .line 848
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->encryptedData:Lorg/bouncycastle/openpgp/PGPEncryptedData;

    .line 850
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/operator/jcajce/CachingDataDecryptorFactory;->getCachedSessionKeys()Ljava/util/Map;

    move-result-object v0

    .line 851
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1c

    .line 852
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 853
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->sessionKey:[B

    .line 854
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->decryptedSessionKey:[B

    :cond_1c
    :goto_11
    return-object v5

    .line 843
    :catch_8
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_CORRUPT_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v1, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 844
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    :catch_9
    const/4 v1, 0x1

    .line 820
    :catch_a
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_EXTRACT_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 821
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v1, 0x1

    if-nez v23, :cond_1e

    .line 859
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 860
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    .line 863
    :cond_1e
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->skippedDisallowedEncryptionKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 864
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 865
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->skippedDisallowedEncryptionKeys:Ljava/util/HashSet;

    .line 866
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getUnboxedLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 867
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/16 v3, 0x21

    invoke-direct {v1, v3, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[J)V

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    .line 871
    :cond_1f
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 872
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;->with(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;

    move-result-object v0

    return-object v0

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->handleEncryptedPacket(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/bouncycastle/openpgp/PGPEncryptedDataList;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;ILorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$EncryptStreamResult;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isLineEnding(B)Z
    .locals 4

    move/16 v1, p0

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->isLineEnding(B)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static matchesPrefix([BLjava/lang/String;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 1115
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1116
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1117
    aget-byte v3, v5, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    return v5

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->matchesPrefix([BLjava/lang/String;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private parseArmorHeaders(Ljava/io/InputStream;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move/16 p0, p3

    .line 241
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$1;)V

    .line 245
    instance-of v1, v12, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    if-eqz v1, :cond_b

    .line 246
    check-cast v12, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    .line 247
    invoke-virtual {v12}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->getArmorHeaders()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 248
    invoke-virtual {v12}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->getArmorHeaders()[Ljava/lang/String;

    move-result-object v12

    array-length v1, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_7

    aget-object v5, v12, v3

    const-string v6, ":"

    const/4 v7, 0x2

    .line 249
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 250
    array-length v6, v5

    if-ne v6, v7, :cond_6

    aget-object v6, v5, v2

    .line 251
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    aget-object v6, v5, v4

    .line 252
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_3

    .line 256
    :cond_0
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x7aa10ee6

    if-eq v9, v10, :cond_4

    const v7, 0x4104f26

    if-eq v9, v7, :cond_3

    const v7, 0x2c0d614c

    if-eq v9, v7, :cond_2

    const v7, 0x325b08d6

    if-eq v9, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "backupversion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const-string v7, "charset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const-string v7, "passphrase-begin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    goto :goto_2

    :cond_4
    const-string v9, "passphrase-format"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 274
    :pswitch_0
    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseBegin:Ljava/lang/String;

    goto :goto_3

    .line 270
    :pswitch_1
    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseFormat:Ljava/lang/String;

    goto :goto_3

    .line 263
    :pswitch_2
    :try_start_0
    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 258
    :pswitch_3
    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->charset:Ljava/lang/String;

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object v12, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->charset:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 283
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CHARSET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->charset:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v13, v12, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 285
    :cond_8
    iget-object v12, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;

    if-eqz v12, :cond_9

    .line 286
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_BACKUP_VERSION:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->backupVersion:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v13, v12, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 288
    :cond_9
    iget-object v12, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseFormat:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 289
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PASSPHRASE_FORMAT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseFormat:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v13, v12, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 291
    :cond_a
    iget-object v12, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseBegin:Ljava/lang/String;

    if-eqz v12, :cond_b

    .line 292
    sget-object v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_PASSPHRASE_BEGIN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;->passphraseBegin:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v13, v12, p0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    :cond_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->parseArmorHeaders(Ljava/io/InputStream;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation$ArmorHeaders;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 1062
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v3

    .line 1067
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1072
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 1069
    :cond_2
    :goto_0
    invoke-static {v2, v0, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v3

    :goto_1
    if-gez v0, :cond_3

    const/4 v3, -0x1

    :cond_3
    return v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 1044
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1049
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    .line 1050
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1052
    :cond_1
    invoke-static {v2, v0, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    return v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 1083
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v3, v1, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 1086
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1087
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_0
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private verifyCleartextSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/bouncycastle/bcpg/ArmoredInputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v21, p0

    move-object/16 v22, p1

    move-object/16 v23, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 890
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 894
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x64

    const/4 v8, 0x0

    const v9, 0x7f110c23

    .line 896
    invoke-virtual {v1, v9, v8, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 898
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 899
    invoke-static {v9, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result v10

    .line 900
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->getLineSeparator()[B

    move-result-object v11

    .line 902
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 903
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->getLengthWithoutSeparator([B)I

    move-result v13

    invoke-virtual {v6, v12, v8, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 904
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    .line 906
    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/bcpg/ArmoredInputStream;->isClearText()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 907
    invoke-static {v9, v10, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v10

    .line 908
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 909
    invoke-static {v12}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->getLengthWithoutSeparator([B)I

    move-result v13

    invoke-virtual {v6, v12, v8, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 910
    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 914
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    if-eqz v3, :cond_1

    .line 918
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->close()V

    :cond_1
    const v3, 0x7f110c22

    const/16 v9, 0x3c

    .line 922
    invoke-virtual {v1, v3, v9, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 923
    new-instance v3, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    invoke-direct {v3, v2}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 925
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;-><init>()V

    .line 926
    new-instance v9, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;

    iget-object v10, v1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V

    .line 929
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v4, 0x1

    .line 930
    invoke-virtual {v9, v3, v5, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->initializeSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result v3

    const/4 v10, 0x1

    if-nez v3, :cond_2

    .line 931
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INVALID_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5, v2, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 932
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v2, v10, v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    .line 935
    :cond_2
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f110c2e

    const/16 v11, 0x5a

    .line 937
    :try_start_0
    invoke-virtual {v1, v3, v11, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 939
    invoke-virtual {v9, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->updateSignatureWithCleartext([B)V

    .line 940
    invoke-virtual {v9, v5, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->verifySignature(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v3, "SignatureException"

    .line 943
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v2, v10, v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v2

    :cond_3
    :goto_1
    const v3, 0x7f110c00

    .line 948
    invoke-virtual {v1, v3, v7, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 950
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 952
    new-instance v3, Lorg/openintents/openpgp/OpenPgpMetadata;

    const-string v14, ""

    const-string v15, "text/plain"

    const-wide/16 v16, -0x1

    array-length v4, v6

    int-to-long v6, v4

    const-string v20, "utf-8"

    move-object v13, v3

    move-wide/from16 v18, v6

    invoke-direct/range {v13 .. v20}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 954
    new-instance v4, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v4, v8, v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 955
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V

    .line 956
    new-instance v5, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-direct {v5, v12}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I)V

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionResult(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    .line 958
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->build()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSecurityProblemResult(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V

    .line 959
    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionMetadata(Lorg/openintents/openpgp/OpenPgpMetadata;)V

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->verifyCleartextSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/bouncycastle/bcpg/ArmoredInputStream;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private verifyDetachedSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v20, p0

    move-object/16 v21, p1

    move-object/16 v22, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 968
    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x64

    const v6, 0x7f110c22

    .line 970
    invoke-virtual {v0, v6, v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 971
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 972
    invoke-static {v6}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    .line 974
    new-instance v7, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    invoke-direct {v7, v6}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 976
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v6

    .line 977
    instance-of v7, v6, Lorg/bouncycastle/openpgp/PGPCompressedData;

    if-eqz v7, :cond_0

    .line 978
    check-cast v6, Lorg/bouncycastle/openpgp/PGPCompressedData;

    .line 979
    new-instance v7, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 980
    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v6

    .line 983
    :cond_0
    new-instance v7, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;-><init>()V

    .line 984
    new-instance v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;

    iget-object v9, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual/range {v21 .. v21}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V

    add-int/lit8 v9, v2, 0x1

    .line 987
    invoke-virtual {v8, v6, v3, v9}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->initializeSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 988
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INVALID_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 989
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 992
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f110c23

    const/16 v9, 0x3c

    .line 994
    invoke-virtual {v0, v6, v9, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 996
    new-instance v6, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const/16 v11, 0x5a

    invoke-direct {v6, v10, v9, v11, v5}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;III)V

    .line 998
    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/util/InputData;->getSize()J

    move-result-wide v9

    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/util/InputData;->getStreamPosition()J

    move-result-wide v12

    sub-long v14, v9, v12

    const/high16 v9, 0x10000

    .line 1000
    new-array v9, v9, [B

    .line 1001
    invoke-virtual/range {v22 .. v22}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-wide/16 v12, 0x0

    move-wide/from16 v16, v12

    .line 1002
    :goto_0
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    if-eqz v1, :cond_2

    .line 1004
    invoke-virtual {v1, v9, v4, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 1008
    :cond_2
    invoke-virtual {v8, v9, v4, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->updateSignatureData([BII)V

    int-to-long v4, v11

    add-long v18, v16, v4

    cmp-long v4, v14, v12

    if-lez v4, :cond_4

    const-wide/16 v4, 0x64

    mul-long v16, v18, v4

    .line 1012
    div-long v16, v16, v14

    cmp-long v11, v16, v4

    if-lez v11, :cond_3

    goto :goto_1

    :cond_3
    move-wide/from16 v4, v16

    :goto_1
    long-to-int v4, v4

    const/16 v5, 0x64

    .line 1017
    invoke-virtual {v6, v4, v5}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;->setProgress(II)V

    goto :goto_2

    :cond_4
    const/16 v5, 0x64

    :goto_2
    move-wide/from16 v16, v18

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const v1, 0x7f110c2e

    const/16 v4, 0x5a

    .line 1021
    invoke-virtual {v0, v1, v4, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 1022
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_CHECK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1024
    invoke-virtual {v8, v3, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->verifySignature(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V

    :cond_6
    const v1, 0x7f110c00

    .line 1028
    invoke-virtual {v0, v1, v5, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->updateProgress(III)V

    .line 1030
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 1034
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 1035
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V

    .line 1036
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->build()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSecurityProblemResult(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V

    .line 1037
    new-instance v2, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setDecryptionResult(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    return-object v1

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->verifyDetachedSignature(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;I)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputBytes()[B

    move-result-object v2

    .line 109
    new-instance v5, Lorg/sufficientlysecure/keychain/util/InputData;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v2, v2

    int-to-long v7, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J

    move-result-wide v5

    .line 114
    new-instance v7, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v7, v2, v5, v6}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v7

    .line 128
    :goto_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 129
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_1

    .line 132
    :cond_1
    :try_start_1
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_1
    invoke-direct {v9, v10, v11, v5, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v10

    .line 142
    instance-of v11, v2, Ljava/io/ByteArrayOutputStream;

    if-eqz v11, :cond_2

    .line 143
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 144
    invoke-virtual {v10, v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setOutputBytes([B)V

    .line 147
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v0

    iput-wide v7, v10, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOperationTime:J

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "total time taken: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%.2f"

    new-array v1, v4, [Ljava/lang/Object;

    iget-wide v4, v10, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOperationTime:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v11, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v10

    :catch_0
    move-exception v11

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output URI could not be opened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v11, v10, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 136
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 137
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v11, v4, v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v11

    :catch_1
    move-exception v11

    const-string v0, "Input URI could not be opened: %s"

    .line 121
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v1, v3

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 123
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INPUT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 124
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v11, v4, v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v11

    :catch_2
    move-exception v11

    const-string v0, "Access denied for input URI: %s"

    .line 116
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v1, v3

    invoke-static {v11, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 118
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_INPUT_DENIED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10, v11, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 119
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-direct {v11, v4, v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v11

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 156
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->executeInternal(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v1

    return-object v1

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;--->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 90
    check-cast p1, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object p1

    return-object p1
.end method
