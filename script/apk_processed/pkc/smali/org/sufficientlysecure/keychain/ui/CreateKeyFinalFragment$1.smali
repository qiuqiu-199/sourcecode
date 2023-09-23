.class Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;
.super Ljava/lang/Object;
.source "CreateKeyFinalFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->createKey()V
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

.field final synthetic val$createSecurityToken:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 358
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->val$createSecurityToken:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 358
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 361
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 388
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 358
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 367
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->val$createSecurityToken:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    .line 372
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->mUploadCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void

    .line 378
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 358
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$1;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
