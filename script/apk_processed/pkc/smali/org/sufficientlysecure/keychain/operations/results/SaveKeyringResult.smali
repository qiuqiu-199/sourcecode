.class public Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;
.super Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.source "SaveKeyringResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAVED_PUBLIC:I = 0x8

.field public static final SAVED_SECRET:I = 0x10

.field public static final UPDATED:I = 0x4


# instance fields
.field public final savedMasterKeyId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 31
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 48
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(Landroid/os/Parcel;)V

    .line 49
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
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public updated()Z
    .locals 5

    move-object/16 v2, p0

    .line 44
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->mResult:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;--->updated()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 54
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/results/SaveKeyringResult;->savedMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 59
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
