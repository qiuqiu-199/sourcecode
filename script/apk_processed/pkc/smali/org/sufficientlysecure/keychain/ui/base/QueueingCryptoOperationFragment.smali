.class public abstract Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "QueueingCryptoOperationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "S:",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment<",
        "TT;TS;>;"
    }
.end annotation


# static fields
.field public static final ARG_QUEUED_RESULT:Ljava/lang/String; = "queued_result"


# instance fields
.field private mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 46
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 50
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>(Ljava/lang/Integer;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;---><init>(Ljava/lang/Integer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 79
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string v0, "queued_result"

    .line 82
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    :cond_0
    return-void
.end method

.method public final onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 104
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    .line 108
    :cond_0
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 95
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    .line 99
    :cond_0
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 89
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->hideKeyboard()V

    .line 90
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 72
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "queued_result"

    .line 74
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 55
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;--->onViewStateRestored(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 59
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->mQueuedResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 66
    throw v0

    :cond_1
    :goto_1
    return-void
.end method
