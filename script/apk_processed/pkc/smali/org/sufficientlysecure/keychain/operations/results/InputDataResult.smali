.class public Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "InputDataResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

.field public final mMetadata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openintents/openpgp/OpenPgpMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final mOutputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 44
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    const/4 v1, 0x0

    .line 45
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    .line 46
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/openintents/openpgp/OpenPgpMetadata;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 52
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 53
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "number of output URIs must match metadata!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 57
    :cond_0
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    .line 58
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Ljava/util/ArrayList;Ljava/util/ArrayList;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 62
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 63
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    .line 64
    const-class v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 65
    sget-object v0, Lorg/openintents/openpgp/OpenPgpMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 37
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    .line 39
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 40
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputUris()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 69
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;--->getOutputUris()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 79
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 81
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
