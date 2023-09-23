.class Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;
.super Landroid/os/Handler;
.source "EditKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->addUserId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 155
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 158
    iget v0, v3, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 162
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    move-result-object v0

    const-string v1, "user_id"

    .line 163
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
