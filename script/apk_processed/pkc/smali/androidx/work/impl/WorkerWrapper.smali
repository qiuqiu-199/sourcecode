.class public Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private volatile mInterrupted:Z

.field private mListener:Landroidx/work/impl/ExecutionListener;

.field private mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

.field private mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field private mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field private mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private mWorkSpecId:Ljava/lang/String;

.field private mWorkTagDao:Landroidx/work/impl/model/WorkTagDao;

.field mWorker:Landroidx/work/Worker;


# direct methods
.method private constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$000(Landroidx/work/impl/WorkerWrapper$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$100(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$200(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/ExecutionListener;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mListener:Landroidx/work/impl/ExecutionListener;

    .line 76
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$300(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    .line 77
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$400(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/Extras$RuntimeExtras;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    .line 78
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$500(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/Worker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    .line 80
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$600(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 81
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 82
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 83
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTagDao:Landroidx/work/impl/model/WorkTagDao;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;Landroidx/work/impl/WorkerWrapper$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$Builder;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/ExecutionListener;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mListener:Landroidx/work/impl/ExecutionListener;

    return-object p0
.end method

.method private handleResult(Landroidx/work/Worker$WorkerResult;)V
    .locals 5

    .line 234
    sget-object v0, Landroidx/work/impl/WorkerWrapper$2;->$SwitchMap$androidx$work$Worker$WorkerResult:[I

    invoke-virtual {p1}, Landroidx/work/Worker$WorkerResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p1, "WorkerWrapper"

    const-string v2, "Worker result FAILURE for %s"

    .line 253
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndNotify(Z)V

    goto :goto_0

    :pswitch_0
    const-string p1, "WorkerWrapper"

    const-string v2, "Worker result RETRY for %s"

    .line 246
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndNotify()V

    goto :goto_0

    :pswitch_1
    const-string p1, "WorkerWrapper"

    const-string v2, "Worker result SUCCESS for %s"

    .line 236
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndNotify(Z)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setSucceededAndNotify()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndNotify()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyIncorrectStatus()V
    .locals 7

    .line 193
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object v0

    .line 194
    sget-object v1, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "WorkerWrapper"

    const-string v1, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    .line 195
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v3, v2}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    goto :goto_0

    :cond_0
    const-string v1, "WorkerWrapper"

    const-string v4, "Status for %s is %s; not doing any work"

    const/4 v5, 0x2

    .line 199
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    .line 200
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, v3, v3}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    :goto_0
    return-void
.end method

.method private notifyListener(ZZ)V
    .locals 2

    .line 222
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mListener:Landroidx/work/impl/ExecutionListener;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->getInstance()Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/WorkerWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/WorkerWrapper$1;-><init>(Landroidx/work/impl/WorkerWrapper;ZZ)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recursivelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 4

    .line 303
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v0, p1}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->recursivelyFailWorkAndDependents(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v0, p1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object v0

    sget-object v1, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    if-eq v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/State;->FAILED:Landroidx/work/State;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private rescheduleAndNotify()V
    .locals 6

    .line 315
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v3, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 320
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 323
    invoke-direct {p0, v0, v1}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    return-void

    :catchall_0
    move-exception v2

    .line 322
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 323
    invoke-direct {p0, v0, v1}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    throw v2
.end method

.method private resetPeriodicAndNotify(Z)V
    .locals 7

    .line 328
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 330
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v1, v1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 331
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v3, v3, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const/4 v5, 0x0

    add-long v5, v1, v3

    .line 332
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 333
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 338
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    return-void

    :catchall_0
    move-exception v1

    .line 337
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 338
    invoke-direct {p0, p1, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    throw v1
.end method

.method private setFailedAndNotify()V
    .locals 4

    .line 281
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 283
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->recursivelyFailWorkAndDependents(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    invoke-virtual {v1}, Landroidx/work/Worker;->getOutputData()Landroidx/work/Data;

    move-result-object v1

    .line 290
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 293
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 296
    invoke-direct {p0, v0, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    .line 299
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 295
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 296
    invoke-direct {p0, v0, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    throw v1
.end method

.method private setSucceededAndNotify()V
    .locals 9

    .line 343
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 345
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v3, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    invoke-virtual {v2}, Landroidx/work/Worker;->getOutputData()Landroidx/work/Data;

    move-result-object v2

    .line 349
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 354
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 355
    iget-object v6, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v6, v5}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WorkerWrapper"

    const-string v7, "Setting status to enqueued for %s"

    .line 356
    new-array v8, v1, [Ljava/lang/Object;

    aput-object v5, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v6, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v7, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    new-array v8, v1, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    .line 358
    iget-object v6, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v6, v5, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 365
    invoke-direct {p0, v1, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    .line 369
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 364
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 365
    invoke-direct {p0, v1, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    throw v2
.end method

.method private tryCheckForInterruptionAndNotify()Z
    .locals 6

    .line 206
    iget-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "WorkerWrapper"

    const-string v2, "Work interrupted for %s"

    const/4 v3, 0x1

    .line 207
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, v1, v1}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v2, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0}, Landroidx/work/State;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v1, v0}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    :goto_0
    return v3

    :cond_2
    return v1
.end method

.method private trySetRunning()Z
    .locals 6

    .line 265
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 267
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object v0

    .line 268
    sget-object v1, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 275
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    throw v0
.end method

.method public static workerFromClassName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroidx/work/impl/Extras;)Landroidx/work/Worker;
    .locals 9

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 404
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/Worker;

    .line 406
    const-class v1, Landroidx/work/Worker;

    const-string v2, "internalInit"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroidx/work/impl/Extras;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 411
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 412
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p2, "WorkerWrapper"

    .line 419
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trouble instantiating "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static workerFromWorkSpec(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/Extras;)Landroidx/work/Worker;
    .locals 1

    .line 375
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 376
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 377
    invoke-static {p0, v0, p1, p2}, Landroidx/work/impl/WorkerWrapper;->workerFromClassName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroidx/work/impl/Extras;)Landroidx/work/Worker;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    .line 187
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->stop()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 89
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 94
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "WorkerWrapper"

    const-string v3, "Didn\'t find WorkSpec for id %s"

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, v2, v2}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    sget-object v3, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    if-eq v0, v3, :cond_2

    .line 103
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->notifyIncorrectStatus()V

    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroidx/work/InputMerger;->fromClassName(Ljava/lang/String;)Landroidx/work/InputMerger;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "WorkerWrapper"

    const-string v3, "Could not create Input Merger %s"

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndNotify()V

    return-void

    .line 120
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {v0, v3}, Landroidx/work/InputMerger;->merge(Ljava/util/List;)Landroidx/work/Data;

    move-result-object v0

    .line 126
    :goto_0
    new-instance v3, Landroidx/work/impl/Extras;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTagDao:Landroidx/work/impl/model/WorkTagDao;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 127
    invoke-interface {v4, v5}, Landroidx/work/impl/model/WorkTagDao;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    invoke-direct {v3, v0, v4, v5}, Landroidx/work/impl/Extras;-><init>(Landroidx/work/Data;Ljava/util/List;Landroidx/work/impl/Extras$RuntimeExtras;)V

    .line 131
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    if-nez v0, :cond_5

    .line 132
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-static {v0, v4, v3}, Landroidx/work/impl/WorkerWrapper;->workerFromWorkSpec(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/Extras;)Landroidx/work/Worker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    .line 135
    :cond_5
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    if-nez v0, :cond_6

    const-string v0, "WorkerWrapper"

    const-string v3, "Could for create Worker %s"

    .line 136
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndNotify()V

    return-void

    .line 143
    :cond_6
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndNotify()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 150
    :cond_7
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->doWork()Landroidx/work/Worker$WorkerResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    sget-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    .line 156
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 157
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndNotify()Z

    move-result v1

    if-nez v1, :cond_b

    .line 158
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object v1

    if-nez v1, :cond_8

    .line 164
    invoke-direct {p0, v2, v2}, Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V

    goto :goto_2

    .line 165
    :cond_8
    sget-object v2, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    if-ne v1, v2, :cond_9

    .line 166
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/Worker$WorkerResult;)V

    goto :goto_2

    .line 167
    :cond_9
    invoke-virtual {v1}, Landroidx/work/State;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    .line 168
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndNotify()V

    .line 170
    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_b
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    throw v0

    .line 176
    :cond_c
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->notifyIncorrectStatus()V

    :goto_3
    return-void
.end method
