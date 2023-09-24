.class public Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ImportKeysListCloudLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader<",
        "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
        "Ljava/util/ArrayList<",
        "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field private mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 61
    invoke-direct {v1, v2}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    .line 62
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mContext:Landroid/content/Context;

    .line 63
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    .line 64
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private queryServer(Z)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 123
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInRequiredState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 130
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    .line 131
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    .line 132
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v2

    invoke-direct {v7, v1, v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 133
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-void

    .line 137
    :cond_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    :try_start_0
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mCloudPrefs:Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    invoke-static {v4, v5, v0}, Lorg/sufficientlysecure/keychain/keyimport/CloudSearch;->search(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_3

    .line 150
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v7, v7, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fingerprint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 154
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    .line 155
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad format!"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 162
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintHexFingerprint(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFingerprint([B)V

    .line 163
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_3
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_4
    :goto_1
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    invoke-direct {v7, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 169
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v7}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$CloudSearchFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    .line 174
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNotImplementedException;

    if-eqz v0, :cond_5

    const/16 v2, 0x91

    .line 176
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_QUERY_NOT_IMPLEMENTED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    .line 177
    :cond_5
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryFailedException;

    if-eqz v0, :cond_6

    const/16 v2, 0x61

    .line 179
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_QUERY_FAILED:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    .line 180
    :cond_6
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$TooManyResponsesException;

    if-eqz v0, :cond_7

    const/16 v2, 0x41

    .line 182
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_TOO_MANY_RESPONSES:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    .line 183
    :cond_7
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortException;

    if-eqz v0, :cond_8

    const/16 v2, 0x31

    .line 185
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_QUERY_TOO_SHORT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    .line 186
    :cond_8
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryTooShortOrTooManyResponsesException;

    if-eqz v0, :cond_9

    const/16 v2, 0x51

    .line 188
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_QUERY_TOO_SHORT_OR_TOO_MANY_RESPONSES:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    goto :goto_2

    .line 189
    :cond_9
    instance-of v7, v7, Lorg/sufficientlysecure/keychain/keyimport/KeyserverClient$QueryNoEnabledSourceException;

    if-eqz v7, :cond_a

    const/16 v2, 0x81

    .line 191
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_NO_ENABLED_SOURCE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    .line 193
    :cond_a
    :goto_2
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 194
    invoke-virtual {v7, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 195
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    invoke-direct {v0, v2, v7}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 196
    new-instance v7, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    :goto_3
    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->queryServer(Z)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->deliverResult(Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V

    return-void
.end method

.method public deliverResult(Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 114
    invoke-super {v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->deliverResult(Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;"
        }
    .end annotation

    move-object/16 v6, p0

    .line 69
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    .line 71
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mServerQuery is null!"

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-object v0

    .line 76
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;->mServerQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    const-string v0, "This search is based on a unique fingerprint. Enforce a fingerprint check!"

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 78
    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->queryServer(Z)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {v6, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->queryServer(Z)V

    .line 84
    :goto_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 85
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getParcelableKeyRing()Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v2

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getFingerprint()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyIdHex()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeybaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getFbUsername()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setParcelableKeyRing(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onReset()V
    .locals 3

    move-object/16 v0, p0

    .line 96
    invoke-super {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->onReset()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    move-object/16 v0, p0

    .line 104
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->forceLoad()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->onStartLoading()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onStopLoading()V
    .locals 3

    move-object/16 v0, p0

    .line 109
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;->cancelLoad()Z

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;--->onStopLoading()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
