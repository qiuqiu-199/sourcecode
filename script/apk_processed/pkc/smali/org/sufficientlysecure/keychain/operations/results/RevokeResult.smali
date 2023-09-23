.class public Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;
.super Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;
.source "RevokeResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMasterKeyId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-wide/16 p0, p3

    .line 38
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 39
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->mMasterKeyId:J

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 58
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->mMasterKeyId:J

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 51
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    const-wide/16 v1, -0x1

    .line 53
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->mMasterKeyId:J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 83
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->getResult()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/16 v1, 0xdac

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v2, 0x7f110c4b

    .line 97
    invoke-virtual {v10, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v0

    move-object v4, v2

    const/16 v5, 0xdac

    goto :goto_1

    .line 100
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const-string v1, "internal error"

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v1, 0x7f110c49

    .line 107
    invoke-virtual {v10, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v0

    move-object v4, v1

    const/4 v5, 0x0

    .line 110
    :goto_1
    new-instance v7, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult$2;

    invoke-direct {v7, v9, v10}, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult$2;-><init>(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;Landroid/app/Activity;)V

    const v0, 0x7f110cbe

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v3, v10

    .line 110
    invoke-static/range {v3 .. v8}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v10

    return-object v10

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;--->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 64
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;->mMasterKeyId:J

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
