.class public Landroid/arch/persistence/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/persistence/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

.field private mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

.field private final mName:Ljava/lang/String;

.field private mRequireMigration:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    .line 330
    iput-object p3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 331
    iput-boolean p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    .line 332
    new-instance p1, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-direct {p1}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object p1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/arch/persistence/room/RoomDatabase$Callback;)Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ")",
            "Landroid/arch/persistence/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/persistence/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    return-object p0
.end method

.method public build()Landroid/arch/persistence/room/RoomDatabase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    if-nez v0, :cond_2

    .line 449
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 451
    :cond_2
    new-instance v0, Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    iget-object v5, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mMigrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    iget-object v6, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    iget-boolean v8, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mRequireMigration:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/arch/persistence/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZZ)V

    .line 454
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Landroid/arch/persistence/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/RoomDatabase;

    .line 455
    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->init(Landroid/arch/persistence/room/DatabaseConfiguration;)V

    return-object v1
.end method
