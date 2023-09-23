.class Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;
.super Ljava/lang/Object;
.source "SetPassphraseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 164
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 167
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4$1;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;--->onFocusChange(Landroid/view/View;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
