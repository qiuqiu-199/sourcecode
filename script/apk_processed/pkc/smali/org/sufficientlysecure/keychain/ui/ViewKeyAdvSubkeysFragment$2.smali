.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;
.super Landroid/os/Handler;
.source "ViewKeyAdvSubkeysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editSubkey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

.field final synthetic val$position:I

.field final synthetic val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;ILorg/sufficientlysecure/keychain/model/SubKey;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 211
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$position:I

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;ILorg/sufficientlysecure/keychain/model/SubKey;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 214
    iget v3, v3, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 227
    :pswitch_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v3

    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v3, v0, :cond_0

    goto/16 :goto_1

    .line 232
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 233
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->removeSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->createStripChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V

    goto :goto_1

    .line 220
    :pswitch_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableRevokeSubKeys()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->removeRevokeSubkey(J)V

    goto :goto_1

    .line 223
    :cond_3
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$subKey:Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addRevokeSubkey(J)V

    goto :goto_1

    .line 216
    :pswitch_2
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iget v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->val$position:I

    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;I)V

    .line 241
    :goto_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
