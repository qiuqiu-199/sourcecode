.class public Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "DecryptVerifyResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_KEY_DISALLOWED:I = 0x21

.field public static final RESULT_NO_DATA:I = 0x11


# instance fields
.field mCachedCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field mDecryptionMetadata:Lorg/openintents/openpgp/OpenPgpMetadata;

.field mDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field public mOperationTime:J

.field mOutputBytes:[B

.field mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

.field mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

.field private final mSkippedDisallowedKeys:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 48
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[J)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 53
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 54
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 64
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 65
    const-class v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 66
    const-class v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 67
    const-class v0, Lorg/openintents/openpgp/OpenPgpMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpMetadata;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionMetadata:Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 68
    const-class v0, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mCachedCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 69
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    .line 71
    invoke-virtual {v2}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 59
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCachedCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 96
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mCachedCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getCachedCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;
    .locals 4

    move-object/16 v1, p0

    .line 104
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionMetadata:Lorg/openintents/openpgp/OpenPgpMetadata;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getDecryptionMetadata()Lorg/openintents/openpgp/OpenPgpMetadata;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 116
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOutputBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getOutputBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecurityProblem()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;
    .locals 4

    move-object/16 v1, p0

    .line 149
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getSecurityProblem()Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 4

    move-object/16 v1, p0

    .line 80
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSkippedDisallowedKeys()[J
    .locals 4

    move-object/16 v1, p0

    .line 120
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->getSkippedDisallowedKeys()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeysDisallowed()Z
    .locals 5

    move-object/16 v2, p0

    .line 76
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mResult:I

    const/16 v1, 0x21

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->isKeysDisallowed()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCachedCryptoInputParcel(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 100
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mCachedCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setCachedCryptoInputParcel(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDecryptionMetadata(Lorg/openintents/openpgp/OpenPgpMetadata;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 108
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionMetadata:Lorg/openintents/openpgp/OpenPgpMetadata;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setDecryptionMetadata(Lorg/openintents/openpgp/OpenPgpMetadata;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDecryptionResult(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 92
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setDecryptionResult(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOutputBytes([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 112
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mOutputBytes:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setOutputBytes([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecurityProblemResult(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 153
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setSecurityProblemResult(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 84
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->setSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 128
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mDecryptionMetadata:Lorg/openintents/openpgp/OpenPgpMetadata;

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mCachedCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSkippedDisallowedKeys:[J

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 135
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
