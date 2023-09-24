.class public Lcom/loopj/android/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/loopj/android/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 54
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/loopj/android/http/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/loopj/android/http/RequestHandle$1;-><init>(Lcom/loopj/android/http/RequestHandle;Lcom/loopj/android/http/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpRequest;->cancel(Z)Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 91
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2
    return v0
.end method
