.class Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ObservationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "inaturalist.db"

    .line 58
    invoke-static {}, Lorg/inaturalist/android/ObservationProvider;->access$000()Lorg/inaturalist/android/SQLiteCursorFactory;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    iput-object p1, p0, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-gez v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 64
    invoke-static {}, Lorg/inaturalist/android/Observation;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lorg/inaturalist/android/ObservationPhoto;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lorg/inaturalist/android/Project;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lorg/inaturalist/android/ProjectObservation;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/inaturalist/android/ProjectField;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lorg/inaturalist/android/ProjectFieldValue;->sqlCreate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, "ObservationProvider"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x7

    if-ge p2, p3, :cond_0

    const-string p3, "observation_photos"

    const-string v0, "uuid"

    const-string v1, "TEXT"

    .line 79
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "observations"

    const-string v0, "uuid"

    const-string v1, "TEXT"

    .line 80
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p3, 0x8

    if-ge p2, p3, :cond_1

    const-string p3, "observations"

    const-string v0, "preferred_common_name"

    const-string v1, "TEXT"

    .line 83
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p3, 0x9

    if-ge p2, p3, :cond_2

    const-string p3, "observation_photos"

    const-string v0, "photo_filename"

    const-string v1, "TEXT"

    .line 86
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p3, 0xa

    if-ge p2, p3, :cond_3

    const-string p3, "DROP TABLE IF EXISTS project_fields"

    .line 91
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lorg/inaturalist/android/ProjectField;->sqlCreate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    new-instance p3, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS_ONLINE:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p3, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    iget-object v0, p0, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    const/16 p3, 0xb

    if-ge p2, p3, :cond_4

    const-string p3, "observation_photos"

    const-string v0, "is_deleted"

    const-string v1, "INTEGER"

    .line 99
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 p3, 0xc

    if-ge p2, p3, :cond_5

    const-string p3, "observation_photos"

    const-string v0, "original_photo_filename"

    const-string v1, "TEXT"

    .line 103
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 p3, 0xd

    if-ge p2, p3, :cond_6

    const-string p3, "observations"

    const-string v0, "private_place_guess"

    const-string v1, "TEXT"

    .line 107
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 p3, 0xe

    if-ge p2, p3, :cond_7

    const-string p3, "observations"

    const-string v0, "owners_identification_from_vision"

    const-string v1, "INTEGER"

    .line 111
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 p3, 0xf

    if-ge p2, p3, :cond_8

    const-string p3, "projects"

    const-string v0, "project_type"

    const-string v1, "TEXT"

    .line 115
    invoke-direct {p0, p1, p3, v0, v1}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 p3, 0x10

    if-ge p2, p3, :cond_9

    const-string p2, "observations"

    const-string p3, "scientific_name"

    const-string v0, "TEXT"

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "observations"

    const-string p3, "rank"

    const-string v0, "TEXT"

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "observations"

    const-string p3, "rank_level"

    const-string v0, "INTEGER"

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/ObservationProvider$DatabaseHelper;->addColumnIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
