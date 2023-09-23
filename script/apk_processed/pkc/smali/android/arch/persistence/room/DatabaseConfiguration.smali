.class public Landroid/arch/persistence/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final allowMainThreadQueries:Z

.field public final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

.field public final name:Ljava/lang/String;

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;",
            "Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;ZZ)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p3, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    .line 89
    iput-object p1, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    .line 92
    iput-object p5, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 93
    iput-boolean p6, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 94
    iput-boolean p7, p0, Landroid/arch/persistence/room/DatabaseConfiguration;->requireMigration:Z

    return-void
.end method
