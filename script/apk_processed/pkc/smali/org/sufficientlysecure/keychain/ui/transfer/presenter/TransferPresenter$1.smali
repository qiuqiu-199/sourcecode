.class Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;
.super Ljava/lang/Object;
.source "TransferPresenter.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiClickImportKey(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

.field final synthetic val$importKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

.field final synthetic val$masterKeyId:J


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-wide/16 p0, p3

    .line 188
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->val$importKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->val$masterKeyId:J

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;J)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 191
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->val$importKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 204
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->releaseCryptoOperationHelper()V

    .line 205
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusItem(Ljava/lang/Long;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;--->onCryptoOperationCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 210
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 211
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->releaseCryptoOperationHelper()V

    .line 212
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showResultNotification(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 188
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 196
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 197
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    move-result-object v0

    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->val$masterKeyId:J

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->addToFinishedItems(J)V

    .line 198
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->releaseCryptoOperationHelper()V

    .line 199
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showResultNotification(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 188
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
