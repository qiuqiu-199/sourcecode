.class public Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# instance fields
.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "androidx.work.util.id"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private nextId(Ljava/lang/String;)I
    .locals 3

    .line 81
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 83
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/utils/IdGenerator;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method


# virtual methods
.method public nextAlarmManagerId()I
    .locals 2

    .line 69
    const-class v0, Landroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_alarm_manager_id"

    .line 70
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextJobSchedulerId()I
    .locals 2

    .line 51
    const-class v0, Landroidx/work/impl/utils/IdGenerator;

    monitor-enter v0

    :try_start_0
    const-string v1, "next_job_scheduler_id"

    .line 52
    invoke-direct {p0, v1}, Landroidx/work/impl/utils/IdGenerator;->nextId(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
