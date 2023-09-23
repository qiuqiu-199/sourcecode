.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Landroid/arch/lifecycle/LifecycleService;
.source "SystemAlarmService.java"

# interfaces
.implements Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;


# instance fields
.field private mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllCommandsCompleted()V
    .locals 2

    const-string v0, "SystemAlarmService"

    const-string v1, "All commands completed in dispatcher"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->stopSelf()V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/arch/lifecycle/LifecycleService;->onCreate()V

    .line 42
    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 43
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->setCompletedListener(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/arch/lifecycle/LifecycleService;->onDestroy()V

    .line 49
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/arch/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    if-eqz p1, :cond_0

    .line 56
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {p2, p1, p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
