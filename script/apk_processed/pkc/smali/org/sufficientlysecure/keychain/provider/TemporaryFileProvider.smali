.class public Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;
.super Landroid/content/ContentProvider;
.source "TemporaryFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;,
        Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;,
        Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryFileColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.sufficientlysecure.keychain.tempstorage"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DB_NAME:Ljava/lang/String; = "tempstorage.db"

.field private static final DB_VERSION:I = 0x3

.field private static final TABLE_FILES:Ljava/lang/String; = "files"

.field private static final TEMP_FILES_DIR:Ljava/lang/String; = "temp"

.field private static UUID_PATTERN:Ljava/util/regex/Pattern;

.field private static db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

.field private static tempFilesDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://org.sufficientlysecure.keychain.tempstorage"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "[a-fA-F0-9-]+"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->UUID_PATTERN:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 69
    invoke-direct {v0}, Landroid/content/ContentProvider;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFile(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5

    move-object/16 v2, p0

    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v1, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->createFile(Landroid/content/Context;)Landroid/net/Uri;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 103
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->createFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 93
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mimetype"

    .line 94
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    sget-object v4, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 98
    invoke-static {}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->scheduleCleanupAfterTtl()V

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 161
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 163
    :catch_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->getFile(Landroid/net/Uri;)Ljava/io/File;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 168
    sget-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->UUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v3, Ljava/lang/SecurityException;

    const-string v0, "Can only open temporary files with UUIDs!"

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->tempFilesDir:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->getFile(Ljava/lang/String;)Ljava/io/File;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static scheduleCleanupAfterTtl()V
    .locals 7

    .line 312
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x5265c00

    .line 313
    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/OneTimeWorkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    .line 314
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/work/WorkRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->enqueue([Landroidx/work/WorkRequest;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->scheduleCleanupAfterTtl()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static scheduleCleanupImmediately()V
    .locals 7

    .line 318
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    .line 319
    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 321
    new-array v2, v2, [Landroidx/work/WorkRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->enqueue([Landroidx/work/WorkRequest;)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->scheduleCleanupImmediately()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setMimeType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    .line 119
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->setMimeType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setName(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 113
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->setName(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    if-nez v11, :cond_0

    return v0

    .line 273
    :cond_0
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    if-eqz v11, :cond_1

    const-string v2, "id=?"

    .line 275
    invoke-static {v12, v2}, Lorg/sufficientlysecure/keychain/util/DatabaseUtil;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 276
    new-array v2, v1, [Ljava/lang/String;

    aput-object v11, v2, v0

    invoke-static {p0, v2}, Lorg/sufficientlysecure/keychain/util/DatabaseUtil;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 279
    :cond_1
    sget-object v11, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "files"

    new-array v4, v1, [Ljava/lang/String;

    const-string v11, "id"

    aput-object v11, v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v12

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 282
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 285
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 286
    sget-object v11, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v0, "files"

    invoke-virtual {v11, v0, v12, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    return v11

    :cond_3
    return v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 242
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2, v3}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 244
    new-array v3, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 222
    sget-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "files"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "mimetype"

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-string v4, "id=?"

    new-array v5, v0, [Ljava/lang/String;

    .line 225
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 222
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 228
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v11, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 235
    throw v0

    :cond_1
    :goto_0
    const-string v11, "application/octet-stream"

    return-object v11

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->getType(Landroid/net/Uri;)Ljava/lang/String;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 251
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "id"

    .line 252
    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v5, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v5, v1, :cond_0

    const-string v4, "Insert failed!"

    .line 255
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 259
    :cond_0
    :try_start_0
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    sget-object v5, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    :catch_0
    const-string v4, "File creation failed!"

    .line 261
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()Z
    .locals 6

    move-object/16 v3, p0

    .line 178
    new-instance v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;-><init>(Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;Landroid/content/Context;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->tempFilesDir:Ljava/io/File;

    .line 180
    sget-object v0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->tempFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->onCreate()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 308
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 185
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    .line 186
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Listing temporary files is not allowed, only querying single files."

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v10, 0x0

    const/4 p0, 0x0

    .line 191
    :try_start_0
    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    sget-object p2, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "files"

    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, p0

    const-string v3, "id=?"

    new-array v4, p2, [Ljava/lang/String;

    .line 200
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 202
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, p0

    const-string v1, "_size"

    aput-object v1, v0, p2

    const/4 p2, 0x2

    const-string v1, "_data"

    aput-object v1, v0, p2

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 209
    invoke-interface {v9, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 212
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v10

    .line 215
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v10

    :catch_0
    const-string v9, "file not found!"

    .line 193
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v9, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v10

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 293
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 294
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Update supported only for one field at a time!"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v0, "name"

    .line 296
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mimetype"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Update supported only for name and type field!"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 302
    :cond_2
    sget-object p0, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->db:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "files"

    const-string v0, "id = ?"

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 303
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 302
    invoke-virtual {p0, p1, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4

    .line 300
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Update supported only for plain uri!"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;--->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
