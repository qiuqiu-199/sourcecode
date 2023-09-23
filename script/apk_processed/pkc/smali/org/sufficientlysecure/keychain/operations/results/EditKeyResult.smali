.class public Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "EditKeyResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMasterKeyId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 30
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 31
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/lang/Long;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 46
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 41
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V

    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 36
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 52
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 54
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->mMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
