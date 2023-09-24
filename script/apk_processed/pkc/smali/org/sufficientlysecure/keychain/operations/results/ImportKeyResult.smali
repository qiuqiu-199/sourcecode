.class public Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "ImportKeyResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FAIL_NOTHING:I = 0x41

.field public static final RESULT_OK_NEWKEYS:I = 0x8

.field public static final RESULT_OK_UPDATED:I = 0x10

.field public static final RESULT_WITH_ERRORS:I = 0x20


# instance fields
.field public final mBadKeys:I

.field public mCanonicalizedKeyRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;",
            ">;"
        }
    .end annotation
.end field

.field public final mImportedMasterKeyIds:[J

.field public final mMissingKeys:I

.field public final mNewKeys:I

.field public final mSecret:I

.field public final mUpdatedKeys:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 13

    move-object/16 v10, p0

    move/16 v11, p1

    move-object/16 v12, p2

    const/4 v0, 0x0

    .line 96
    new-array v9, v0, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v2, v11

    move-object v3, v12

    invoke-direct/range {v1 .. v9}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIIII[J)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIIII[J)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    move-object/16 p5, p8

    .line 102
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 103
    iput p0, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    .line 104
    iput p1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    .line 105
    iput p2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    .line 106
    iput p3, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    .line 107
    iput p4, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mSecret:I

    .line 108
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mImportedMasterKeyIds:[J

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIIII[J)V"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 86
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 87
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    .line 88
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    .line 89
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mSecret:I

    .line 92
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mImportedMasterKeyIds:[J

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 113
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const/4 v1, 0x0

    .line 115
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    .line 116
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    .line 117
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    .line 118
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    .line 119
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mSecret:I

    .line 120
    new-array v1, v1, [J

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mImportedMasterKeyIds:[J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 149
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getResult()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_6

    const/16 v1, 0xdac

    .line 160
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v6, ""

    and-int/lit8 v7, v0, 0x4

    if-lez v7, :cond_0

    .line 166
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f110d4d

    invoke-virtual {v13, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :cond_0
    and-int/2addr v0, v2

    if-lez v0, :cond_1

    .line 171
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110d4c

    invoke-virtual {v13, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    .line 176
    :cond_1
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkBoth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f000a

    iget v8, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 177
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0f000b

    iget v9, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v10, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    .line 180
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v4

    aput-object v6, v2, v3

    .line 179
    invoke-virtual {v0, v8, v9, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f000c

    iget v8, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v9, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    .line 183
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    .line 182
    invoke-virtual {v0, v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkNew()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0f0009

    iget v8, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v9, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    .line 186
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v4

    aput-object v6, v2, v3

    .line 185
    invoke-virtual {v0, v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v0, "internal error"

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkWithErrors()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f000d

    iget v6, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    .line 196
    invoke-virtual {v0, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    move-object v7, v0

    move v8, v4

    move-object v9, v5

    goto :goto_4

    .line 201
    :cond_6
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isFailMissing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 203
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 204
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1107e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    move-object v9, v5

    const/4 v8, 0x0

    goto :goto_4

    .line 205
    :cond_7
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isFailNothing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 207
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    and-int/2addr v0, v2

    if-lez v0, :cond_8

    const v0, 0x7f1107dd

    goto :goto_3

    :cond_8
    const v0, 0x7f1107dc

    .line 208
    :goto_3
    invoke-virtual {v13, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 213
    :cond_9
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 214
    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0008

    iget v2, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, v12, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 218
    :goto_4
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult$2;

    invoke-direct {v10, v12, v13}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult$2;-><init>(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Landroid/app/Activity;)V

    const v0, 0x7f110cbe

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v6, v13

    .line 218
    invoke-static/range {v6 .. v11}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v13

    return-object v13

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getImportedMasterKeyIds()[J
    .locals 4

    move-object/16 v1, p0

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mImportedMasterKeyIds:[J

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->getImportedMasterKeyIds()[J"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isFailMissing()Z
    .locals 4

    move-object/16 v1, p0

    .line 78
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isFailNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isFailMissing()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isFailNothing()Z
    .locals 5

    move-object/16 v2, p0

    .line 74
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mResult:I

    const/16 v1, 0x41

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isFailNothing()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isOkBoth()Z
    .locals 5

    move-object/16 v2, p0

    .line 57
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mResult:I

    const/16 v1, 0x18

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isOkBoth()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isOkNew()Z
    .locals 5

    move-object/16 v2, p0

    .line 62
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mResult:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isOkNew()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isOkUpdated()Z
    .locals 5

    move-object/16 v2, p0

    .line 66
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mResult:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isOkUpdated()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isOkWithErrors()Z
    .locals 5

    move-object/16 v2, p0

    .line 70
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mResult:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->isOkWithErrors()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCanonicalizedKeyRings(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 124
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->setCanonicalizedKeyRings(Ljava/util/ArrayList;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 129
    invoke-super {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mSecret:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mImportedMasterKeyIds:[J

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
