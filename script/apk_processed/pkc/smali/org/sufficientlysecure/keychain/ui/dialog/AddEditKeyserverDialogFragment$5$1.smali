.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;
.super Ljava/lang/Object;
.source "AddEditKeyserverDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 203
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 6

    move-object/16 v3, p0

    .line 206
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 207
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;->this$1:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5$1;--->run()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
