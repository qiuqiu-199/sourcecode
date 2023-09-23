.class Landroid/arch/persistence/room/InvalidationTracker$2;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 346
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    const/4 v1, 0x0

    .line 349
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 351
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 355
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v2, v2, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_1

    .line 389
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 360
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    .line 389
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 367
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$500(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 368
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$600(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v4}, Landroid/arch/persistence/room/InvalidationTracker;->access$700(Landroid/arch/persistence/room/InvalidationTracker;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    .line 369
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    const-string v4, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$600(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/arch/persistence/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x0

    .line 372
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 373
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 374
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 376
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v8, v8, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    aput-wide v5, v8, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    :try_start_5
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v4, v5, v6}, Landroid/arch/persistence/room/InvalidationTracker;->access$702(Landroid/arch/persistence/room/InvalidationTracker;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v4, 0x1

    goto :goto_1

    .line 382
    :cond_3
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v1

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v2

    const/4 v4, 0x0

    :goto_2
    :try_start_7
    const-string v1, "ROOM"

    const-string v3, "Cannot run invalidation tracker. Is the db closed?"

    .line 386
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 389
    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v4, :cond_5

    .line 392
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v0, v0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 393
    :try_start_8
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v1, v1, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v3, v3, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->checkForInvalidation([J)V

    goto :goto_4

    .line 396
    :cond_4
    monitor-exit v0

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :cond_5
    :goto_5
    return-void

    .line 389
    :goto_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
