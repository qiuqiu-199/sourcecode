.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;
.super Landroid/os/AsyncTask;
.source "ExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCommitsDataTask"
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

    .line 378
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p1, 0x1

    .line 382
    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->prog_CollectingOthersItems:I

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->publishProgress([Ljava/lang/Object;)V

    .line 383
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doGetCommitmentsGetData()Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    .line 394
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    .line 395
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isError()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 396
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getHash()[B

    move-result-object v0

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v2

    invoke-virtual {v2, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getDecoyHash(I)[B

    move-result-object v1

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getDecoyHash(I)[B

    move-result-object v2

    .line 397
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getRandomPos(I)I

    move-result v3

    .line 396
    invoke-static {p1, v0, v1, v2, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1200(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;[B[B[BI)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .line 389
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V

    return-void
.end method
