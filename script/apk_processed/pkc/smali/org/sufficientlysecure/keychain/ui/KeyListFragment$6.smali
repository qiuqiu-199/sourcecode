.class Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;
.super Ljava/lang/Object;
.source "KeyListFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->benchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 617
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;---><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->createOperationInput()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 621
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;->newInstance()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 635
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 617
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 626
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 617
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method