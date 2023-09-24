.class Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;
.super Landroid/os/Handler;
.source "SettingsKeyserverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->startEditKeyserverDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->val$position:I

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 145
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    iget v7, v7, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v7, "keyserver_deleted"

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    .line 153
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f110878

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    .line 154
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 153
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 152
    invoke-static {v7, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 156
    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 157
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    iget v0, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->val$position:I

    invoke-static {v7, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;I)V

    return-void

    :cond_1
    const-string v7, "verified"

    .line 161
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v1, 0x7f110023

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v7, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 164
    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v1, 0x7f110027

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v7, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 168
    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    const-string v7, "new_keyserver"

    .line 170
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const-string v1, "message_dialog_action"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    .line 176
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$2;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 181
    :pswitch_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    iget v1, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->val$position:I

    invoke-static {v0, v7, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V

    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-static {v0, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
