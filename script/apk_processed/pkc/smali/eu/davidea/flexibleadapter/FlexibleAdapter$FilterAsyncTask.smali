.class Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
.super Landroid/os/AsyncTask;
.source "FlexibleAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final newItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field private final what:I


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 5457
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5458
    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    if-nez p3, :cond_0

    .line 5460
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5451
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 5487
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1802(Leu/davidea/flexibleadapter/FlexibleAdapter;J)J

    .line 5488
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5496
    :pswitch_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "doInBackground - started FILTER"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5497
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    invoke-static {p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2100(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 5498
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "doInBackground - ended FILTER"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5490
    :pswitch_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "doInBackground - started UPDATE"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5491
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    invoke-static {p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1900(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 5492
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    sget-object v2, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2000(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    .line 5493
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "doInBackground - ended UPDATE"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 3

    .line 5482
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "FilterAsyncTask cancelled!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5451
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 5506
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2300(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5508
    :cond_0
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5516
    :pswitch_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    sget-object v0, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V

    .line 5517
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostFilter()V

    goto :goto_0

    .line 5511
    :pswitch_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    sget-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V

    .line 5512
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostUpdate()V

    .line 5521
    :cond_1
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2502(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 4

    .line 5465
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1000(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5466
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Cannot filter while endlessLoading"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5467
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->cancel(Z)Z

    .line 5471
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isRestoreInTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5472
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Removing all deleted items before filtering/updating"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5473
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->newItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5474
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    if-eqz v0, :cond_1

    .line 5475
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;->onDeleteConfirmed(I)V

    :cond_1
    return-void
.end method
