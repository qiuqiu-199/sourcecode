.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/Configuration$Builder;Landroidx/work/Configuration$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
