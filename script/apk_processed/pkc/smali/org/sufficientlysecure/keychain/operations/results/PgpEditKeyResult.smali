.class public Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "PgpEditKeyResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient mRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

.field public final mRingMasterKeyId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 35
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 36
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRingMasterKeyId:J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 51
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRingMasterKeyId:J

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 42
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRingMasterKeyId:J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;--->getRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 57
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->mRingMasterKeyId:J

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
