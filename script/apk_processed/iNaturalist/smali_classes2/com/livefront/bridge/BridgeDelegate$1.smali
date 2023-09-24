.class Lcom/livefront/bridge/BridgeDelegate$1;
.super Lcom/livefront/bridge/ActivityLifecycleCallbacksAdapter;
.source "BridgeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/livefront/bridge/BridgeDelegate;->registerForLifecycleEvents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/livefront/bridge/BridgeDelegate;


# direct methods
.method constructor <init>(Lcom/livefront/bridge/BridgeDelegate;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$1;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-direct {p0}, Lcom/livefront/bridge/ActivityLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate$1;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/livefront/bridge/BridgeDelegate;->access$002(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate$1;->this$0:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/livefront/bridge/BridgeDelegate;->access$002(Lcom/livefront/bridge/BridgeDelegate;Z)Z

    return-void
.end method
