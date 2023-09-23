.class public Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;
.super Ljava/lang/Object;
.source "KeyserverSyncManager.java"


# static fields
.field private static final PERIODIC_WORK_TAG:Ljava/lang/String; = "keyserverSync"

.field private static final SYNC_INTERVAL:J = 0x3L

.field private static final SYNC_INTERVAL_UNIT:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->SYNC_INTERVAL_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->updateKeyserverSyncSchedule(Landroid/content/Context;Z)V

    return-void
.end method

.method public static debugRunSyncNow()V
    .locals 7

    .line 112
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    .line 113
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/OneTimeWorkRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 114
    new-array v2, v2, [Landroidx/work/WorkRequest;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroidx/work/WorkManager;->enqueue([Landroidx/work/WorkRequest;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;--->debugRunSyncNow()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static updateKeyserverSyncSchedule(Landroid/content/Context;Z)V
    .locals 11

    move-object/16 v8, p0

    move/16 v9, p1

    .line 60
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v8

    .line 61
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v8, "WorkManager unavailable!"

    .line 63
    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkManager;->synchronous()Landroidx/work/SynchronousWorkManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v8, "WorkManager unavailable!"

    .line 68
    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyserverSyncWorkUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    invoke-interface {v0, v2}, Landroidx/work/SynchronousWorkManager;->getStatusByIdSync(Ljava/util/UUID;)Landroidx/work/WorkStatus;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v2}, Landroidx/work/WorkStatus;->getState()Landroidx/work/State;

    move-result-object v2

    sget-object v4, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->isKeyserverSyncEnabled()Z

    move-result v4

    if-ne v2, v4, :cond_5

    if-nez v9, :cond_4

    const-string v8, "Key sync already scheduled, no changes necessary"

    .line 77
    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v9, "Key sync already scheduled, but forcing reschedule"

    .line 80
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const-string v9, "Cancelling sync tasks\u2026"

    .line 83
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "keyserverSync"

    .line 84
    invoke-interface {v0, v9}, Landroidx/work/SynchronousWorkManager;->cancelAllWorkByTagSync(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->isKeyserverSyncEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v8, "Key sync disabled"

    .line 87
    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string v9, "Scheduling periodic key sync"

    .line 91
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v9, Landroidx/work/Constraints$Builder;

    invoke-direct {v9}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 94
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getWifiOnlySync()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_2

    :cond_7
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    :goto_2
    invoke-virtual {v9, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v9

    .line 95
    invoke-virtual {v9, v3}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v9

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_8

    .line 97
    invoke-virtual {v9, v3}, Landroidx/work/Constraints$Builder;->setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;

    .line 100
    :cond_8
    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncWorker;

    const-wide/16 v5, 0x3

    sget-object v7, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->SYNC_INTERVAL_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 102
    invoke-virtual {v9}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/PeriodicWorkRequest$Builder;

    const-string v2, "keyserverSync"

    .line 103
    invoke-virtual {v9, v2}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v9

    check-cast v9, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 104
    invoke-virtual {v9}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/PeriodicWorkRequest;

    move-result-object v9

    .line 105
    new-array v2, v3, [Landroidx/work/WorkRequest;

    aput-object v9, v2, v1

    invoke-interface {v0, v2}, Landroidx/work/SynchronousWorkManager;->enqueueSync([Landroidx/work/WorkRequest;)V

    const-string v0, "Work id: %s"

    .line 107
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v9}, Landroidx/work/PeriodicWorkRequest;->getId()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v9}, Landroidx/work/PeriodicWorkRequest;->getId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeyserverSyncScheduled(Ljava/util/UUID;)V

    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;--->updateKeyserverSyncSchedule(Landroid/content/Context;Z)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static updateKeyserverSyncScheduleAsync(Landroid/content/Context;Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 49
    new-instance v0, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 55
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;--->updateKeyserverSyncScheduleAsync(Landroid/content/Context;Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
