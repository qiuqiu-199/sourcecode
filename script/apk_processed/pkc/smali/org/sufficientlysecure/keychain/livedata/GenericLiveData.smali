.class public Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;
.source "GenericLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private genericDataLoader:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader<",
            "TT;>;"
        }
    .end annotation
.end field

.field private minLoadTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    move-object/16 p1, p4

    .line 27
    invoke-static {v2, p0}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 28
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->genericDataLoader:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;---><init>(Landroid/content/Context;JLorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 22
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 23
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->genericDataLoader:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;---><init>(Landroid/content/Context;Landroid/net/Uri;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader<",
            "TT;>;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 17
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 18
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->genericDataLoader:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected asyncLoadData()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/16 v7, p0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 39
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->genericDataLoader:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;->loadData()Ljava/lang/Object;

    move-result-object v2

    .line 42
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v3, v0

    .line 43
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->minLoadTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->minLoadTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v5, v0

    if-gez v3, :cond_0

    .line 44
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->minLoadTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v3, 0x0

    sub-long v3, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v2

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;--->asyncLoadData()Ljava/lang/Object;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setMinLoadTime(Ljava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 32
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->minLoadTime:Ljava/lang/Long;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;--->setMinLoadTime(Ljava/lang/Long;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
