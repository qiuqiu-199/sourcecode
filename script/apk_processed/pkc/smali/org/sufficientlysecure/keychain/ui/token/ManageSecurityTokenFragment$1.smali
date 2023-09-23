.class Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;
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
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
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

    .line 467
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 467
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 470
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 485
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 490
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onImportError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 467
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 475
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 480
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onImportSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 467
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method
