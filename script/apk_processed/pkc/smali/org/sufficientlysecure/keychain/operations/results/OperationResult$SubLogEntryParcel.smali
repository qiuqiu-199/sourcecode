.class public Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;
.super Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
.source "OperationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubLogEntryParcel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 233
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 211
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;-><init>(Landroid/os/Parcel;)V

    .line 212
    const-class v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 204
    invoke-direct {v0, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 205
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 248
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mIndent:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 252
    :cond_0
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;--->getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 4

    move-object/16 v1, p0

    .line 216
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;--->getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v3, 0x1

    .line 226
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 229
    iget v3, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mIndent:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->mSubResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
