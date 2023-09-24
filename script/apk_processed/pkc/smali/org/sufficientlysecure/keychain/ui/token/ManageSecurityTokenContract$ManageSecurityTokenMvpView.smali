.class interface abstract Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;
.super Ljava/lang/Object;
.source "ManageSecurityTokenContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ManageSecurityTokenMvpView"
.end annotation


# virtual methods
.method public abstract finishAndShowKey(J)V
.end method

.method public abstract hideAction()V
.end method

.method public abstract operationChangePinSecurityToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract operationImportKey([B)V
.end method

.method public abstract operationPromote(J[BLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract operationResetSecurityToken()V
.end method

.method public abstract requestStoragePermission()V
.end method

.method public abstract resetStatusLines()V
.end method

.method public abstract showActionEmptyToken()V
.end method

.method public abstract showActionImport()V
.end method

.method public abstract showActionLocked(I)V
.end method

.method public abstract showActionRetryOrFromFile()V
.end method

.method public abstract showActionUnsupportedToken()V
.end method

.method public abstract showActionViewKey()V
.end method

.method public abstract showAdminPinDialog()V
.end method

.method public abstract showConfirmResetDialog()V
.end method

.method public abstract showDisplayLogActivity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract showErrorCannotReset(Z)V
.end method

.method public abstract showErrorCannotUnlock()V
.end method

.method public abstract showFileSelectDialog()V
.end method

.method public abstract startCreateKeyForToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
.end method

.method public abstract statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V
.end method

.method public abstract statusLineError()V
.end method

.method public abstract statusLineOk()V
.end method
