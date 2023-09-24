.class public abstract Landroidx/work/impl/utils/CancelWorkRunnable;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Ljava/lang/Runnable;
    .locals 1

    .line 140
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forTag(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Ljava/lang/Runnable;
    .locals 1

    .line 109
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$2;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$2;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method private recursivelyCancelWorkAndDependents(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v1

    .line 68
    invoke-interface {v1, p2}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1, v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->recursivelyCancelWorkAndDependents(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0, p2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/State;

    move-result-object p1

    .line 74
    sget-object v1, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    if-eq p1, v1, :cond_1

    sget-object v1, Landroidx/work/State;->FAILED:Landroidx/work/State;

    if-eq p1, v1, :cond_1

    .line 75
    sget-object p1, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/State;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/work/impl/utils/CancelWorkRunnable;->recursivelyCancelWorkAndDependents(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Landroidx/work/impl/Processor;->stopWork(Ljava/lang/String;)Z

    .line 52
    invoke-virtual {v0, p2}, Landroidx/work/impl/Processor;->setCancelled(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/Scheduler;

    .line 55
    invoke-interface {v0, p2}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
