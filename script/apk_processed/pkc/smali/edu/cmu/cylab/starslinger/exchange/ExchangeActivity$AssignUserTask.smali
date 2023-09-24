.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;
.super Landroid/os/AsyncTask;
.source "ExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssignUserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;


# direct methods
.method private constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 355
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 355
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p1, 0x1

    .line 359
    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->prog_RequestingUserId:I

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->publishProgress([Ljava/lang/Object;)V

    .line 360
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doRequestUserId()Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 355
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 371
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    .line 372
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 373
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1100(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 355
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 366
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V

    return-void
.end method
