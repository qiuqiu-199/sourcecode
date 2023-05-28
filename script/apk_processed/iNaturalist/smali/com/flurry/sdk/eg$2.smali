.class Lcom/flurry/sdk/eg$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eg;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eg;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/flurry/sdk/eg$2;->a:Lcom/flurry/sdk/eg;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 113
    iget-object p2, p0, Lcom/flurry/sdk/eg$2;->a:Lcom/flurry/sdk/eg;

    invoke-static {p2, p1}, Lcom/flurry/sdk/eg;->a(Lcom/flurry/sdk/eg;Ljava/lang/Runnable;)Lcom/flurry/sdk/fd;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/eg$2;->a:Lcom/flurry/sdk/eg;

    invoke-static {p2}, Lcom/flurry/sdk/eg;->a(Lcom/flurry/sdk/eg;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/eg$2;->a:Lcom/flurry/sdk/eg;

    invoke-static {v0}, Lcom/flurry/sdk/eg;->a(Lcom/flurry/sdk/eg;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object p2, p0, Lcom/flurry/sdk/eg$2;->a:Lcom/flurry/sdk/eg;

    invoke-static {p2, p1}, Lcom/flurry/sdk/eg;->a(Lcom/flurry/sdk/eg;Lcom/flurry/sdk/fd;)V

    .line 123
    new-instance p2, Lcom/flurry/sdk/eg$2$1;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/eg$2$1;-><init>(Lcom/flurry/sdk/eg$2;Lcom/flurry/sdk/fd;)V

    invoke-virtual {p2}, Lcom/flurry/sdk/eg$2$1;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 120
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
