.class public abstract Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.super Landroid/support/v4/app/Fragment;
.source "CryptoOperationFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "S:",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "TT;TS;>;"
    }
.end annotation


# instance fields
.field private final mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object/16 v3, p0

    .line 55
    invoke-direct {v3}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v1, 0x7f110c21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;---><init>()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 63
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;---><init>(ILjava/lang/Integer;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 59
    invoke-direct {v2}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;---><init>(Ljava/lang/Integer;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract createOperationInput()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected cryptoOperation()V
    .locals 4

    move-object/16 v1, p0

    .line 81
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->cryptoOperation()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 85
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 116
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "input_method"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 69
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgressMessageResource(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 100
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->setProgressMessageResource(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;--->setProgressMessageResource(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
