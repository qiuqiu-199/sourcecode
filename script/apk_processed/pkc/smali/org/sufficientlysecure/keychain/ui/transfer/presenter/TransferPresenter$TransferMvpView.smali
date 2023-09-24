.class public interface abstract Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;
.super Ljava/lang/Object;
.source "TransferPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferMvpView"
.end annotation


# virtual methods
.method public abstract addFakeBackStackItem(Ljava/lang/String;)V
.end method

.method public abstract createCryptoOperationHelper(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            "S:",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
            ">(",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "TT;TS;>;)",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract dismissConfirmationIfExists()V
.end method

.method public abstract finishFragmentOrActivity()V
.end method

.method public abstract releaseCryptoOperationHelper()V
.end method

.method public abstract scanQrCode()V
.end method

.method public abstract setQrImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setReceivedKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end method

.method public abstract setSecretKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
.end method

.method public abstract setShowDoneIcon(Z)V
.end method

.method public abstract setShowSecretKeyEmptyView(Z)V
.end method

.method public abstract showConfirmSendDialog()V
.end method

.method public abstract showConnectionEstablished(Ljava/lang/String;)V
.end method

.method public abstract showErrorBadKey()V
.end method

.method public abstract showErrorConnectionError(Ljava/lang/String;)V
.end method

.method public abstract showErrorConnectionFailed()V
.end method

.method public abstract showErrorListenFailed()V
.end method

.method public abstract showEstablishingConnection()V
.end method

.method public abstract showNotOnWifi()V
.end method

.method public abstract showReceivingKeys()V
.end method

.method public abstract showResultNotification(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
.end method

.method public abstract showViewDisconnected()V
.end method

.method public abstract showWaitingForConnection()V
.end method

.method public abstract showWifiError(Ljava/lang/String;)V
.end method
