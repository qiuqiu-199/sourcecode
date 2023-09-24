.class public Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "CertifyResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCertifyError:I

.field mCertifyOk:I

.field mUploadError:I

.field mUploadOk:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 38
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 47
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 48
    iput p0, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyOk:I

    .line 49
    iput p1, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    .line 50
    iput p2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadOk:I

    .line 51
    iput p3, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadError:I

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIII)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 56
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyOk:I

    .line 58
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    .line 59
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadOk:I

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadError:I

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 43
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    .line 84
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->getResult()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/16 v1, 0xdac

    .line 95
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v5, ""

    and-int/lit8 v6, v0, 0x4

    if-lez v6, :cond_0

    .line 101
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110d4d

    invoke-virtual {v12, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :cond_0
    const/4 v6, 0x2

    and-int/2addr v0, v6

    if-lez v0, :cond_1

    .line 106
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110d4c

    invoke-virtual {v12, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    .line 111
    :cond_1
    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f0002

    iget v8, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyOk:I

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyOk:I

    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    aput-object v5, v6, v2

    .line 111
    invoke-virtual {v0, v7, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget v5, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    if-lez v5, :cond_2

    .line 116
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0f0003

    iget v6, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v7, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    .line 117
    invoke-virtual {v0, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    goto :goto_1

    .line 123
    :cond_3
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 124
    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0001

    iget v5, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, v11, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 124
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v8, v4

    const/4 v7, 0x0

    .line 128
    :goto_1
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;

    invoke-direct {v9, v11, v12}, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult$2;-><init>(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;Landroid/app/Activity;)V

    const v0, 0x7f110cbe

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v12

    .line 128
    invoke-static/range {v5 .. v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v12

    return-object v12

    const-string v13, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;--->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 65
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyOk:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mCertifyError:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadOk:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;->mUploadError:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
