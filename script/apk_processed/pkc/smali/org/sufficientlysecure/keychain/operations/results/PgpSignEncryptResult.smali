.class public Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "PgpSignEncryptResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_KEY_DISALLOWED:I = 0x21


# instance fields
.field mDetachedSignature:[B

.field private mMicAlgDigestName:Ljava/lang/String;

.field public mOperationTime:J

.field mOutputBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 47
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 56
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mDetachedSignature:[B

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 52
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDetachedSignature()[B
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mDetachedSignature:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->getDetachedSignature()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMicAlgDigestName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 97
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mMicAlgDigestName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->getMicAlgDigestName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mOutputBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->getOutputBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDetachedSignature([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 39
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mDetachedSignature:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->setDetachedSignature([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setMicAlgDigestName(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 93
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mMicAlgDigestName:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->setMicAlgDigestName(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOutputBytes([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 61
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mOutputBytes:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->setOutputBytes([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 73
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mDetachedSignature:[B

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->mDetachedSignature:[B

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
