.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;
.super Ljava/lang/Object;
.source "AddEditSmartPGPAuthorityDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 179
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 182
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5$1;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;--->onFocusChange(Landroid/view/View;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
