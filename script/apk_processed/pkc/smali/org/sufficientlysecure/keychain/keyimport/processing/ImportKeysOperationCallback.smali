.class public Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;
.super Ljava/lang/Object;
.source "ImportKeysOperationCallback.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

.field private final mPosition:Ljava/lang/Integer;

.field private final mResultListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mResultListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

    .line 37
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 38
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mPosition:Ljava/lang/Integer;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;---><init>(Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Ljava/lang/Integer;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 58
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mResultListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mPosition:Ljava/lang/Integer;

    invoke-interface {v0, v3, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 24
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 48
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mResultListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->mPosition:Ljava/lang/Integer;

    invoke-interface {v0, v3, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;->handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 24
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
