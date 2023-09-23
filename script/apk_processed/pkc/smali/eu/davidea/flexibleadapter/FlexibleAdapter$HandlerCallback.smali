.class public Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 5604
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 5608
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 5611
    :pswitch_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->cancel(Z)Z

    .line 5612
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v5, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v3, v4, v5, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;)V

    invoke-static {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2502(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    .line 5613
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    .line 5616
    :cond_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$2600(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
