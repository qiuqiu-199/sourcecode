.class Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;
.super Ljava/lang/Object;
.source "SetPassphraseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 110
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;Landroid/app/Activity;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 114
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->dismiss()V

    .line 116
    new-instance v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>()V

    .line 117
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    const/4 v0, 0x1

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;->setEmpty()V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v6, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v7}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/widget/EditText;)V

    .line 121
    new-instance v7, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/widget/EditText;)V

    .line 122
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v1, 0x7f110183

    const/4 v2, 0x0

    if-nez v7, :cond_1

    .line 123
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    const v4, 0x7f110bd8

    .line 126
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 125
    invoke-virtual {v7, v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return-void

    .line 132
    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    const v4, 0x7f110bd4

    .line 136
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 135
    invoke-virtual {v7, v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 138
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return-void

    .line 144
    :cond_2
    :goto_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v1, "new_passphrase"

    .line 145
    invoke-virtual {v7, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v0, v7}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
