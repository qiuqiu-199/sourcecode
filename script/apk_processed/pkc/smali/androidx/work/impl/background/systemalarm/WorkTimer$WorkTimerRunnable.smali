.class Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;
.super Ljava/lang/Object;
.source "WorkTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkTimerRunnable"
.end annotation


# instance fields
.field private final mWorkSpecId:Ljava/lang/String;

.field private final mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/WorkTimer;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    .line 103
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 108
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-static {v0}, Landroidx/work/impl/background/systemalarm/WorkTimer;->access$000(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-static {v1}, Landroidx/work/impl/background/systemalarm/WorkTimer;->access$100(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-static {v1}, Landroidx/work/impl/background/systemalarm/WorkTimer;->access$100(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-static {v1}, Landroidx/work/impl/background/systemalarm/WorkTimer;->access$200(Landroidx/work/impl/background/systemalarm/WorkTimer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;

    if-eqz v1, :cond_1

    .line 114
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;->onTimeLimitExceeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "WrkTimerRunnable"

    const-string v2, "Timer with %s is already marked as complete."

    const/4 v3, 0x1

    .line 117
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/WorkTimer$WorkTimerRunnable;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
