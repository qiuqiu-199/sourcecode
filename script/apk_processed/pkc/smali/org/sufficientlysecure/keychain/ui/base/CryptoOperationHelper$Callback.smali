.class public interface abstract Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
.super Ljava/lang/Object;
.source "CryptoOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "S:",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createOperationInput()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onCryptoOperationCancelled()V
.end method

.method public abstract onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract onCryptoSetProgress(Ljava/lang/String;II)Z
.end method
