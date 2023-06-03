.class Lcom/amplitude/api/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final CREATE_IDENTIFYS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

.field private static final CREATE_LONG_STORE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

.field private static final CREATE_STORE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

.field private static final EVENT_FIELD:Ljava/lang/String; = "event"

.field protected static final EVENT_TABLE_NAME:Ljava/lang/String; = "events"

.field protected static final IDENTIFY_TABLE_NAME:Ljava/lang/String; = "identifys"

.field private static final ID_FIELD:Ljava/lang/String; = "id"

.field private static final KEY_FIELD:Ljava/lang/String; = "key"

.field protected static final LONG_STORE_TABLE_NAME:Ljava/lang/String; = "long_store"

.field protected static final STORE_TABLE_NAME:Ljava/lang/String; = "store"

.field private static final TAG:Ljava/lang/String; = "com.amplitude.api.DatabaseHelper"

.field private static final VALUE_FIELD:Ljava/lang/String; = "value"

.field static instance:Lcom/amplitude/api/DatabaseHelper;

.field private static final logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.amplitude.api"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 61
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "com.amplitude.api"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    return-void
.end method

.method private declared-synchronized addEventToTable(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 180
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "event"

    .line 181
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 182
    invoke-virtual {v4, p1, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v4, v2

    if-nez p2, :cond_0

    .line 184
    :try_start_1
    sget-object p2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "Insert into %s failed"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 191
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-wide v4, v2

    .line 187
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v6, "addEvent to %s failed"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, p2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 193
    :goto_2
    monitor-exit p0

    return-wide v4

    .line 191
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 176
    monitor-exit p0

    throw p1
.end method

.method private static convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 404
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cursor window allocation of"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance p0, Lcom/amplitude/api/CursorWindowAllocationException;

    invoke-direct {p0, v0}, Lcom/amplitude/api/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_0
    throw p0
.end method

.method private delete()V
    .locals 4

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    .line 380
    iget-object v0, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 382
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "delete failed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static declared-synchronized getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;
    .locals 2

    const-class v0, Lcom/amplitude/api/DatabaseHelper;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->instance:Lcom/amplitude/api/DatabaseHelper;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/amplitude/api/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amplitude/api/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amplitude/api/DatabaseHelper;->instance:Lcom/amplitude/api/DatabaseHelper;

    .line 57
    :cond_0
    sget-object p0, Lcom/amplitude/api/DatabaseHelper;->instance:Lcom/amplitude/api/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getEventCountFromTable(Ljava/lang/String;)J
    .locals 10

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 299
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v0, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 296
    :goto_0
    :try_start_3
    sget-object v4, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v5, "com.amplitude.api.DatabaseHelper"

    const-string v6, "getNumberRows for %s failed"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 299
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 303
    :goto_1
    monitor-exit p0

    return-wide v0

    :goto_2
    if-eqz v2, :cond_2

    .line 299
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    .line 301
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 287
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getNthEventIdFromTable(Ljava/lang/String;J)J
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT id FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " LIMIT 1 OFFSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1

    sub-long/2addr p2, v5

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 321
    invoke-virtual {v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_4

    :catch_0
    move-exception p3

    move-object v0, p2

    goto :goto_2

    :catch_1
    move-exception p3

    .line 326
    :try_start_2
    sget-object v0, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    invoke-virtual {v0, v3, p3}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p2, :cond_0

    .line 332
    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 334
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p3

    .line 329
    :goto_2
    :try_start_4
    sget-object p2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v3, "com.amplitude.api.DatabaseHelper"

    const-string v4, "getNthEventId from %s failed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1, p3}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    .line 332
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 336
    :goto_3
    monitor-exit p0

    return-wide v1

    :goto_4
    if-eqz v0, :cond_1

    .line 332
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    .line 334
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 314
    :goto_6
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeEventFromTable(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 371
    :try_start_2
    sget-object p3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.DatabaseHelper"

    const-string v1, "removeEvent from %s failed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 375
    :goto_1
    monitor-exit p0

    return-void

    .line 373
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 367
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeEventsFromTable(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 352
    :try_start_2
    sget-object p3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.DatabaseHelper"

    const-string v1, "removeEvents from %s failed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 356
    :goto_1
    monitor-exit p0

    return-void

    .line 354
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 348
    monitor-exit p0

    throw p1
.end method

.method private resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS store"

    .line 108
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS long_store"

    .line 109
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS events"

    .line 110
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS identifys"

    .line 111
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method declared-synchronized addEvent(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->addEventToTable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addIdentify(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    .line 173
    invoke-direct {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->addEventToTable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dbFileExists()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amplitude/api/DatabaseHelper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method declared-synchronized deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "key=?"

    const/4 v4, 0x1

    .line 159
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p1

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 161
    :try_start_2
    sget-object p2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "deleteKeyFromTable failed"

    invoke-virtual {p2, v2, v3, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :try_start_3
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 163
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getEventCount()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    .line 276
    invoke-direct {p0, v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCountFromTable(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getEvents(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "events"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/amplitude/api/DatabaseHelper;->getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    monitor-enter p0

    .line 241
    :try_start_0
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 244
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x2

    .line 245
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "id"

    aput-object v6, v5, v13

    const-string v6, "event"

    aput-object v6, v5, v12

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id <= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v15, "id ASC"

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v14

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v5

    move-object v5, v0

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v15

    move-object/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lcom/amplitude/api/DatabaseHelper;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 253
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 258
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "event_id"

    .line 259
    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 260
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 268
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v14, v1

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v14, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v14, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 265
    :goto_4
    :try_start_4
    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v14, :cond_4

    .line 268
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v0

    .line 263
    :goto_5
    :try_start_6
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "getEvents from %s failed"

    new-array v4, v12, [Ljava/lang/Object;

    aput-object p1, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v14, :cond_4

    .line 268
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 272
    :goto_6
    monitor-exit p0

    return-object v11

    :goto_7
    if-eqz v14, :cond_5

    .line 268
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 240
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIdentifyCount()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    .line 280
    invoke-direct {p0, v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCountFromTable(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getIdentifys(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v1, "identifys"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/amplitude/api/DatabaseHelper;->getEventsFromTable(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "long_store"

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getNthEventId(J)J
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    .line 307
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->getNthEventIdFromTable(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getNthIdentifyId(J)J
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    .line 311
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->getNthEventIdFromTable(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTotalEventCount()J
    .locals 5

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getIdentifyCount()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "store"

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/amplitude/api/DatabaseHelper;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x2

    .line 209
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "key"

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const-string/jumbo v1, "value"

    const/4 v11, 0x1

    aput-object v1, v4, v11

    const-string v5, "key = ?"

    new-array v6, v11, [Ljava/lang/String;

    aput-object p2, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/amplitude/api/DatabaseHelper;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "store"

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 222
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p2, v0

    .line 219
    :goto_3
    :try_start_3
    invoke-static {p1}, Lcom/amplitude/api/DatabaseHelper;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_2

    .line 222
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p2, v0

    .line 217
    :goto_4
    :try_start_5
    sget-object v1, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v2, "com.amplitude.api.DatabaseHelper"

    const-string v3, "getValue failed"

    invoke-virtual {v1, v2, v3, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_2

    .line 222
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 226
    :goto_5
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz p2, :cond_3

    .line 222
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    .line 224
    :cond_3
    :goto_7
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 204
    :goto_8
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized insertOrReplaceKeyLongValue(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "long_store"

    .line 121
    invoke-virtual {p0, p2, p1}, Lcom/amplitude/api/DatabaseHelper;->deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "long_store"

    .line 122
    invoke-virtual {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide p1

    .line 120
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized insertOrReplaceKeyValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "store"

    .line 116
    invoke-virtual {p0, p2, p1}, Lcom/amplitude/api/DatabaseHelper;->deleteKeyFromTable(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "store"

    .line 117
    invoke-virtual {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide p1

    .line 115
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized insertOrReplaceKeyValueToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 129
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "key"

    .line 130
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    instance-of p2, p3, Ljava/lang/Long;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "value"

    .line 132
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "value"

    .line 134
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x0

    const/4 p3, 0x5

    .line 136
    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    .line 143
    :try_start_1
    sget-object p3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.DatabaseHelper"

    const-string v1, "Insert failed"

    invoke-virtual {p3, v0, v1}, Lcom/amplitude/api/AmplitudeLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p3

    move-wide v0, p1

    move-object p1, p3

    goto :goto_2

    .line 150
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 146
    :goto_2
    :try_start_3
    sget-object p2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.DatabaseHelper"

    const-string v2, "insertOrReplaceKeyValue failed"

    invoke-virtual {p2, p3, v2, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-direct {p0}, Lcom/amplitude/api/DatabaseHelper;->delete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide p1, v0

    .line 152
    :goto_3
    monitor-exit p0

    return-wide p1

    .line 150
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/amplitude/api/DatabaseHelper;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    .line 67
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    .line 68
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    .line 72
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    .line 73
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    if-le p2, p3, :cond_0

    .line 79
    sget-object p2, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string p3, "com.amplitude.api.DatabaseHelper"

    const-string v0, "onUpgrade() with invalid oldVersion and newVersion"

    invoke-virtual {p2, p3, v0}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 102
    sget-object p3, Lcom/amplitude/api/DatabaseHelper;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade() with unknown oldVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1}, Lcom/amplitude/api/DatabaseHelper;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :pswitch_0
    const-string p2, "CREATE TABLE IF NOT EXISTS store (key TEXT PRIMARY KEY NOT NULL, value TEXT);"

    .line 90
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-gt p3, p2, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    const-string p2, "CREATE TABLE IF NOT EXISTS identifys (id INTEGER PRIMARY KEY AUTOINCREMENT, event TEXT);"

    .line 94
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE IF NOT EXISTS long_store (key TEXT PRIMARY KEY NOT NULL, value INTEGER);"

    .line 95
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x3

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 395
    invoke-virtual/range {p1 .. p9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized removeEvent(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    .line 359
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 358
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeEvents(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    .line 340
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventsFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 339
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeIdentify(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    .line 363
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 362
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeIdentifys(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "identifys"

    .line 344
    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/api/DatabaseHelper;->removeEventsFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 343
    monitor-exit p0

    throw p1
.end method
