.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$3;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowError(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
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

    .line 540
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$3;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 544
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 545
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$3;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 p2, 0x6

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
