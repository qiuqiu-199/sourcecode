.class Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 128
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    const/4 p0, 0x4

    if-ne v2, p0, :cond_1

    .line 132
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    iget-boolean v2, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    if-eqz v2, :cond_0

    .line 133
    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;--->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
