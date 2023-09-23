.class public Landroidx/work/impl/Processor;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCancelledIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnqueuedWorkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/WorkerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mOuterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/ExecutionListener;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 59
    iput-object p3, p0, Landroidx/work/impl/Processor;->mSchedulers:Ljava/util/List;

    .line 60
    iput-object p4, p0, Landroidx/work/impl/Processor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCancelled(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEnqueued(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onExecuted(Ljava/lang/String;ZZ)V
    .locals 5

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Processor"

    const-string v1, "%s %s executed; isSuccessful = %s, reschedule = %s"

    const/4 v2, 0x4

    .line 181
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 181
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/ExecutionListener;

    .line 186
    invoke-interface {v1, p1, p2, p3}, Landroidx/work/impl/ExecutionListener;->onExecuted(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 179
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCancelled(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startWork(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/Processor;->startWork(Ljava/lang/String;Landroidx/work/impl/Extras$RuntimeExtras;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startWork(Ljava/lang/String;Landroidx/work/impl/Extras$RuntimeExtras;)Z
    .locals 5

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p2, "Processor"

    const-string v0, "Work %s is already enqueued for processing"

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return v1

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Builder;

    iget-object v3, p0, Landroidx/work/impl/Processor;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v0, v3, v4, p1}, Landroidx/work/impl/WorkerWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper$Builder;->withListener(Landroidx/work/impl/ExecutionListener;)Landroidx/work/impl/WorkerWrapper$Builder;

    move-result-object v0

    iget-object v3, p0, Landroidx/work/impl/Processor;->mSchedulers:Ljava/util/List;

    .line 92
    invoke-virtual {v0, v3}, Landroidx/work/impl/WorkerWrapper$Builder;->withSchedulers(Ljava/util/List;)Landroidx/work/impl/WorkerWrapper$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p2}, Landroidx/work/impl/WorkerWrapper$Builder;->withRuntimeExtras(Landroidx/work/impl/Extras$RuntimeExtras;)Landroidx/work/impl/WorkerWrapper$Builder;

    move-result-object p2

    .line 94
    invoke-virtual {p2}, Landroidx/work/impl/WorkerWrapper$Builder;->build()Landroidx/work/impl/WorkerWrapper;

    move-result-object p2

    .line 95
    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroidx/work/impl/Processor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p2, "Processor"

    const-string v0, "%s: processing %s"

    const/4 v3, 0x2

    .line 97
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopWork(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "Processor"

    const-string v1, "Processor cancelling %s"

    const/4 v2, 0x1

    .line 108
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Landroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->interrupt()V

    const-string v0, "Processor"

    const-string v1, "WorkerWrapper interrupted for %s"

    .line 112
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    const-string v0, "Processor"

    const-string v1, "WorkerWrapper could not be found for %s"

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method
