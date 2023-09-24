.class final Lcom/nispok/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$snackbar:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iput-object p2, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    invoke-static {}, Lcom/nispok/snackbar/SnackbarManager;->getCurrentSnackbar()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->isDimissing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->dismissAnimation(Z)Lcom/nispok/snackbar/Snackbar;

    .line 58
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->dismissByReplace()V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nispok/snackbar/SnackbarManager;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 60
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->showAnimation(Z)Lcom/nispok/snackbar/Snackbar;

    .line 61
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->showByReplace(Landroid/app/Activity;)V

    return-void

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->dismiss()V

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nispok/snackbar/SnackbarManager;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 67
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->show(Landroid/app/Activity;)V

    return-void
.end method
