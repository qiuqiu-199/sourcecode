.class Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;
.super Ljava/lang/Object;
.source "DeleteKeyDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;

.field final synthetic val$CHOICE_DELETE:Ljava/lang/String;

.field final synthetic val$CHOICE_REVOKE:Ljava/lang/String;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Ljava/lang/String;Landroid/support/v7/app/AlertDialog;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 371
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$CHOICE_REVOKE:Ljava/lang/String;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$CHOICE_DELETE:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Ljava/lang/String;Landroid/support/v7/app/AlertDialog;Ljava/lang/String;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    .line 374
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$CHOICE_REVOKE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 p0, -0x1

    if-eqz v2, :cond_0

    .line 377
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f11010d

    .line 378
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$CHOICE_DELETE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f11010c

    .line 381
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unsupported delete type in RevokeDeleteDialogFragment"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;--->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$3;--->onNothingSelected(Landroid/widget/AdapterView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
