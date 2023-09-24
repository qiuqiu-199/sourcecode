.class public Lorg/piwik/sdk/dispatcher/EventCache;
.super Ljava/lang/Object;
.source "EventCache.java"


# instance fields
.field private final mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/piwik/sdk/dispatcher/EventDiskCache;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 19
    iput-object p1, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

    return-void
.end method


# virtual methods
.method public add(Lorg/piwik/sdk/dispatcher/Event;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->uncache()Ljava/util/List;

    .line 32
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public drainTo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requeue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/piwik/sdk/dispatcher/Event;

    .line 59
    iget-object v1, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateState(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 41
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v2}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->uncache()Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "PIWIK:EventCache"

    .line 47
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Switched state to ONLINE, uncached %d events from disk."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v2, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    .line 51
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mDiskCache:Lorg/piwik/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v3, v2}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->cache(Ljava/util/List;)V

    const-string v3, "PIWIK:EventCache"

    .line 52
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Switched state to OFFLINE, caching %d events to disk."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lorg/piwik/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
