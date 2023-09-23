.class interface abstract Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;
.super Ljava/lang/Object;
.source "ManageSecurityTokenContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ManageSecurityTokenMvpPresenter"
.end annotation


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onActivityCreated()V
.end method

.method public abstract onClickConfirmReset()V
.end method

.method public abstract onClickImport()V
.end method

.method public abstract onClickLoadFile()V
.end method

.method public abstract onClickResetToken()V
.end method

.method public abstract onClickRetry()V
.end method

.method public abstract onClickSetupToken()V
.end method

.method public abstract onClickUnlockToken()V
.end method

.method public abstract onClickUnlockTokenImpossible()V
.end method

.method public abstract onClickViewKey()V
.end method

.method public abstract onFileSelected(Landroid/net/Uri;)V
.end method

.method public abstract onImportError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract onImportSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract onInputAdminPin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMenuClickChangePin()V
.end method

.method public abstract onMenuClickViewLog()V
.end method

.method public abstract onPromoteError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract onPromoteSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract onSecurityTokenChangePinCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
.end method

.method public abstract onSecurityTokenChangePinSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
.end method

.method public abstract onSecurityTokenResetCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
.end method

.method public abstract onSecurityTokenResetSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
.end method

.method public abstract onStoragePermissionDenied()V
.end method

.method public abstract onStoragePermissionGranted()V
.end method

.method public abstract setView(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;)V
.end method
