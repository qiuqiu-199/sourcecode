.class Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

.field final synthetic val$negative:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/widget/Button;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 173
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->val$negative:Landroid/widget/Button;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/widget/Button;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 177
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iget-boolean v3, v3, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iget-boolean v3, v3, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    const/4 v0, 0x1

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    .line 183
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->val$negative:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 184
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->val$negative:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 186
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 189
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 195
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    const v1, 0x7f110bfa

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
