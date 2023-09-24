.class Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;
.super Ljava/lang/Object;
.source "GroupingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "GroupId"

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$000(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 137
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$100(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$100(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$000(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    :cond_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setResultForParent(ILandroid/content/Intent;)V

    .line 141
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->finish()V

    return-void
.end method
