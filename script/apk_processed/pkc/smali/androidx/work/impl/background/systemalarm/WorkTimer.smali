.class Landroidx/work/impl/background/systemalarm/WorkTimer;
.super Ljava/lang/Object;
.source "WorkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;,
        Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
    }
.end annotation


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method startTimer(Ljava/lang/String;JLandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;)V
    .locals 5

    .line 61
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WorkTimer"

    const-string v2, "Starting timer for %s"

    const/4 v3, 0x1

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p1}, Landroidx/work/impl/background/systemalarm/WorkTimer;->stopTimer(Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;-><init>(Landroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stopTimer(Ljava/lang/String;)V
    .locals 5

    .line 73
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WorkTimer"

    const-string v2, "Stopping timer for %s"

    const/4 v3, 0x1

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
