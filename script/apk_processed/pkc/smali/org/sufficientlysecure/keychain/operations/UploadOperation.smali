.class public Lorg/sufficientlysecure/keychain/operations/UploadOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "UploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 64
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 66
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/UploadOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getPublicKeyringFromInput(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    :try_start_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v8, v9, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 119
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v9

    return-object v9

    .line 123
    :cond_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getUncachedKeyringBytes()[B

    move-result-object v9

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v9

    new-instance v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 124
    invoke-virtual {v9, v3, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v9

    .line 125
    const-class v3, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v3, "keyring bytes must contain public key ring!"

    invoke-direct {v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 128
    :cond_1
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v8, v3, v2, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 129
    check-cast v9, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v9

    .line 135
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const-string v8, "error uploading key"

    .line 136
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v9, v8, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 132
    :catch_1
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/UploadOperation;--->getPublicKeyringFromInput(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private uploadKeyRingToServer(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->fromHkpKeyserverAddress(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    :try_start_0
    new-instance v4, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v4, v0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    invoke-virtual {p0, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 157
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->checkCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_OPERATION_CANCELLED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v7, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 159
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    const/4 p0, 0x2

    invoke-direct {v7, p0, v6}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 184
    :try_start_2
    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v7

    :cond_1
    :try_start_3
    const-string v3, "UTF-8"

    .line 162
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v7, v3, p1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;->add(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    const v7, 0x7f110c2b

    .line 165
    invoke-virtual {v5, v7, v2, v2}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->updateProgress(III)V

    .line 167
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getMasterKeyId()J

    move-result-wide p0

    invoke-virtual {v7, p0, p1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->renewKeyLastUpdatedTime(JZ)V

    .line 169
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v7, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 170
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-direct {v7, v1, v6}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$AddKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    .line 184
    :try_start_4
    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v7

    :catchall_0
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v7

    move-object v3, v4

    goto :goto_0

    :catch_3
    move-exception v7

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v4, v3

    goto :goto_2

    :catch_4
    move-exception v7

    :goto_0
    :try_start_5
    const-string p0, "AddKeyException"

    .line 177
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v7, p0, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_UPLOAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v7, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 180
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-direct {v7, v2, v6}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 184
    :try_start_6
    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    return-object v7

    :catch_6
    move-exception v7

    :goto_1
    :try_start_7
    const-string p0, "IOException"

    .line 172
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v7, p0, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v7, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 175
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-direct {v7, v2, v6}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_4

    .line 184
    :try_start_8
    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 186
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    return-object v7

    :goto_2
    if-eqz v4, :cond_5

    .line 184
    :try_start_9
    invoke-virtual {v4}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 186
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 190
    :catch_8
    throw v6

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/UploadOperation;--->uploadKeyRingToServer(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 59
    check-cast p1, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->execute(Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 71
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 73
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    const/4 v1, 0x1

    const v3, 0x7f110c2b

    .line 74
    invoke-virtual {v7, v3, v2, v1}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->updateProgress(III)V

    .line 80
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 82
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInRequiredState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    invoke-direct {v8, v0, v1, v9}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v8

    .line 86
    :cond_0
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v3

    .line 89
    :cond_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_PROXY_TOR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v9, v4, :cond_3

    .line 94
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_PROXY_DIRECT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 96
    :cond_3
    sget-object v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_PROXY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v9, v1, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 101
    :goto_0
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v9

    .line 102
    sget-object v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_SERVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 105
    invoke-direct {v7, v0, v8}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->getPublicKeyringFromInput(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v8

    if-nez v8, :cond_4

    .line 107
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-direct {v8, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v8

    .line 110
    :cond_4
    invoke-direct {v7, v0, v9, v8, v3}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;->uploadKeyRingToServer(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    move-result-object v8

    return-object v8

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/UploadOperation;--->execute(Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/UploadResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
