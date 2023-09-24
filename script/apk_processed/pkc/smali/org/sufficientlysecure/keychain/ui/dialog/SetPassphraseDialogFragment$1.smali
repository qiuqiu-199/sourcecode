.class Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;
.super Ljava/lang/Object;
.source "SetPassphraseDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 102
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 105
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 106
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;--->onCheckedChanged(Landroid/widget/CompoundButton;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
