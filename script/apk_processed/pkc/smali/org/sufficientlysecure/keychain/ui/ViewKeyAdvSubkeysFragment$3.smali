.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;
.super Landroid/os/Handler;
.source "ViewKeyAdvSubkeysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editSubkeyExpiry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

.field final synthetic val$keyId:J


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    .line 262
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iput-wide v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;->val$keyId:J

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 265
    iget v0, v5, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "expiry"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 269
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    iget-wide v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;->val$keyId:J

    const/4 v3, 0x0

    .line 270
    invoke-static {v1, v2, v3, v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->createFlagsOrExpiryChange(JLjava/lang/Integer;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v5

    .line 269
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addOrReplaceSubkeyChange(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;)V

    .line 273
    :goto_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->notifyDataSetChanged()V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
