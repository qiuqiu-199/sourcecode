.class Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;
.super Landroid/os/Handler;
.source "SettingsSmartPGPAuthorityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->startEditAuthorityDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

.field final synthetic val$old_alias:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->val$old_alias:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 145
    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "out_alias"

    .line 146
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "out_position"

    .line 147
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "out_uri"

    .line 148
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "out_action"

    .line 152
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    .line 154
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$2;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditSmartPGPAuthorityDialogFragment$Action:[I

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->ordinal()I

    move-result v6

    aget v6, v3, v6

    const/16 v3, 0x5dc

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 170
    :pswitch_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-static {v6, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->val$old_alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v6, v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    .line 172
    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->val$old_alias:Ljava/lang/String;

    invoke-static {v6, v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->val$old_alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " modified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v6, v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    .line 165
    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->val$old_alias:Ljava/lang/String;

    invoke-static {v6, v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " added"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v6, v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    .line 158
    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
