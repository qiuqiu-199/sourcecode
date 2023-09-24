.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "WorkDatabase.java"


# static fields
.field private static final PRUNE_THRESHOLD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Z)Landroidx/work/impl/WorkDatabase;
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    const-class p1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, p1}, Landroid/arch/persistence/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    const-class p1, Landroidx/work/impl/WorkDatabase;

    const-string v0, "androidx.work.workdb"

    invoke-static {p0, p1, v0}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 100
    :goto_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroid/arch/persistence/room/RoomDatabase$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addCallback(Landroid/arch/persistence/room/RoomDatabase$Callback;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method static generateCleanupCallback()Landroid/arch/persistence/room/RoomDatabase$Callback;
    .locals 1

    .line 104
    new-instance v0, Landroidx/work/impl/WorkDatabase$1;

    invoke-direct {v0}, Landroidx/work/impl/WorkDatabase$1;-><init>()V

    return-object v0
.end method

.method static getPruneDate()J
    .locals 6

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method private static getPruneSQL()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract alarmInfoDao()Landroidx/work/impl/model/AlarmInfoDao;
.end method

.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao;
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao;
.end method
