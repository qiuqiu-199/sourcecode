.class Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TemporaryFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemporaryStorageDatabase"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 125
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;->this$0:Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;

    const-string v3, "tempstorage.db"

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 126
    invoke-direct {v2, v4, v3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;---><init>(Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const-string v0, "CREATE TABLE IF NOT EXISTS files (id TEXT PRIMARY KEY, name TEXT, mimetype TEXT, time INTEGER);"

    .line 131
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;--->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    move/16 p0, p3

    const-string v0, "Upgrading files db from %s to %s"

    const/4 v1, 0x2

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v6, "DROP TABLE IF EXISTS files"

    .line 145
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v6, "CREATE TABLE IF NOT EXISTS files (id TEXT PRIMARY KEY, name TEXT, time INTEGER);"

    .line 146
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :pswitch_1
    const-string v6, "ALTER TABLE files ADD COLUMN mimetype TEXT"

    .line 152
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$TemporaryStorageDatabase;--->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
