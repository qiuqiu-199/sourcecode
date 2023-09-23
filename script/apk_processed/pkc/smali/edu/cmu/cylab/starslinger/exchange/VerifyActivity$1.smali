.class Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)V
    .locals 0

    .line 214
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 219
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$000(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$100(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$200(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 226
    :cond_2
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_NoWordListSelected:I

    invoke-virtual {p1, v1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->showNote(I)V

    const/4 p1, -0x1

    :goto_0
    if-le p1, v0, :cond_6

    .line 230
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$300(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 231
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setResultForParent(I)V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$400(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 233
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setResultForParent(I)V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->access$500(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 235
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setResultForParent(I)V

    .line 237
    :cond_5
    :goto_1
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finish()V

    :cond_6
    return-void
.end method
