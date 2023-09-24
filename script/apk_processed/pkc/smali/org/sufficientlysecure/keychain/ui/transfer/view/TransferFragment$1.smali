.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TransferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 95
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 98
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "networkInfo"

    .line 99
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onWifiConnected()V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;--->onReceive(Landroid/content/Context;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
