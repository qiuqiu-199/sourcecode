.class public Lcom/livefront/bridge/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# static fields
.field private static sDelegate:Lcom/livefront/bridge/BridgeDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .line 14
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must first call initialize before calling any other methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear(Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 31
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {v0, p0}, Lcom/livefront/bridge/BridgeDelegate;->clear(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate;

    new-instance v1, Lcom/livefront/bridge/NoOpSavedStateHandler;

    invoke-direct {v1}, Lcom/livefront/bridge/NoOpSavedStateHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/livefront/bridge/BridgeDelegate;-><init>(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;)V

    move-object p0, v0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/livefront/bridge/BridgeDelegate;->clearAll()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/livefront/bridge/SavedStateHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    new-instance v0, Lcom/livefront/bridge/BridgeDelegate;

    invoke-direct {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate;-><init>(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;)V

    sput-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    return-void
.end method

.method public static restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 68
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public static saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-static {}, Lcom/livefront/bridge/Bridge;->checkInitialization()V

    .line 80
    sget-object v0, Lcom/livefront/bridge/Bridge;->sDelegate:Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
