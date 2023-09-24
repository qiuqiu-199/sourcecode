.class Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;
.super Landroid/os/AsyncTask;
.source "AsyncTaskLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->updateDataInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v4, 0x0

    .line 40
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    monitor-enter v0
    :try_end_0
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    new-instance v2, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v2}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->access$002(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 44
    :try_start_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->asyncLoadData()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :try_start_3
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    monitor-enter v1
    :try_end_3
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    :try_start_4
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-static {v2, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->access$002(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;

    .line 48
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 46
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    monitor-enter v1
    :try_end_5
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_0

    .line 47
    :try_start_6
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-static {v2, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->access$002(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Landroid/support/v4/os/CancellationSignal;)Landroid/support/v4/os/CancellationSignal;

    .line 48
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 49
    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_2
    move-exception v0

    .line 48
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_3
    move-exception v1

    .line 42
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    .line 51
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->hasActiveObservers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    throw v0

    :cond_0
    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;Ljava/lang/Object;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$1;--->onPostExecute(Ljava/lang/Object;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
