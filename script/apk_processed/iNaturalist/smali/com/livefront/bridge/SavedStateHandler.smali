.class public interface abstract Lcom/livefront/bridge/SavedStateHandler;
.super Ljava/lang/Object;
.source "SavedStateHandler.java"


# virtual methods
.method public abstract restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
