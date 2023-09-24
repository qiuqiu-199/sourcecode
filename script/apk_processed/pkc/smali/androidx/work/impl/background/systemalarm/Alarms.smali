.class Landroidx/work/impl/background/systemalarm/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# direct methods
.method public static cancelAlarm(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 3

    .line 87
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->alarmInfoDao()Landroidx/work/impl/model/AlarmInfoDao;

    move-result-object p1

    .line 89
    invoke-interface {p1, p2}, Landroidx/work/impl/model/AlarmInfoDao;->getAlarmInfo(Ljava/lang/String;)Landroidx/work/impl/model/AlarmInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget v0, v0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    invoke-static {p0, p2, v0}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p0, "Alarms"

    const-string v0, "Removing AlarmInfo for workSpecId (%s)"

    const/4 v1, 0x1

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {p1, p2}, Landroidx/work/impl/model/AlarmInfoDao;->removeAlarmInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 103
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    .line 104
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "Alarms"

    const-string v2, "Cancelling existing alarm with (workSpecId, alarmId) (%s, %s)"

    const/4 v3, 0x2

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    .line 107
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->alarmInfoDao()Landroidx/work/impl/model/AlarmInfoDao;

    move-result-object p1

    .line 62
    invoke-interface {p1, p2}, Landroidx/work/impl/model/AlarmInfoDao;->getAlarmInfo(Ljava/lang/String;)Landroidx/work/impl/model/AlarmInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget p1, v0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    invoke-static {p0, p2, p1}, Landroidx/work/impl/background/systemalarm/Alarms;->cancelExactAlarm(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    iget p1, v0, Landroidx/work/impl/model/AlarmInfo;->alarmId:I

    invoke-static {p0, p2, p1, p3, p4}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroidx/work/impl/utils/IdGenerator;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/IdGenerator;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Landroidx/work/impl/utils/IdGenerator;->nextAlarmManagerId()I

    move-result v0

    .line 69
    new-instance v1, Landroidx/work/impl/model/AlarmInfo;

    invoke-direct {v1, p2, v0}, Landroidx/work/impl/model/AlarmInfo;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-interface {p1, v1}, Landroidx/work/impl/model/AlarmInfoDao;->insertAlarmInfo(Landroidx/work/impl/model/AlarmInfo;)V

    .line 71
    invoke-static {p0, p2, v0, p3, p4}, Landroidx/work/impl/background/systemalarm/Alarms;->setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_0
    return-void
.end method

.method private static setExactAlarm(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "alarm"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 122
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createDelayMetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 123
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 126
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    .line 127
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
