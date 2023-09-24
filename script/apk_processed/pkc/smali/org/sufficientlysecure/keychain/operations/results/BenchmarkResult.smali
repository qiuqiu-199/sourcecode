.class public Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;
.super Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.source "BenchmarkResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 31
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(Landroid/os/Parcel;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 36
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/BenchmarkResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
