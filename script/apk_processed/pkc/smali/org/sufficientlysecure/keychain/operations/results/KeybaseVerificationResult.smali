.class public Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "KeybaseVerificationResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPresenceLabel:Ljava/lang/String;

.field public final mPresenceUrl:Ljava/lang/String;

.field public final mProofUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 34
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lcom/textuality/keybase/lib/prover/Prover;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 42
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 43
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/prover/Prover;->getProofUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/prover/Prover;->getPresenceUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/prover/Prover;->getPresenceLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lcom/textuality/keybase/lib/prover/Prover;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 57
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 50
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, 0x0

    .line 51
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 70
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mProofUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;->mPresenceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
