.class Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0

    .line 195
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 198
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$000(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_START_ID"

    .line 201
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "SystemAlarmDispatcher"

    const-string v5, "Processing command %s, %s"

    const/4 v6, 0x2

    .line 202
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 204
    invoke-static {v4}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$100(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "%s (%s)"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v4, v5}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    :try_start_0
    const-string v5, "SystemAlarmDispatcher"

    const-string v7, "Acquiring operation wake lock (%s) %s"

    .line 207
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 213
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v5}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$200(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Landroidx/work/impl/background/systemalarm/CommandHandler;

    move-result-object v5

    iget-object v7, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v5, v0, v3, v7}, Landroidx/work/impl/background/systemalarm/CommandHandler;->onHandleIntent(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$000(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_1
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$000(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "SystemAlarmDispatcher"

    const-string v3, "Releasing operation wake lock (%s) %s"

    .line 237
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v4, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v1, v2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 233
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$000(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 234
    :try_start_3
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v5}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$000(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v3, "SystemAlarmDispatcher"

    const-string v5, "Releasing operation wake lock (%s) %s"

    .line 237
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 244
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v2, v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 235
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
