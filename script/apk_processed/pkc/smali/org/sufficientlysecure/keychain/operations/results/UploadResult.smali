.class public Lorg/sufficientlysecure/keychain/operations/results/UploadResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "UploadResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mOkPublic:I

.field final mOkSecret:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 32
    invoke-direct {v1, v2, v3, v0, v0}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 37
    iput p0, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkPublic:I

    .line 38
    iput p1, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkSecret:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 52
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 53
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkPublic:I

    .line 54
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkSecret:I

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 44
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, -0x1

    .line 46
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkPublic:I

    .line 47
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkSecret:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 59
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkPublic:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->mOkSecret:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
