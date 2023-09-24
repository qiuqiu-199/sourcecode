.class public Lcom/mikepenz/fastadapter/utils/IdDistributor;
.super Ljava/lang/Object;
.source "IdDistributor.java"


# static fields
.field private static final idDistributor:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7ce66c50e2840000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mikepenz/fastadapter/utils/IdDistributor;->idDistributor:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IIdentifyable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 49
    invoke-interface {p0}, Lcom/mikepenz/fastadapter/IIdentifyable;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 50
    sget-object v0, Lcom/mikepenz/fastadapter/utils/IdDistributor;->idDistributor:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/mikepenz/fastadapter/IIdentifyable;->withIdentifier(J)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static checkIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IIdentifyable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 24
    invoke-static {v1}, Lcom/mikepenz/fastadapter/utils/IdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    goto :goto_0

    :cond_0
    return-object p0
.end method
