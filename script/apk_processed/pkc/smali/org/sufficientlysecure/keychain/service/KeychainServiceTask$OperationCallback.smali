.class public interface abstract Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;
.super Ljava/lang/Object;
.source "KeychainServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationCallback"
.end annotation


# virtual methods
.method public abstract operationFinished(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
.end method

.method public abstract setPreventCancel()V
.end method

.method public abstract setProgress(Ljava/lang/Integer;II)V
.end method
