.class public abstract Landroid/arch/persistence/room/EntityInsertionAdapter;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "EntityInsertionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/persistence/room/SharedSQLiteStatement;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected abstract bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final insert(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method
