.class public interface abstract Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;
.super Ljava/lang/Object;
.source "KeyTransferInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyTransferCallback"
.end annotation


# virtual methods
.method public abstract onConnectionError(Ljava/lang/String;)V
.end method

.method public abstract onConnectionErrorConnect()V
.end method

.method public abstract onConnectionErrorListen()V
.end method

.method public abstract onConnectionErrorNoRouteToHost(Ljava/lang/String;)V
.end method

.method public abstract onConnectionEstablished(Ljava/lang/String;)V
.end method

.method public abstract onConnectionLost()V
.end method

.method public abstract onDataReceivedOk(Ljava/lang/String;)V
.end method

.method public abstract onDataSentOk(Ljava/lang/String;)V
.end method

.method public abstract onServerStarted(Ljava/lang/String;)V
.end method
