.class public abstract Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;,
        Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;,
        Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;,
        Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;,
        Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULT:Ljava/lang/String; = "operation_result"

.field static final INDENTATION_WHITESPACE:Ljava/lang/String; = "                                                                "

.field static final LOG_LEVEL_NAME:[Ljava/lang/String;

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_WARNINGS:I = 0x4

.field private static logCache:Lorg/sufficientlysecure/keychain/util/ParcelableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/util/ParcelableCache<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

.field final mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ParcelableCache;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ParcelableCache;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->logCache:Lorg/sufficientlysecure/keychain/util/ParcelableCache;

    const/4 v0, 0x7

    .line 953
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "[DEBUG]"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[INFO]"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[WARN]"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[ERROR]"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "[START]"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "[OK]"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "[CANCEL]"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->LOG_LEVEL_NAME:[Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    .line 83
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;---><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 86
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    .line 89
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->logCache:Lorg/sufficientlysecure/keychain/util/ParcelableCache;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->readFromParcelAndGetFromCache(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public cancelled()Z
    .locals 5

    move-object/16 v2, p0

    .line 101
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->cancelled()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 263
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Tried to show empty log!"

    .line 265
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f110172

    .line 266
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v8, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v8

    return-object v8

    .line 269
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v3

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v1, v4, v1

    check-cast v1, Ljava/lang/Integer;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 271
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v1

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v8, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 282
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->cancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    :goto_1
    move-object v4, v0

    goto :goto_2

    .line 284
    :cond_2
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->success()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->containsWarnings()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    goto :goto_1

    .line 288
    :cond_3
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    goto :goto_1

    .line 291
    :cond_4
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    goto :goto_1

    .line 294
    :goto_2
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0xdac

    .line 298
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$1;

    invoke-direct {v5, v7, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$1;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;Landroid/app/Activity;)V

    const v0, 0x7f110cbe

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    .line 298
    invoke-static/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v8

    return-object v8

    :cond_6
    :goto_3
    const/16 v0, 0xdac

    .line 295
    invoke-static {v8, v2, v0, v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;
    .locals 4

    move-object/16 v1, p0

    .line 105
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getSubResultIfSingle()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getResult()I
    .locals 4

    move-object/16 v1, p0

    .line 93
    iget v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->getResult()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public success()Z
    .locals 5

    move-object/16 v2, p0

    .line 97
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->success()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 964
    iget v3, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mResult:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->logCache:Lorg/sufficientlysecure/keychain/util/ParcelableCache;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->mLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v3, v0, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->cacheAndWriteToParcel(Ljava/lang/Object;Landroid/os/Parcel;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
