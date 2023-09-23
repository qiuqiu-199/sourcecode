.class Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;
.super Ljava/lang/Object;
.source "DefaultDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/dispatcher/DefaultDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 158
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$002(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;I)I

    .line 159
    :goto_0
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$100(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 161
    :try_start_0
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v2

    .line 162
    iget-object v4, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v4}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$000(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)I

    move-result v4

    if-le v4, v0, :cond_0

    iget-object v4, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v4}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$000(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v6}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v6

    mul-long v4, v4, v6

    const-wide/16 v6, 0x5

    iget-object v8, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v8}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v8

    mul-long v8, v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x0

    add-long v6, v2, v4

    move-wide v2, v6

    .line 165
    :cond_0
    iget-object v4, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v4}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$300(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "PIWIK:Dispatcher"

    .line 166
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 167
    :goto_1
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;

    move-result-object v2

    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v3}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$400(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/piwik/sdk/dispatcher/EventCache;->updateState(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v3}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/piwik/sdk/dispatcher/EventCache;->drainTo(Ljava/util/List;)V

    const-string v3, "PIWIK:Dispatcher"

    .line 171
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Drained %s events."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v3}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/PacketFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/piwik/sdk/dispatcher/PacketFactory;->buildPackets(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/piwik/sdk/dispatcher/Packet;

    .line 175
    iget-object v6, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v6}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$700(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "PIWIK:Dispatcher"

    .line 176
    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    const-string v7, "DryRun, stored HttpRequest, now %d."

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v9}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$700(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v8}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v6, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v6}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$700(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    .line 179
    :cond_1
    iget-object v6, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v6}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$800(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/PacketSender;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/piwik/sdk/dispatcher/PacketSender;->send(Lorg/piwik/sdk/dispatcher/Packet;)Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_2

    .line 183
    invoke-virtual {v5}, Lorg/piwik/sdk/dispatcher/Packet;->getEventCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 184
    iget-object v5, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v5, v1}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$002(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;I)I

    goto :goto_2

    :cond_2
    const-string v3, "PIWIK:Dispatcher"

    .line 186
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v5, "Unsuccesful assuming OFFLINE, requeuing events."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v3}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/piwik/sdk/dispatcher/EventCache;->updateState(Z)Z

    .line 188
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v3}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/piwik/sdk/dispatcher/EventCache;->requeue(Ljava/util/List;)V

    .line 189
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$008(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)I

    :cond_3
    const-string v2, "PIWIK:Dispatcher"

    .line 193
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Dispatched %d events."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_4
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$900(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_1
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)Lorg/piwik/sdk/dispatcher/EventCache;

    move-result-object v2

    invoke-virtual {v2}, Lorg/piwik/sdk/dispatcher/EventCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    goto :goto_4

    .line 201
    :cond_5
    monitor-exit v0

    goto/16 :goto_0

    .line 198
    :cond_6
    :goto_4
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/piwik/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2, v1}, Lorg/piwik/sdk/dispatcher/DefaultDispatcher;->access$102(Lorg/piwik/sdk/dispatcher/DefaultDispatcher;Z)Z

    .line 199
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 201
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    :goto_5
    return-void
.end method
