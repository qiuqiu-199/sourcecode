.class public Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;
.super Ljava/lang/Object;
.source "DefaultTaskExecutor.java"

# interfaces
.implements Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public executeOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/DefaultTaskExecutor;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
