.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;
.super Ljava/lang/Object;
.source "RemoteSelectPubKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 101
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 105
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->val$extras:Landroid/os/Bundle;

    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v0, "key_ids_selected"

    .line 106
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

    .line 107
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->getSelectedMasterKeyIds()[J

    move-result-object v1

    .line 106
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 109
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
