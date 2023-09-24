.class public Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntryParcel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIndent:I

.field public final mParameters:[Ljava/lang/Object;

.field public final mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 152
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 133
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->values()[Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    .line 135
    invoke-virtual {v3}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 136
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 127
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    .line 129
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 130
    iget v2, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    add-int/2addr v2, v3

    iput v2, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 119
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    .line 121
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 122
    iput v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    .line 123
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

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;---><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget v1, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    add-int/2addr v1, v5

    const-string v5, "                                                                "

    .line 181
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v1, v5, :cond_0

    const-string v5, "                                                                "

    .line 182
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const-string v5, "                                                                "

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 185
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->LOG_LEVEL_NAME:[Ljava/lang/String;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ordinal()I

    move-result v1

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v5, v5, v2

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 189
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v5

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v5

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;--->getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    .line 172
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 149
    iget v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mIndent:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
