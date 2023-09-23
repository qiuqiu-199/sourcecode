.class Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;
.source "ManageSecurityTokenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback<",
        "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 495
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->createOperationInput()Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 498
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 495
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V

    return-void
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 513
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    .line 518
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onPromoteError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 495
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 503
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    .line 508
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onPromoteSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
