.class Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;
.super Ljava/lang/Object;
.source "CreateKeyFinalFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->moveToCard(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

.field final synthetic val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

.field final synthetic val$saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 435
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 439
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 459
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 461
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    .line 467
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->handleResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 454
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 435
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 444
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 435
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$2;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
