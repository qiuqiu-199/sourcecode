.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;
.super Landroid/os/Handler;
.source "ViewKeyAdvUserIdsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->editUserId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 114
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 117
    iget v3, v3, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 129
    :pswitch_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableRevokeUserIds()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->removeRevokeUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addRevokeUserId(Ljava/lang/String;)V

    .line 134
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    .line 135
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    .line 121
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 141
    :cond_2
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
