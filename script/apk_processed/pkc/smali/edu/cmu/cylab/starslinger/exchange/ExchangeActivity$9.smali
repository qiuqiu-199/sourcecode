.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowQuestion(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V
    .locals 0

    .line 686
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    iput p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 691
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    iget p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;->val$requestCode:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
