.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;
.super Ljava/lang/Object;
.source "AddEditKeyserverDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 228
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 231
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 232
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 235
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    .line 237
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :goto_0
    invoke-static {v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createWithOnionProxy(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v4

    .line 240
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    .line 243
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;

    invoke-direct {v1, v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    .line 268
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->putOrbotInRequiredState(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    .line 272
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 269
    invoke-virtual {v1, v4, v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V

    goto :goto_1

    .line 276
    :cond_1
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->dismiss()V

    .line 278
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->keyserverEdited(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)V

    :cond_2
    :goto_1
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
