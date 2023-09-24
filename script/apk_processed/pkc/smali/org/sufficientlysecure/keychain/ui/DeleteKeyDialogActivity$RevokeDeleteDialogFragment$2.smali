.class Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "DeleteKeyDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 351
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$spinner:Landroid/widget/Spinner;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$CHOICE_REVOKE:Ljava/lang/String;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$CHOICE_DELETE:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;Landroid/widget/Spinner;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 355
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$CHOICE_REVOKE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$activity:Landroid/app/Activity;

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    .line 358
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$400(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$CHOICE_DELETE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;->val$activity:Landroid/app/Activity;

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    .line 361
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$500(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V

    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unsupported delete type in RevokeDeleteDialogFragment"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
