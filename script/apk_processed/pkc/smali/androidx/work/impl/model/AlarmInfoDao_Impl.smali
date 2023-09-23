.class public Landroidx/work/impl/model/AlarmInfoDao_Impl;
.super Ljava/lang/Object;
.source "AlarmInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/AlarmInfoDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfAlarmInfo:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfRemoveAlarmInfo:Landroid/arch/persistence/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 21
    new-instance v0, Landroidx/work/impl/model/AlarmInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/AlarmInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/AlarmInfoDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__insertionAdapterOfAlarmInfo:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 37
    new-instance v0, Landroidx/work/impl/model/AlarmInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/AlarmInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/AlarmInfoDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__preparedStmtOfRemoveAlarmInfo:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public getAlarmInfo(Ljava/lang/String;)Landroidx/work/impl/model/AlarmInfo;
    .locals 4

    const-string v0, "SELECT * FROM alarmInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 79
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 86
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 88
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "alarm_id"

    .line 89
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 96
    new-instance v3, Landroidx/work/impl/model/AlarmInfo;

    invoke-direct {v3, v1, v2}, Landroidx/work/impl/model/AlarmInfo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 102
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public insertAlarmInfo(Landroidx/work/impl/model/AlarmInfo;)V
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__insertionAdapterOfAlarmInfo:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public removeAlarmInfo(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__preparedStmtOfRemoveAlarmInfo:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 60
    iget-object v1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 66
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 69
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 72
    iget-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__preparedStmtOfRemoveAlarmInfo:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    .line 71
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 72
    iget-object v1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl;->__preparedStmtOfRemoveAlarmInfo:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method
