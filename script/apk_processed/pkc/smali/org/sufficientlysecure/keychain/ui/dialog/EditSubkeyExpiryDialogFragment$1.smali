.class Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;
.super Ljava/lang/Object;
.source "EditSubkeyExpiryDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

.field final synthetic val$expiryLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/LinearLayout;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 109
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;->val$expiryLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/LinearLayout;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;->val$expiryLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;->val$expiryLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
