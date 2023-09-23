.class public abstract Landroid/arch/persistence/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomDatabase$Callback;,
        Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;,
        Landroid/arch/persistence/room/RoomDatabase$Builder;
    }
.end annotation


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected volatile mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

.field private final mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

.field private mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public beginTransaction()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 212
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 213
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 204
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
.end method

.method protected abstract createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end method

.method public endTransaction()V
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 221
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->refreshVersionsAsync()V

    :cond_0
    return-void
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/arch/persistence/room/DatabaseConfiguration;)V
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    .line 95
    iget-object v0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 96
    iget-boolean p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean p1, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    return-void
.end method

.method protected internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker;->internalInit(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 193
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .line 182
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
