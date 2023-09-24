.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;
.super Ljava/lang/Object;
.source "TransferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->showConfirmSendDialog()V
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

    .line 401
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 404
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiClickConfirmSend()V

    goto :goto_0

    .line 406
    :cond_0
    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
