.class public Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "GetKeyResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_ERROR_FILE_NOT_FOUND:I = 0x71

.field public static final RESULT_ERROR_NO_ENABLED_SOURCE:I = 0x81

.field public static final RESULT_ERROR_NO_PGP_PARTS:I = 0x21

.field public static final RESULT_ERROR_NO_VALID_KEYS:I = 0x11

.field public static final RESULT_ERROR_QUERY_FAILED:I = 0x61

.field public static final RESULT_ERROR_QUERY_NOT_IMPLEMENTED:I = 0x91

.field public static final RESULT_ERROR_QUERY_TOO_SHORT:I = 0x31

.field public static final RESULT_ERROR_TOO_MANY_RESPONSES:I = 0x41

.field public static final RESULT_ERROR_TOO_SHORT_OR_TOO_MANY_RESPONSES:I = 0x51


# instance fields
.field public mNonPgpPartsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 37
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 56
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 42
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getNonPgpPartsCount()I
    .locals 4

    move-object/16 v1, p0

    .line 29
    iget v0, v1, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->mNonPgpPartsCount:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;--->getNonPgpPartsCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setNonPgpPartsCount(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 33
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->mNonPgpPartsCount:I

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;--->setNonPgpPartsCount(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 61
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
