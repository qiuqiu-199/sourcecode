.class Lcom/livefront/bridge/NoOpSavedStateHandler;
.super Ljava/lang/Object;
.source "NoOpSavedStateHandler.java"

# interfaces
.implements Lcom/livefront/bridge/SavedStateHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
