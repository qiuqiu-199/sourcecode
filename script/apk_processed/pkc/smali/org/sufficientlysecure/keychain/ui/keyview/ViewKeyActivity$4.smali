.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;
.super Landroid/os/Handler;
.source "ViewKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->changePassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 407
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 410
    iget v0, v5, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 411
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 414
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    .line 415
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$500(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$500(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v2

    const-string v3, "new_passphrase"

    .line 416
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 414
    invoke-static {v1, v2, v5}, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;->createChangeUnlockParcel(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$302(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    .line 419
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$600(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    :cond_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
