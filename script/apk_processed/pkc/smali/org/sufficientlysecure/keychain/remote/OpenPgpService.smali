.class public Lorg/sufficientlysecure/keychain/remote/OpenPgpService;
.super Landroid/app/Service;
.source "OpenPgpService.java"


# static fields
.field public static final API_VERSION_WITHOUT_SIGNATURE_ONLY_FLAG:I = 0x8

.field public static final API_VERSION_WITH_AUTOCRYPT:I = 0xc

.field public static final API_VERSION_WITH_DECRYPTION_RESULT:I = 0x8

.field public static final API_VERSION_WITH_KEY_INVALID_INSECURE:I = 0x8

.field public static final API_VERSION_WITH_RESULT_NO_SIGNATURE:I = 0x8

.field public static final SUPPORTED_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

.field private mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

.field private mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

.field private final mBinder:Lorg/openintents/openpgp/IOpenPgpService$Stub;

.field private mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

.field private mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    .line 96
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x7

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->SUPPORTED_VERSIONS:Ljava/util/List;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 89
    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 969
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;-><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mBinder:Lorg/openintents/openpgp/IOpenPgpService$Stub;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private autocryptKeyTransferImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "key_ids"

    .line 822
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 824
    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAllowedKeyIds()Ljava/util/HashSet;

    move-result-object v2

    .line 825
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    aget-wide v6, v1, v4

    .line 826
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 827
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 828
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    .line 829
    iget-object v3, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    new-array v4, v5, [J

    aput-wide v6, v4, v0

    .line 830
    invoke-virtual {v3, v10, v1, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createRequestKeyPermissionPendingIntent(Landroid/content/Intent;Ljava/lang/String;[J)Landroid/app/PendingIntent;

    move-result-object v10

    .line 829
    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "result_code"

    const/4 v1, 0x2

    .line 832
    invoke-virtual {v11, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v11

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "custom_headers"

    .line 837
    invoke-virtual {v10, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 839
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->generateNumeric9x4Passphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    .line 840
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    .line 842
    invoke-static {v1, v10}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->createExportAutocryptSetupMessage([JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v10

    .line 843
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/BackupOperation;

    iget-object v4, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    const/4 v6, 0x0

    invoke-direct {v1, v9, v4, v6}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 844
    invoke-virtual {v1, v10, v3, v11}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    move-result-object v10

    .line 846
    iget-object v11, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 847
    invoke-virtual {v11, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createDisplayTransferCodePendingIntent(Lorg/sufficientlysecure/keychain/util/Passphrase;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 849
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 850
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    .line 851
    invoke-virtual {v10, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent"

    .line 852
    invoke-virtual {v10, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v10

    .line 856
    :cond_2
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v10

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v10

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 857
    invoke-direct {v9, v0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v10

    .line 860
    invoke-static {v10}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    .line 861
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    return-object v10

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->autocryptKeyTransferImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private autocryptQueryImpl(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    .line 208
    :try_start_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 209
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v4, v0, v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->returnKeyIdsFromIntent(Landroid/content/Intent;ZLjava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v4

    .line 210
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAutocryptStatusResult(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    const-string v1, "encryptAndSignImpl"

    .line 214
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->autocryptQueryImpl(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private backupImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "key_ids"

    .line 786
    invoke-virtual {v7, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    const-string v2, "backup_secret"

    .line 787
    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "ascii_armor"

    const/4 v4, 0x1

    .line 788
    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 790
    invoke-static {v6, v7}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v5

    if-nez v5, :cond_0

    .line 792
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v3, "intent"

    .line 793
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v4, v7, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createBackupPendingIntent(Landroid/content/Intent;[JZ)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "result_code"

    const/4 v1, 0x2

    .line 794
    invoke-virtual {v8, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v8

    :cond_0
    const/4 v7, 0x0

    .line 801
    invoke-static {v1, v2, v4, v3, v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->create([JZZZLandroid/net/Uri;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v1

    .line 802
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/BackupOperation;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v2, v6, v3, v7}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 803
    invoke-virtual {v2, v1, v5, v8}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    move-result-object v7

    .line 805
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->success()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 806
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "result_code"

    .line 807
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v7

    .line 811
    :cond_1
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v7

    iget-object v7, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-direct {v6, v0, v7}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v7

    const-string v8, "backupImpl"

    .line 815
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v7, v8, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->backupImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkPermissionImpl(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 901
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isAllowedOrReturnIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    .line 905
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "result_code"

    const/4 v1, 0x1

    .line 906
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->checkPermissionImpl(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    const/4 v0, 0x0

    if-nez v8, :cond_0

    .line 935
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 936
    new-instance v1, Lorg/openintents/openpgp/OpenPgpError;

    const-string v2, "params Bundle required!"

    invoke-direct {v1, v0, v2}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    const-string v2, "error"

    .line 937
    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "result_code"

    .line 938
    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v8

    .line 944
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->SUPPORTED_VERSIONS:Ljava/util/List;

    const-string v2, "api_version"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 945
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 946
    new-instance v2, Lorg/openintents/openpgp/OpenPgpError;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incompatible API versions!\nused API version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "api_version"

    .line 948
    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nsupported API versions: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->SUPPORTED_VERSIONS:Ljava/util/List;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    const-string v8, "error"

    .line 950
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "result_code"

    .line 951
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1

    :cond_1
    const-string v0, "org.openintents.openpgp.action.GET_SIGN_KEY_ID"

    .line 956
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 961
    :cond_2
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isAllowedOrReturnIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    return-object v8

    :cond_3
    return-object v1

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move-object/16 v5, p2

    .line 685
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    .line 686
    new-instance v2, Lorg/openintents/openpgp/OpenPgpError;

    invoke-direct {v2, v4, v5}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "result_code"

    const/4 v5, 0x0

    .line 688
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static createMessengerProgressable(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/pgp/Progressable;
    .locals 4

    move-object/16 v1, p0

    .line 1104
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;-><init>(Landroid/os/Messenger;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->createMessengerProgressable(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/pgp/Progressable;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private decryptAndVerifyImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;ZLorg/sufficientlysecure/keychain/pgp/Progressable;)Landroid/content/Intent;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p0, v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "api_version"

    const/4 v3, -0x1

    .line 380
    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 382
    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    if-nez v3, :cond_1

    .line 384
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    :cond_1
    const-string v4, "passphrase"

    .line 387
    invoke-virtual {v9, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    new-instance v4, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v5, "passphrase"

    .line 389
    invoke-virtual {v9, v5}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>([C)V

    .line 388
    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    :cond_2
    const-string v0, "decryption_result"

    .line 391
    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "decryption_result"

    .line 392
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->hasDecryptedSessionKey()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getSessionKey()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getDecryptedSessionKey()[B

    move-result-object v0

    .line 394
    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withCryptoData([B[B)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    :cond_3
    const-string v0, "detached_signature"

    .line 399
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "sender_address"

    .line 400
    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->updateAutocryptPeerImpl(Landroid/content/Intent;)Landroid/content/Intent;

    .line 404
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v5, v8, v6, p2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    const-string p2, "data_length"

    const-wide/16 v6, -0x1

    .line 406
    invoke-virtual {v9, p2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 407
    new-instance p2, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {p2, v10, v6, v7}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    .line 411
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    .line 412
    invoke-virtual {v10, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    new-instance v6, Ljava/util/ArrayList;

    .line 413
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAllowedKeyIds()Ljava/util/HashSet;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAllowedKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    .line 414
    invoke-virtual {v10, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setDecryptMetadataOnly(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    .line 415
    invoke-virtual {v10, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setDetachedSignature([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    .line 416
    invoke-virtual {v10, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setSenderAddress(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v10

    .line 417
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v10

    .line 419
    invoke-virtual {v5, v10, v3, p2, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v10

    .line 421
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->isPending()Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_4

    .line 423
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object p0

    .line 424
    iget-object p2, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {p2, v9, p0, v10}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 427
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string p0, "intent"

    .line 428
    invoke-virtual {v10, p0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "result_code"

    .line 429
    invoke-virtual {v10, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v10

    .line 432
    :cond_4
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->success()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 433
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 435
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object p1

    invoke-direct {v8, v2, p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->processDecryptionResultForResultIntent(ILandroid/content/Intent;Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V

    .line 436
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;

    move-result-object p1

    invoke-direct {v8, p0, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->processMetadataForResultIntent(Landroid/content/Intent;Lorg/openintents/openpgp/OpenPgpMetadata;)V

    .line 437
    invoke-direct {v8, v2, v9, p0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->processSignatureResultForResultIntent(ILandroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V

    .line 438
    invoke-direct {v8, v9, p0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->processSecurityProblemsPendingIntent(Landroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V

    const-string v9, "result_code"

    const/4 v10, 0x1

    .line 440
    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0

    .line 443
    :cond_5
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSkippedDisallowedKeys()[J

    move-result-object p0

    .line 444
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->isKeysDisallowed()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p0, :cond_6

    array-length p2, p0

    if-lez p2, :cond_6

    .line 447
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 448
    iget-object p2, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent"

    .line 449
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 450
    invoke-virtual {v2, v9, p2, p0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createRequestKeyPermissionPendingIntent(Landroid/content/Intent;Ljava/lang/String;[J)Landroid/app/PendingIntent;

    move-result-object v9

    .line 449
    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "result_code"

    .line 452
    invoke-virtual {v10, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v10

    .line 456
    :cond_6
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v9

    iget-object v9, v9, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 457
    invoke-direct {v8, v1, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v9

    const-string v10, "decryptAndVerifyImpl"

    .line 461
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v9, v10, p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->decryptAndVerifyImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;ZLorg/sufficientlysecure/keychain/pgp/Progressable;)Landroid/content/Intent;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encryptAndSignImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    move/16 p1, p4

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setVersionHeader(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v1

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    .line 226
    invoke-direct {v9, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignKeyMasterId(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    const-string v4, "result_code"

    .line 228
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    return-object p1

    :cond_0
    const-string v4, "sign_key_id"

    const-wide/16 v5, 0x0

    .line 233
    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-nez p1, :cond_1

    .line 235
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "No signing key given"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 237
    :cond_1
    iget-object p1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {p1, v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretSignId(J)J

    move-result-wide v4

    .line 239
    invoke-virtual {v1, v7, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object p1

    .line 240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v7, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 244
    :cond_2
    iget-object p1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    iget-object v4, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 245
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {p1, v10, v0, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->returnKeyIdsFromIntent(Landroid/content/Intent;ZLjava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getStatus()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    move-result-object v4

    const-string v5, "ascii_armor"

    const/4 v6, 0x1

    .line 249
    invoke-virtual {v10, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 250
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    const-string v5, "enable_compression"

    .line 252
    invoke-virtual {v10, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 253
    :goto_0
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    const-string v5, "original_filename"

    .line 256
    invoke-virtual {v10, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    .line 261
    :cond_4
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->hasKeySelectionPendingIntent()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v11, "opportunistic"

    .line 262
    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 263
    sget-object v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    if-eq v4, v11, :cond_5

    sget-object v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    if-eq v4, v11, :cond_5

    sget-object v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    if-ne v4, v11, :cond_6

    :cond_5
    if-eqz v10, :cond_6

    const/4 v10, 0x4

    const-string v11, "missing keys in opportunistic mode"

    .line 265
    invoke-direct {v9, v10, v11}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    return-object v10

    .line 269
    :cond_6
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "result_code"

    .line 270
    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "intent"

    .line 271
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeySelectionPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v10, v11, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v10

    .line 274
    :cond_7
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeyIds()[J

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 275
    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAllowedKeyIds()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAllowedSigningKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 277
    invoke-static {v9, v10}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object p1

    if-nez p1, :cond_8

    .line 279
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object p1

    :cond_8
    const-string v4, "passphrase"

    .line 282
    invoke-virtual {v10, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 283
    new-instance v4, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v7, "passphrase"

    .line 284
    invoke-virtual {v10, v7}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>([C)V

    .line 283
    invoke-virtual {p1, v4, v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object p1

    .line 288
    :cond_9
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v7, v4

    .line 289
    new-instance v4, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v4, v11, v7, v8, v5}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 292
    new-instance v11, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;

    iget-object v5, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v11, v9, v5, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 293
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v1

    invoke-virtual {v11, v1, p1, v4, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v11

    .line 295
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->isPending()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 296
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object p0

    .line 297
    iget-object p1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    iget-object v11, v11, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {p1, v10, p0, v11}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 301
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string p0, "intent"

    .line 302
    invoke-virtual {v11, p0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "result_code"

    .line 303
    invoke-virtual {v11, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v11

    .line 305
    :cond_a
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->success()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 306
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "result_code"

    .line 307
    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v10

    .line 310
    :cond_b
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v10

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v10

    .line 311
    new-instance v11, Ljava/lang/Exception;

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v10

    const-string v11, "encryptAndSignImpl"

    .line 314
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {v10, v11, p0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    return-object v10

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->encryptAndSignImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAllowedKeyIds()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 920
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 921
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getAllowedKeyIdsForApp(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getAllowedKeyIds()Ljava/util/HashSet;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAutocryptStatusResult(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;)Landroid/content/Intent;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    const/4 v2, 0x1

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "keys_confirmed"

    .line 323
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->isAllKeysConfirmed()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getAutocryptRecommendation()I

    move-result v1

    if-nez v1, :cond_1

    .line 327
    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getStatus()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "autocrypt_status"

    .line 342
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->hasKeySelectionPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intent"

    .line 336
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeySelectionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v5, "autocrypt_status"

    .line 338
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string v5, "autocrypt_status"

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_1
    const/16 v5, 0xa

    if-eq v1, v5, :cond_4

    const/16 v5, 0x14

    if-eq v1, v5, :cond_4

    const/16 v5, 0x1e

    if-eq v1, v5, :cond_3

    const/16 v5, 0x28

    if-eq v1, v5, :cond_3

    const/16 v5, 0x32

    if-eq v1, v5, :cond_2

    .line 365
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "unhandled case!"

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-string v5, "autocrypt_status"

    const/4 v1, 0x3

    .line 361
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v5, "autocrypt_status"

    const/4 v1, 0x2

    .line 357
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v5, "autocrypt_status"

    .line 352
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getAutocryptStatusResult(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;)Landroid/content/Intent;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyIdsImpl(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 768
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 769
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 768
    invoke-virtual {v0, v4, v2, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->returnKeyIdsFromIntent(Landroid/content/Intent;ZLjava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v4

    .line 770
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->hasKeySelectionPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intent"

    .line 772
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeySelectionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "result_code"

    const/4 v1, 0x2

    .line 773
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 776
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeyIds()[J

    move-result-object v4

    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_ids"

    .line 779
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v4, "result_code"

    .line 780
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getKeyIdsImpl(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "key_id"

    .line 616
    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "key_id"

    const-wide/16 v3, 0x0

    .line 617
    invoke-virtual {v8, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-string v1, "user_id"

    .line 618
    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "user_id"

    .line 620
    invoke-virtual {v8, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 621
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-virtual {v1, v3, v4, v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->returnKeyIdsFromEmails(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getStatus()Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    move-result-object v3

    sget-object v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    if-eq v3, v4, :cond_1

    .line 623
    invoke-direct {v7, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAutocryptStatusResult(Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "result_code"

    .line 624
    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v8

    .line 628
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResult;->getKeyIds()[J

    move-result-object v1

    aget-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 634
    :goto_0
    :try_start_1
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 635
    invoke-virtual {v1, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v1

    .line 637
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "result_code"

    .line 638
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "minimize"

    .line 640
    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "minimize_user_id"

    .line 641
    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 642
    invoke-virtual {v1, v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->minimize(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v1

    :cond_2
    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    const-string v2, "ascii_armor"

    .line 647
    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v2, :cond_4

    .line 651
    :try_start_2
    new-instance v2, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v2, v9}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 653
    :cond_4
    :goto_2
    invoke-virtual {v1, v9}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->encode(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_0
    move-exception v9

    :try_start_4
    const-string v1, "IOException when closing OutputStream"

    .line 658
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 656
    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_1
    move-exception v9

    :try_start_6
    const-string v2, "IOException when closing OutputStream"

    .line 658
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v9, v2, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :goto_4
    throw v1

    :cond_5
    :goto_5
    const-string v9, "intent"

    .line 664
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 665
    invoke-virtual {v1, v8, v3, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createShowKeyPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 664
    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_6
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-object v5

    .line 671
    :catch_2
    :try_start_7
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v1, "intent"

    .line 672
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 673
    invoke-virtual {v2, v8, v3, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createImportFromKeyserverPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;

    move-result-object v8

    .line 672
    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "result_code"

    const/4 v1, 0x2

    .line 674
    invoke-virtual {v9, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v9

    .line 630
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Missing argument key_id or user_id!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v8

    const-string v9, "getKeyImpl"

    .line 678
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v8, v9, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    return-object v8

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getKeyImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSignKeyIdImpl(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.openintents.openpgp.action.GET_SIGN_KEY_ID"

    .line 722
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 726
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getPackageCertificateOrError(Ljava/lang/String;)[B

    move-result-object v5

    const-string v1, "user_id"

    .line 727
    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 730
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v4, v5, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdLegacyPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "show_autocrypt_hint"

    .line 734
    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 735
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    const-string v2, "intent"

    .line 738
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "sign_key_id"

    .line 742
    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "sign_key_id"

    .line 743
    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v10, "result_code"

    const/4 v1, 0x1

    .line 744
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v1, "preselect_key_id"

    .line 746
    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v10, "result_code"

    const/4 v1, 0x2

    .line 747
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const-string v10, "sign_key_id"

    .line 749
    invoke-virtual {v0, v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    cmp-long v10, v4, v2

    if-eqz v10, :cond_3

    .line 752
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v10, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v10, "Error loading key info"

    .line 754
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v10, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, "Signing key not found!"

    .line 755
    invoke-direct {v9, v8, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    return-object v10

    .line 757
    :cond_2
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->creation()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const-string v10, "primary_user_id"

    .line 760
    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "key_creation_time"

    .line 761
    invoke-virtual {v0, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    return-object v0

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getSignKeyIdImpl(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSignKeyIdImplLegacy(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const-string v0, "sign_key_id"

    .line 696
    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sign_key_id"

    const-wide/16 v1, 0x0

    .line 697
    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 699
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v2, "sign_key_id"

    .line 700
    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "result_code"

    const/4 v1, 0x1

    .line 701
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v5

    .line 704
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getPackageCertificateOrError(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "user_id"

    .line 706
    invoke-virtual {v5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v3, v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectSignKeyIdLegacyPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 712
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    const/4 v2, 0x2

    .line 713
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent"

    .line 714
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getSignKeyIdImplLegacy(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSignKeyMasterId(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    const-string v0, "sign_key_id"

    const-wide/16 v1, 0x0

    .line 911
    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 913
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignKeyIdImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    :cond_0
    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getSignKeyMasterId(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSignatureResultWithApiCompatibilityFallbacks(ILorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move-object/16 v6, p2

    .line 502
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    const/16 v1, 0x8

    if-ge v5, v1, :cond_0

    .line 506
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 507
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->createWithInvalidSignature()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    :cond_0
    if-ge v5, v1, :cond_2

    .line 513
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v5

    .line 514
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getResult()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 515
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v5

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 517
    :goto_0
    invoke-virtual {v0, v5}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->withSignatureOnlyFlag(Z)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    :cond_2
    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->getSignatureResultWithApiCompatibilityFallbacks(ILorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processAutocryptPeerInfoToSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 585
    invoke-virtual {v6}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 586
    invoke-virtual {v6}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-object v6

    .line 592
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;

    move-result-object v0

    .line 593
    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/daos/AutocryptPeerDao;->getMasterKeyIdForAutocryptPeer(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 595
    invoke-virtual {v6}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v1

    if-nez v0, :cond_4

    .line 597
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 598
    invoke-virtual {v6}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getSignatureTimestamp()Ljava/util/Date;

    move-result-object v3

    .line 599
    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 602
    :goto_1
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 603
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    move-result-object v3

    .line 604
    invoke-virtual {v3, v7, v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->updateKeyGossipFromSignature(Ljava/lang/String;Ljava/util/Date;J)V

    .line 605
    sget-object v7, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->NEW:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-virtual {v6, v7}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->withAutocryptPeerResult(Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v6

    return-object v6

    .line 606
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    .line 607
    sget-object v7, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->OK:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-virtual {v6, v7}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->withAutocryptPeerResult(Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v6

    return-object v6

    .line 609
    :cond_5
    sget-object v7, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->MISMATCH:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-virtual {v6, v7}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->withAutocryptPeerResult(Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v6

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->processAutocryptPeerInfoToSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processDecryptionResultForResultIntent(ILandroid/content/Intent;Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x8

    if-ge v2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, "decryption"

    .line 496
    invoke-virtual {v3, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->processDecryptionResultForResultIntent(ILandroid/content/Intent;Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processMetadataForResultIntent(Landroid/content/Intent;Lorg/openintents/openpgp/OpenPgpMetadata;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "charset"

    .line 526
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v4, :cond_2

    const-string v0, "metadata"

    .line 530
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->processMetadataForResultIntent(Landroid/content/Intent;Lorg/openintents/openpgp/OpenPgpMetadata;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processSecurityProblemsPendingIntent(Landroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 468
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSecurityProblem()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "support_override_crpto_warning"

    const/4 v1, 0x0

    .line 473
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->getPrioritySecurityProblem()Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;->isIdentifiable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    move-result-object v1

    .line 479
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->isWarningOverridden(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "override_crypto_warning"

    .line 480
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insecure_detail_intent"

    .line 485
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 486
    invoke-virtual {v2, v0, p0, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSecurityProblemIntent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;Z)Landroid/app/PendingIntent;

    move-result-object v4

    .line 485
    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->processSecurityProblemsPendingIntent(Landroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processSignatureResultForResultIntent(ILandroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 537
    invoke-direct {v4, v5, p1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignatureResultWithApiCompatibilityFallbacks(ILorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "intent"

    .line 542
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 544
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v2

    .line 543
    invoke-virtual {v1, v6, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createImportFromKeyserverPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 542
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string v0, "intent"

    .line 553
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 554
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createShowKeyPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 553
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_0
    :pswitch_2
    const-string v0, "autocrypt_peer_id"

    .line 571
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/16 v0, 0xc

    if-ge v5, v0, :cond_1

    .line 574
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "API version conflict, autocrypt is supported v12 and up!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 576
    :cond_1
    invoke-direct {v4, p1, v6}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->processAutocryptPeerInfoToSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object p1

    :cond_2
    const-string v5, "signature"

    .line 579
    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->processSignatureResultForResultIntent(ILandroid/content/Intent;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private signImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    move-object/16 v13, p2

    move-object/16 p0, p3

    move/16 p1, p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :try_start_0
    const-string v2, "ascii_armor"

    .line 121
    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v12

    goto/16 :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 124
    :goto_1
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2, p1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCleartextSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v2

    xor-int/lit8 v4, p1, 0x1

    .line 127
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setDetachedSignature(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setVersionHeader(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 131
    invoke-direct {v11, v12}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignKeyMasterId(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "result_code"

    .line 133
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    return-object v2

    :cond_2
    const-string v5, "sign_key_id"

    const-wide/16 v7, 0x0

    .line 138
    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_3

    .line 140
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "No signing key given"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 142
    :cond_3
    invoke-virtual {v3, v9, v10}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2, v9, v10}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretSignId(J)J

    move-result-wide v7

    .line 147
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :try_start_2
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getAllowedKeyIds()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAllowedSigningKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    if-nez p1, :cond_4

    move-object p0, v4

    .line 160
    :cond_4
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v7, v2

    .line 161
    new-instance v2, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v2, v13, v7, v8}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    .line 163
    invoke-static {v11, v12}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v13

    if-nez v13, :cond_5

    .line 165
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-static {v13}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v13

    :cond_5
    const-string v5, "passphrase"

    .line 168
    invoke-virtual {v12, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v7, "passphrase"

    .line 170
    invoke-virtual {v12, v7}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>([C)V

    .line 169
    invoke-virtual {v13, v5, v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v13

    .line 174
    :cond_6
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;

    iget-object v7, v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v5, v11, v7, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 175
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v3

    invoke-virtual {v5, v3, v13, v2, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v13

    .line 177
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->isPending()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 178
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object p0

    .line 179
    iget-object p1, v11, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    iget-object v13, v13, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {p1, v12, p0, v13}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 183
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string p0, "intent"

    .line 184
    invoke-virtual {v13, p0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v12, "result_code"

    .line 185
    invoke-virtual {v13, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v13

    .line 188
    :cond_7
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->success()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 189
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 190
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getDetachedSignature()[B

    move-result-object p0

    if-eqz p0, :cond_8

    if-nez p1, :cond_8

    const-string p0, "detached_signature"

    .line 191
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getDetachedSignature()[B

    move-result-object p1

    invoke-virtual {v12, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p0, "signature_micalg"

    .line 192
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getMicAlgDigestName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, p0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const-string v13, "result_code"

    .line 194
    invoke-virtual {v12, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v12

    .line 197
    :cond_9
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v12

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v12

    .line 198
    new-instance v13, Ljava/lang/Exception;

    iget-object v12, v12, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    :catch_1
    move-exception v12

    .line 149
    new-instance v13, Ljava/lang/Exception;

    const-string p0, "signing subkey not found!"

    invoke-direct {v13, p0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const-string v13, "signImpl"

    .line 201
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {v12, v13, p0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    return-object v12

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->signImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateAutocryptPeerImpl(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    const/4 v0, 0x0

    .line 868
    :try_start_0
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    move-result-object v1

    const-string v2, "autocrypt_peer_id"

    .line 870
    invoke-virtual {v10, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "autocrypt_peer_update"

    .line 871
    invoke-virtual {v10, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "autocrypt_peer_id"

    .line 872
    invoke-virtual {v10, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "autocrypt_peer_update"

    .line 873
    invoke-virtual {v10, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    if-eqz v3, :cond_0

    .line 876
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->updateAutocryptPeerState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V

    :cond_0
    const-string v2, "autocrypt_peer_gossip_updates"

    .line 880
    invoke-virtual {v10, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "autocrypt_peer_gossip_updates"

    .line 881
    invoke-virtual {v10, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 882
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Keychain"

    .line 883
    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating gossip state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    if-eqz v5, :cond_1

    .line 886
    invoke-virtual {v1, v4, v5}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->updateAutocryptPeerGossipState(Ljava/lang/String;Lorg/openintents/openpgp/AutocryptPeerUpdate;)V

    goto :goto_0

    .line 891
    :cond_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    .line 892
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v10

    const-string v1, "exception in updateAutocryptPeerImpl"

    .line 895
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createErrorResultIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    return-object v10

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->updateAutocryptPeerImpl(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected executeInternal(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 990
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v11, :cond_1

    .line 992
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :cond_1
    const/4 v11, 0x0

    .line 996
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string p0, "API call: %s"

    const/4 v4, 0x1

    .line 997
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {p0, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    invoke-virtual {v9, v10, v0, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->executeInternalWithStreams(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v10

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 p0, 0x0

    sub-long v7, v5, v2

    const-string p0, "Elapsed time: %d"

    .line 1000
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {p0, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1006
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "IOException when closing input ParcelFileDescriptor"

    .line 1008
    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1013
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v0, "IOException when closing output ParcelFileDescriptor"

    .line 1015
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v0, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v10

    :catchall_0
    move-exception v10

    if-eqz v0, :cond_4

    .line 1006
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    const-string v0, "IOException when closing input ParcelFileDescriptor"

    .line 1008
    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 1013
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    const-string v0, "IOException when closing output ParcelFileDescriptor"

    .line 1015
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v0, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    :cond_5
    :goto_4
    throw v10

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->executeInternal(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected executeInternalWithStreams(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    .line 1028
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1030
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1035
    :cond_0
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->trackApiServiceCall(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "progress_messenger"

    .line 1038
    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "progress_messenger"

    .line 1039
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 1040
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createMessengerProgressable(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/pgp/Progressable;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object v7, v1

    .line 1043
    :goto_0
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 1044
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "org.openintents.openpgp.action.GET_KEY_IDS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "org.openintents.openpgp.action.CHECK_PERMISSION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "org.openintents.openpgp.action.DECRYPT_METADATA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "autocrypt_key_transfer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "org.openintents.openpgp.action.QUERY_AUTOCRYPT_STATUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "org.openintents.openpgp.action.BACKUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "org.openintents.openpgp.action.SIGN_AND_ENCRYPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "org.openintents.openpgp.action.GET_KEY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_8
    const-string v3, "org.openintents.openpgp.action.GET_SIGN_KEY_ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_9
    const-string v3, "org.openintents.openpgp.action.DETACHED_SIGN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_a
    const-string v3, "org.openintents.openpgp.action.SIGN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_b
    const-string v3, "org.openintents.openpgp.action.DECRYPT_VERIFY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_c
    const-string v3, "org.openintents.openpgp.action.CLEARTEXT_SIGN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_d
    const-string v3, "org.openintents.openpgp.action.ENCRYPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_e
    const-string v3, "org.openintents.openpgp.action.GET_SIGN_KEY_ID_LEGACY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_f
    const-string v3, "org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xf

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 1093
    :pswitch_0
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->updateAutocryptPeerImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1090
    :pswitch_1
    invoke-direct {v8, v9, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->autocryptKeyTransferImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1087
    :pswitch_2
    invoke-direct {v8, v9, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->backupImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1084
    :pswitch_3
    invoke-direct {v8, v9, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getKeyImpl(Landroid/content/Intent;Ljava/io/OutputStream;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1081
    :pswitch_4
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getKeyIdsImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1078
    :pswitch_5
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignKeyIdImplLegacy(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1075
    :pswitch_6
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getSignKeyIdImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    :pswitch_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object v3, p0

    .line 1072
    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->decryptAndVerifyImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;ZLorg/sufficientlysecure/keychain/pgp/Progressable;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    :pswitch_8
    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, p0

    .line 1069
    invoke-direct/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->decryptAndVerifyImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;ZLorg/sufficientlysecure/keychain/pgp/Progressable;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    :pswitch_9
    const-string v1, "org.openintents.openpgp.action.SIGN_AND_ENCRYPT"

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1066
    invoke-direct {v8, v9, v10, p0, v0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->encryptAndSignImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1061
    :pswitch_a
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->autocryptQueryImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1058
    :pswitch_b
    invoke-direct {v8, v9, v10, p0, v5}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->signImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    :pswitch_c
    const-string v0, "You are using a deprecated API call, please use ACTION_CLEARTEXT_SIGN instead of ACTION_SIGN!"

    .line 1053
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    invoke-direct {v8, v9, v10, p0, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->signImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1049
    :pswitch_d
    invoke-direct {v8, v9, v10, p0, v4}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->signImpl(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    .line 1046
    :pswitch_e
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->checkPermissionImpl(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    return-object v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c00f4d6 -> :sswitch_f
        -0x44d4cffe -> :sswitch_e
        -0x2f0759e9 -> :sswitch_d
        -0x23778e10 -> :sswitch_c
        -0xbf9e887 -> :sswitch_b
        -0x13fb0d5 -> :sswitch_a
        0x1ba3acbc -> :sswitch_9
        0x21e19e26 -> :sswitch_8
        0x2c5ec188 -> :sswitch_7
        0x2ede00a9 -> :sswitch_6
        0x32743fb0 -> :sswitch_5
        0x3a46afd7 -> :sswitch_4
        0x53d6e4eb -> :sswitch_3
        0x66eb462f -> :sswitch_2
        0x67673df4 -> :sswitch_1
        0x74bf0761 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->executeInternalWithStreams(Landroid/content/Intent;Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/Intent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 981
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mBinder:Lorg/openintents/openpgp/IOpenPgpService$Stub;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 5

    move-object/16 v2, p0

    .line 108
    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService;--->onCreate()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 110
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 111
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 112
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;->getInstance(Landroid/content/ContentResolver;Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;)Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->mKeyIdExtractor:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor;

    .line 115
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    return-void
.end method
