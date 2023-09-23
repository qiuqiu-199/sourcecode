.class public Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory;
.super Ljava/lang/Object;
.source "CloseDatabaseCursorFactory.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory$CloseDatabaseCursor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 38
    new-instance v0, Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory$CloseDatabaseCursor;

    invoke-direct {v0, v2, v3, p0, p1}, Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory$CloseDatabaseCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object v0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/CloseDatabaseCursorFactory;--->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
