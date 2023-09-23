.class Landroid/arch/persistence/room/InvalidationTracker$1;
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

    .line 278
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 281
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 294
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 298
    :cond_2
    array-length v1, v0

    .line 299
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 300
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :try_start_1
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 304
    aget v4, v0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 309
    :pswitch_0
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v4, v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->access$400(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V

    goto :goto_2

    .line 306
    :pswitch_1
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v4, v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    :cond_3
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 317
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 315
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    .line 321
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
