.class Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;
.super Ljava/lang/Object;
.source "GroupingActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 145
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 150
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "GroupId"

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$000(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 152
    iget-object p3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {p3}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$100(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 153
    iget-object p3, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {p3}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$100(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p3

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->access$000(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 155
    :cond_0
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setResultForParent(ILandroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p1
.end method
