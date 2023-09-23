.class public Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "SignEncryptResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mResultBytes:[B

.field mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 40
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 41
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;[B)V"
        }
    .end annotation

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 45
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 46
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    .line 47
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResultBytes:[B

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/util/ArrayList;[B)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 51
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 52
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 35
    invoke-direct {v0, v1, v2, p1}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 36
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getResultBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 56
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResultBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;--->getResultBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;--->getResults()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 68
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
