.class Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;
.super Ljava/lang/Object;
.source "CreateKeyFinalFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->uploadKey(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

.field final synthetic val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field final synthetic val$masterKeyId:J

.field final synthetic val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;JLorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-wide/16 p0, p3

    move-object/16 p2, p5

    .line 495
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$masterKeyId:J

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;JLorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    .line 499
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$masterKeyId:J

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->createWithKeyId(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;J)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleResult(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 518
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 519
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->val$saveKeyResult:Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->finishWithResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->handleResult(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 495
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 514
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 495
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 504
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment$3;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
