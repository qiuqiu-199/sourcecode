.class public abstract Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;
.source "CachingCryptoOperationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "S:",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">",
        "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment<",
        "TT;TS;>;"
    }
.end annotation


# static fields
.field public static final ARG_CACHED_ACTIONS:Ljava/lang/String; = "cached_actions"


# instance fields
.field private mCachedActionsParcel:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected cacheActionsParcel(Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->cacheActionsParcel(Landroid/os/Parcelable;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract createOperationInput()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected getCachedActionsParcel()Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->getCachedActionsParcel()Landroid/os/Parcelable;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 43
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string v0, "cached_actions"

    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public onCryptoOperationCancelled()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 73
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 57
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 58
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    return-void
.end method

.method public onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 36
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cached_actions"

    .line 38
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->mCachedActionsParcel:Landroid/os/Parcelable;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
