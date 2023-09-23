.class public Landroid/arch/persistence/room/RoomOpenHelper;
.super Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

.field private final mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

.field private final mIdentityHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget v0, p2, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 48
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    .line 49
    iput-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    .line 50
    iput-object p3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    return-void
.end method

.method private checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 107
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const-string v0, ""

    .line 109
    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 112
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 118
    iget-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 131
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 127
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 61
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 62
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/persistence/room/RoomOpenHelper;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 100
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 101
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    return-void
.end method

.method public onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 2

    .line 68
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v0, v0, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p2, p3}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/migration/Migration;

    .line 73
    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/migration/Migration;->migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-boolean v0, v0, Landroid/arch/persistence/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 87
    :cond_2
    iget-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p2, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 88
    iget-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p2, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_3

    .line 82
    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is necessary. Please provide a Migration in the builder or call"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " fallbackToDestructiveMigration in the builder in which case Room will"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " re-create all of the tables."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    return-void
.end method
