.class public Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "ImportKeysListLoader.java"


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

.field private mData:Ljava/util/ArrayList;
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

.field private mState:Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 54
    invoke-direct {v1, v2}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    .line 55
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mContext:Landroid/content/Context;

    .line 56
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private generateListOfKeyrings(Lorg/sufficientlysecure/keychain/util/InputData;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 111
    new-instance v0, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    .line 112
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/InputData;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    :try_start_0
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->fromStream(Ljava/io/InputStream;)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;

    move-result-object v5

    .line 121
    :goto_0
    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$IteratorWithIOThrow;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "IOException on parsing key file! Return NoValidKeysException!"

    const/4 v1, 0x0

    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 128
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_NO_VALID_KEYS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 129
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 130
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 131
    new-instance v5, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    invoke-direct {v5, v1, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    :cond_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->generateListOfKeyrings(Lorg/sufficientlysecure/keychain/util/InputData;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getInputData(Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)Lorg/sufficientlysecure/keychain/util/InputData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 141
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mKeyBytes:[B

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/util/InputData;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mKeyBytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mKeyBytes:[B

    array-length v5, v5

    int-to-long v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    move-object v5, v0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 145
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-static {v1, v5, v2, v3}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J

    move-result-wide v1

    .line 147
    new-instance v5, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;J)V

    :goto_0
    return-object v5

    .line 149
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "Loader state must contain bytes or a data URI. This is a bug!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->getInputData(Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)Lorg/sufficientlysecure/keychain/util/InputData;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 62
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 68
    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    .line 71
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    if-nez v0, :cond_1

    const-string v0, "Input data is null!"

    .line 72
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-object v0

    .line 77
    :cond_1
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mState:Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->getInputData(Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)Lorg/sufficientlysecure/keychain/util/InputData;

    move-result-object v0

    .line 78
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->generateListOfKeyrings(Lorg/sufficientlysecure/keychain/util/InputData;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 81
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_GET_FILE_NOT_FOUND:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 82
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    const/16 v2, 0x71

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 83
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;-><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    .line 86
    :goto_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->mEntryListWrapper:Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->loadInBackground()Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onReset()V
    .locals 3

    move-object/16 v0, p0

    .line 91
    invoke-super {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->onReset()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    move-object/16 v0, p0

    .line 99
    invoke-super {v0}, Landroid/support/v4/content/AsyncTaskLoader;->forceLoad()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->onStartLoading()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    move-object/16 v0, p0

    .line 104
    invoke-super {v0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;--->onStopLoading()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
