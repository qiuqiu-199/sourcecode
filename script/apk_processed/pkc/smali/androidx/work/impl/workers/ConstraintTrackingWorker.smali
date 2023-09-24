.class public Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/Worker;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Landroidx/work/impl/constraints/WorkConstraintsCallback;


# instance fields
.field private mAreConstraintsUnmet:Z

.field private mDelegate:Landroidx/work/Worker;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroidx/work/Worker;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/Worker$WorkerResult;
    .locals 6

    .line 67
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ConstraintTrkngWrkr"

    const-string v1, "No worker to delegate to."

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getExtras()Landroidx/work/impl/Extras;

    move-result-object v3

    .line 74
    invoke-static {v1, v0, v2, v3}, Landroidx/work/impl/WorkerWrapper;->workerFromClassName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroidx/work/impl/Extras;)Landroidx/work/Worker;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/Worker;

    .line 80
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/Worker;

    if-nez v1, :cond_1

    const-string v0, "ConstraintTrkngWrkr"

    const-string v1, "No worker to delegate to."

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    if-nez v1, :cond_2

    .line 90
    sget-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    return-object v0

    .line 92
    :cond_2
    new-instance v2, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V

    .line 96
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 98
    invoke-virtual {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    const-string v1, "ConstraintTrkngWrkr"

    const-string v4, "Constraints met for delegate %s"

    .line 99
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/Worker;

    invoke-virtual {v1}, Landroidx/work/Worker;->doWork()Landroidx/work/Worker$WorkerResult;

    move-result-object v1

    .line 106
    iget-object v4, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-boolean v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    if-eqz v5, :cond_3

    .line 108
    sget-object v1, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    monitor-exit v4

    return-object v1

    .line 110
    :cond_3
    iget-object v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Landroidx/work/Worker;

    invoke-virtual {v5}, Landroidx/work/Worker;->getOutputData()Landroidx/work/Data;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->setOutputData(Landroidx/work/Data;)V

    .line 111
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v1

    .line 113
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v4, "ConstraintTrkngWrkr"

    const-string v5, "Delegated worker %s threw a runtime exception."

    .line 115
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    iget-boolean v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    if-eqz v0, :cond_4

    const-string v0, "ConstraintTrkngWrkr"

    const-string v2, "Constraints were unmet, Retrying."

    .line 119
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    monitor-exit v1

    return-object v0

    .line 122
    :cond_4
    sget-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    .line 124
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    const-string v1, "ConstraintTrkngWrkr"

    const-string v4, "Constraints not met for delegate %s. Requesting retry."

    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    return-object v0
.end method

.method public getWorkDatabase()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 138
    invoke-static {}, Landroidx/work/impl/WorkManagerImpl;->getInstance()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ConstraintTrkngWrkr"

    const-string v1, "Constraints changed for %s"

    const/4 v2, 0x1

    .line 150
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 152
    :try_start_0
    iput-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    .line 153
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
