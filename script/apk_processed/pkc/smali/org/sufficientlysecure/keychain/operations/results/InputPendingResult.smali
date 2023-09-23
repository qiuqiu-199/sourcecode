.class public Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.super Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.source "InputPendingResult.java"


# static fields
.field public static final RESULT_PENDING:I = 0x9


# instance fields
.field public final mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field final mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;


# direct methods
.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 38
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 58
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/16 v0, 0x9

    .line 42
    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 43
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "sub result must be pending!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 46
    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 47
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x9

    .line 52
    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 53
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 54
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 75
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;--->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPending()Z
    .locals 5

    move-object/16 v2, p0

    .line 71
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mResult:I

    const/16 v1, 0x9

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;--->isPending()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 65
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
