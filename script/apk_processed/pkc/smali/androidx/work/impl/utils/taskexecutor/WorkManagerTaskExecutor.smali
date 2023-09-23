.class public Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# static fields
.field private static sInstance:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;


# instance fields
.field private final mDefaultTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mDefaultTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 33
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mDefaultTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
    .locals 2

    const-class v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->sInstance:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-direct {v1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>()V

    sput-object v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->sInstance:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 43
    :cond_0
    sget-object v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->sInstance:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public executeOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
