.class Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$6;
.super Ljava/lang/Object;
.source "ExchangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 609
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$6;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 613
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 614
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$6;->this$0:Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->access$1700(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    return-void
.end method
