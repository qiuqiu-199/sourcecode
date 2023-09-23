.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;
.super Landroid/os/AsyncTask;
.source "ExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncBadSigTask"
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

    .line 449
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 449
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p1, 0x1

    .line 453
    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->prog_CollectingOthersCommitVerify:I

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->publishProgress([Ljava/lang/Object;)V

    .line 454
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSendInvalidSignature()Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 465
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    .line 466
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 467
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1500(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 460
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V

    return-void
.end method
