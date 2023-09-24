.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;
.super Ljava/lang/Object;
.source "TransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 136
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 139
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiClickScanAgain()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
