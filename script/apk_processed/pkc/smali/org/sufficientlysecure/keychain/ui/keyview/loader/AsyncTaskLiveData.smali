.class public abstract Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;
.super Landroid/arch/lifecycle/LiveData;
.source "AsyncTaskLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private final context:Landroid/content/Context;

.field private observedUri:Landroid/net/Uri;

.field private final observer:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData<",
            "TT;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    .line 28
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->context:Landroid/content/Context;

    .line 29
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observedUri:Landroid/net/Uri;

    .line 30
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observer:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;---><init>(Landroid/content/Context;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;
    .locals 0

    .line 15
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract asyncLoadData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    move-object/16 v1, p0

    .line 92
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->context:Landroid/content/Context;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;--->getContext()Landroid/content/Context;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActive()V
    .locals 7

    move-object/16 v4, p0

    .line 67
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->updateDataInBackground()V

    .line 72
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observedUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observedUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observer:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;--->onActive()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onInactive()V
    .locals 7

    move-object/16 v4, p0

    .line 79
    monitor-enter v4

    .line 80
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 83
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observedUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observedUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->observer:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 83
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;--->onInactive()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected updateDataInBackground()V
    .locals 6

    move-object/16 v3, p0

    .line 36
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;--->updateDataInBackground()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
