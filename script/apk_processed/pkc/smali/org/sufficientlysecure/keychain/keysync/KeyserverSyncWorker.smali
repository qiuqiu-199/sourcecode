.class public Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;
.super Landroidx/work/Worker;
.source "KeyserverSyncWorker.java"


# instance fields
.field private cancellationSignal:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object/16 v2, p0

    .line 28
    invoke-direct {v2}, Landroidx/work/Worker;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->cancellationSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;---><init>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private handleUpdateResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)Landroidx/work/Worker$WorkerResult;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 51
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isPending()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v5, "Orbot required for sync but not running, attempting to start"

    .line 52
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v5, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;-><init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;)V

    .line 64
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$1;->startOrbotAndListen(Landroid/content/Context;Z)V

    .line 65
    sget-object v5, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    return-object v5

    .line 66
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v5, "Keyserver sync cancelled"

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object v5, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    return-object v5

    :cond_1
    const-string v0, "Keyserver sync completed: Updated: %d, Failed: %d"

    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v5, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget v5, v5, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v5, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;--->handleUpdateResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)Landroidx/work/Worker$WorkerResult;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private notificationShowForProgress()Lorg/sufficientlysecure/keychain/pgp/Progressable;
    .locals 9

    move-object/16 v6, p0

    .line 76
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 83
    :cond_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/NotificationChannelManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/NotificationChannelManager;->createNotificationChannelsIfNecessary()V

    .line 85
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "keyserverSync"

    invoke-direct {v3, v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0800e5

    .line 86
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    .line 87
    invoke-static {v0, v4}, Lorg/sufficientlysecure/keychain/util/ResourceUtils;->getDrawableAsNotificationBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f110bb5

    .line 88
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, -0x2

    .line 89
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-wide/16 v4, 0x1388

    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v2, v4, v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 95
    new-instance v3, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;

    invoke-direct {v3, v6, v1, v2, v0}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker$2;-><init>(Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;Landroid/app/NotificationManager;Landroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Context;)V

    return-object v3

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;--->notificationShowForProgress()Lorg/sufficientlysecure/keychain/pgp/Progressable;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public doWork()Landroidx/work/Worker$WorkerResult;
    .locals 8

    move-object/16 v5, p0

    .line 34
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v0

    const-string v1, "Starting key sync\u2026"

    const/4 v2, 0x0

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->notificationShowForProgress()Lorg/sufficientlysecure/keychain/pgp/Progressable;

    move-result-object v1

    .line 38
    new-instance v2, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->cancellationSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 39
    invoke-static {}, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;->createRefreshOutdated()Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;

    move-result-object v0

    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;->execute(Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v0

    .line 40
    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->handleUpdateResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)Landroidx/work/Worker$WorkerResult;

    move-result-object v0

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;--->doWork()Landroidx/work/Worker$WorkerResult;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStopped()V
    .locals 5

    move-object/16 v2, p0

    .line 121
    invoke-super {v2}, Landroidx/work/Worker;->onStopped()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;--->onStopped()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;->cancellationSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
