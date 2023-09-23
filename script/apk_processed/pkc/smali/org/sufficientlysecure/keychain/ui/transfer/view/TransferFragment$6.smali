.class Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;
.super Ljava/lang/Object;
.source "TransferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 411
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 414
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->access$202(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
