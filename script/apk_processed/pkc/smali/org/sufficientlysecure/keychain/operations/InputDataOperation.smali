.class public Lorg/sufficientlysecure/keychain/operations/InputDataOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "InputDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/service/InputDataParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private final buf:[B

.field mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

.field mSignedDataUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 75
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    const/16 v1, 0x100

    .line 72
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->buf:[B

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;)[B
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->buf:[B

    return-object p0
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/InputDataParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;
    .locals 20

    move-object/16 v17, p0

    move-object/16 v18, p1

    move-object/16 v19, p2

    move-object/from16 v8, v17

    .line 85
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 87
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 93
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v1

    .line 95
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getMimeDecode()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "no decryption or mime decoding, this is probably a bug"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_4

    .line 101
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_OPENPGP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v3, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 103
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v3, v4, v5, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 106
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 108
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->toBuilder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    .line 109
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setInputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setOutputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v1

    move-object/from16 v7, v19

    .line 113
    invoke-virtual {v3, v1, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->isPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-direct {v2, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V

    return-object v2

    .line 117
    :cond_1
    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->addByMerge(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 119
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->success()Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-direct {v1, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 124
    :cond_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v3

    .line 126
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/openintents/openpgp/OpenPgpMetadata;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->setName(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    .line 127
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->setMimeType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    :cond_3
    move-object v12, v1

    move-object v13, v4

    goto :goto_0

    :cond_4
    move-object/from16 v7, v19

    .line 131
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v4

    move-object v13, v4

    move-object v12, v10

    :goto_0
    if-eqz v12, :cond_6

    .line 136
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 137
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpMetadata;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_6

    const-string v3, "multipart/"

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "text/"

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "application/octet-stream"

    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_c

    .line 150
    invoke-virtual/range {v18 .. v18}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getMimeDecode()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_5

    .line 164
    :cond_7
    new-instance v14, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    move-object v1, v10

    check-cast v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-direct {v14, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 166
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {v14, v11}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentDecoding(Z)V

    .line 170
    invoke-virtual {v14}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setRecurse()V

    .line 171
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;

    move-object v1, v5

    move-object v2, v8

    move-object v3, v9

    move-object v4, v15

    move-object v10, v5

    move-object v5, v6

    move-object/from16 v16, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation$1;-><init>(Lorg/sufficientlysecure/keychain/operations/InputDataOperation;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/apache/james/mime4j/parser/MimeStreamParser;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    invoke-virtual {v14, v10}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    const/4 v7, 0x2

    .line 379
    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 384
    :try_start_1
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 385
    invoke-virtual {v14, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 387
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    if-eqz v12, :cond_8

    .line 390
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V

    goto :goto_1

    .line 392
    :cond_8
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-object v12, v1

    .line 396
    :goto_1
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataUri:Landroid/net/Uri;
    :try_end_1
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 397
    :try_start_2
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 399
    iput-object v3, v8, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->mSignedDataResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 400
    invoke-virtual {v14, v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_2
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v13, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v0

    .line 405
    :try_start_3
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 406
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :cond_9
    :goto_3
    move-object v4, v12

    .line 410
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 411
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 413
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 414
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    const/4 v2, 0x0

    move-object v1, v10

    move-object v3, v9

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v10

    .line 418
    :cond_a
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_MIME_NONE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    if-eqz v4, :cond_b

    .line 422
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v1

    goto :goto_4

    .line 426
    :cond_b
    new-instance v1, Lorg/openintents/openpgp/OpenPgpMetadata;

    invoke-direct {v1}, Lorg/openintents/openpgp/OpenPgpMetadata;-><init>()V

    .line 429
    :goto_4
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v16

    .line 430
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 433
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    const/4 v2, 0x0

    move-object v1, v10

    move-object v3, v9

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v10

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 439
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 440
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 441
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-direct {v1, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 436
    :catch_3
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 437
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-direct {v1, v11, v9}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v1

    .line 152
    :cond_c
    :goto_5
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_SKIP_MIME:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DATA_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 160
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, v9

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/InputDataOperation;--->execute(Lorg/sufficientlysecure/keychain/service/InputDataParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 70
    check-cast p1, Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;->execute(Lorg/sufficientlysecure/keychain/service/InputDataParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    move-result-object p1

    return-object p1
.end method
