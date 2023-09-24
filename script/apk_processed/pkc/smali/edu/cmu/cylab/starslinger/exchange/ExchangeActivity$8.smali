.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;
.super Ljava/lang/Thread;
.source "ExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V
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

    .line 640
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 644
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$300(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$300(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-static {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$2000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    :cond_0
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    invoke-static {}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    move-result-object v0

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->endProtocol()V

    :cond_1
    return-void
.end method
