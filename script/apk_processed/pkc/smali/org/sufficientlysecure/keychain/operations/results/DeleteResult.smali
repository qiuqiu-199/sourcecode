.class public Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "DeleteResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFail:I

.field public final mOk:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 40
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 41
    iput p0, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    .line 42
    iput p1, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 60
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 61
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    .line 62
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 52
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, -0x1

    .line 54
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    .line 55
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    .line 84
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->getResult()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const/16 v1, 0xdac

    .line 95
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v5, ""

    const/4 v6, 0x2

    and-int/2addr v0, v6

    if-lez v0, :cond_0

    .line 101
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f110d4c

    invoke-virtual {v12, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    .line 106
    :cond_0
    iget v7, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    if-lez v7, :cond_1

    iget v7, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    if-lez v7, :cond_1

    .line 107
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 109
    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0006

    iget v7, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    new-array v8, v2, [Ljava/lang/Object;

    iget v9, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    .line 110
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 109
    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f0007

    iget v8, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    aput-object v5, v6, v2

    .line 111
    invoke-virtual {v0, v7, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_1
    iget v7, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    if-lez v7, :cond_2

    .line 114
    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f0005

    iget v8, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    .line 115
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    aput-object v5, v6, v2

    .line 114
    invoke-virtual {v0, v7, v8, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    const v0, 0x7f110112

    .line 117
    invoke-virtual {v12, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v0, "internal error"

    :goto_1
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    goto :goto_3

    .line 126
    :cond_4
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 127
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_ERROR_MULTI_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    if-ne v0, v1, :cond_5

    const v0, 0x7f110c54

    .line 128
    invoke-virtual {v12, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    move-object v8, v4

    const/4 v7, 0x0

    goto :goto_3

    .line 130
    :cond_5
    iget v0, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    if-nez v0, :cond_6

    const v0, 0x7f110113

    .line 131
    invoke-virtual {v12, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0004

    iget v5, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, v11, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 133
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 138
    :goto_3
    new-instance v9, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult$2;

    invoke-direct {v9, v11, v12}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult$2;-><init>(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;Landroid/app/Activity;)V

    const v0, 0x7f110cbe

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v12

    .line 138
    invoke-static/range {v5 .. v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v12

    return-object v12

    const-string v13, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;--->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 67
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mOk:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;->mFail:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
