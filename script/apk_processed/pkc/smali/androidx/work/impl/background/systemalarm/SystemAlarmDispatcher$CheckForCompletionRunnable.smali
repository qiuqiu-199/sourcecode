.class Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckForCompletionRunnable"
.end annotation


# instance fields
.field private final mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 284
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CheckForCompletionRunnable;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-static {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->access$300(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    return-void
.end method
