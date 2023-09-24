.class final Landroidx/work/impl/WorkDatabase$1;
.super Landroid/arch/persistence/room/RoomDatabase$Callback;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroid/arch/persistence/room/RoomDatabase$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 108
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "UPDATE workspec SET state=0 WHERE state=1"

    .line 110
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0
.end method
