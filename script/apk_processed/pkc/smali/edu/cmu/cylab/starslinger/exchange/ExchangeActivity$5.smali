.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowGroupSizePicker(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 590
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 594
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p2

    invoke-virtual {p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsers()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 595
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 596
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p2

    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v2

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsers()I

    move-result v2

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)[B

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doGenerateCommitment(I[B)Z

    move-result p2

    invoke-static {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 597
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;

    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    .line 598
    new-array p2, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->setNumUsers(I)V

    .line 603
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    sget v2, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MinUsersRequired:I

    invoke-virtual {p2, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 604
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 603
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showNote(Ljava/lang/String;)V

    .line 605
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
