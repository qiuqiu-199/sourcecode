.class public Landroidx/work/impl/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# direct methods
.method static createBestAvailableBackgroundScheduler(Landroid/content/Context;)Landroidx/work/impl/Scheduler;
    .locals 5

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 108
    new-instance v0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;)V

    .line 109
    const-class v3, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {p0, v3, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-string v2, "Schedulers"

    const-string v3, "Created SystemJobScheduler and enabled SystemJobService"

    .line 110
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/Schedulers;->tryCreateFirebaseJobScheduler(Landroid/content/Context;)Landroidx/work/impl/Scheduler;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "Schedulers"

    const-string v4, "Created FirebaseJobScheduler"

    .line 115
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    .line 118
    :catch_1
    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmScheduler;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmScheduler;-><init>(Landroid/content/Context;)V

    const-string v3, "Schedulers"

    const-string v4, "Created SystemAlarmScheduler"

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    const-string v3, "androidx.work.impl.background.firebase.FirebaseJobService"

    .line 125
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 126
    invoke-static {p0, v3, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    :catch_2
    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {p0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static schedule(Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->getEligibleWorkForScheduling()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {p0, p1, v0}, Landroidx/work/impl/Schedulers;->scheduleInternal(Landroidx/work/impl/WorkDatabase;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static scheduleInternal(Landroidx/work/impl/WorkDatabase;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 89
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v2, v4, v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    const/4 p0, 0x0

    .line 95
    new-array p0, p0, [Landroidx/work/impl/model/WorkSpec;

    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/work/impl/model/WorkSpec;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/impl/Scheduler;

    .line 98
    invoke-interface {p2, p0}, Landroidx/work/impl/Scheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method private static tryCreateFirebaseJobScheduler(Landroid/content/Context;)Landroidx/work/impl/Scheduler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "androidx.work.impl.background.firebase.FirebaseJobScheduler"

    .line 140
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/Scheduler;

    return-object p0
.end method
