.class Landroidx/work/impl/model/AlarmInfoDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "AlarmInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/AlarmInfoDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/AlarmInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/AlarmInfoDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/AlarmInfoDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 21
    iput-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl$1;->this$0:Landroidx/work/impl/model/AlarmInfoDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/AlarmInfo;)V
    .locals 3

    .line 29
    iget-object v0, p2, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/AlarmInfo;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 34
    iget p2, p2, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Landroidx/work/impl/model/AlarmInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/AlarmInfoDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/AlarmInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR FAIL INTO `alarmInfo`(`work_spec_id`,`alarm_id`) VALUES (?,?)"

    return-object v0
.end method
