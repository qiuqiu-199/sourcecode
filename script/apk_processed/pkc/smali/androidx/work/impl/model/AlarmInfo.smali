.class public Landroidx/work/impl/model/AlarmInfo;
.super Ljava/lang/Object;
.source "AlarmInfo.java"


# instance fields
.field public final alarmId:I

.field public final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    .line 52
    iput p2, p0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    check-cast p1, Landroidx/work/impl/model/AlarmInfo;

    .line 62
    iget v1, p0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    iget v2, p1, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    if-eq v1, v2, :cond_2

    return v0

    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget v1, p0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    add-int/2addr v0, v1

    return v0
.end method
