.class public Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;
.super Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.source "SingletonResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 32
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 34
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 28
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;-><init>(Landroid/os/Parcel;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 39
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
