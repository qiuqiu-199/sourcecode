.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setProgressCancelHandler()V
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

    .line 475
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 480
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getUserIdLink()I

    move-result p1

    if-lez p1, :cond_0

    .line 481
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/16 v0, 0xe

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1600(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object p1

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->cancelProtocol()V

    .line 484
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1700(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    :goto_0
    return-void
.end method
