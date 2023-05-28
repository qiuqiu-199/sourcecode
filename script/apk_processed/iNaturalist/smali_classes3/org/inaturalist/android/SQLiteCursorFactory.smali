.class public Lorg/inaturalist/android/SQLiteCursorFactory;
.super Ljava/lang/Object;
.source "SQLiteCursorFactory.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# static fields
.field private static lastQuery:Ljava/lang/String;


# instance fields
.field private debugQueries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/inaturalist/android/SQLiteCursorFactory;->debugQueries:Z

    .line 25
    iput-boolean v0, p0, Lorg/inaturalist/android/SQLiteCursorFactory;->debugQueries:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/inaturalist/android/SQLiteCursorFactory;->debugQueries:Z

    .line 29
    iput-boolean p1, p0, Lorg/inaturalist/android/SQLiteCursorFactory;->debugQueries:Z

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 2

    .line 34
    iget-boolean v0, p0, Lorg/inaturalist/android/SQLiteCursorFactory;->debugQueries:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteQuery;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v1, Lorg/inaturalist/android/SQLiteCursorFactory;->lastQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/inaturalist/android/SQLiteCursorFactory;->lastQuery:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    :cond_0
    sput-object v0, Lorg/inaturalist/android/SQLiteCursorFactory;->lastQuery:Ljava/lang/String;

    const-string v1, "SQL"

    .line 38
    invoke-static {v1, v0}, Lorg/inaturalist/android/LoggingUtils;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object v0
.end method
