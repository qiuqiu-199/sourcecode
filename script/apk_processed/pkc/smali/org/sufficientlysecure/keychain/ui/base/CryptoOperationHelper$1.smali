.class Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;
.super Ljava/lang/Object;
.source "CryptoOperationHelper.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 285
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;---><init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;Landroid/support/v4/app/FragmentActivity;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public operationFinished(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 288
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->dismissAllowingStateLoss()V

    .line 291
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->access$000(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;--->operationFinished(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPreventCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 307
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->setPreventCancel()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;--->setPreventCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/Integer;II)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    if-eqz v3, :cond_0

    .line 296
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->access$100(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    move-result-object v1

    invoke-interface {v1, v0, v4, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;->onCryptoSetProgress(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 300
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;->val$progressDialogManager:Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    invoke-virtual {v0, v3, v4, p0}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->onSetProgress(Ljava/lang/Integer;II)V

    :cond_2
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;--->setProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
