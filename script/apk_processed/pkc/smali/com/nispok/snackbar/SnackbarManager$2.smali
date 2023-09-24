.class final Lcom/nispok/snackbar/SnackbarManager$2;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$snackbar:Lcom/nispok/snackbar/Snackbar;

.field final synthetic val$usePhoneLayout:Z


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iput-object p2, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/nispok/snackbar/SnackbarManager;->getCurrentSnackbar()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->isDimissing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->dismissAnimation(Z)Lcom/nispok/snackbar/Snackbar;

    .line 100
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->dismissByReplace()V

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nispok/snackbar/SnackbarManager;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 102
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->showAnimation(Z)Lcom/nispok/snackbar/Snackbar;

    .line 103
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    invoke-virtual {v0, v1, v2}, Lcom/nispok/snackbar/Snackbar;->showByReplace(Landroid/view/ViewGroup;Z)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->dismiss()V

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/nispok/snackbar/SnackbarManager;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 109
    iget-object v0, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$parent:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/nispok/snackbar/SnackbarManager$2;->val$usePhoneLayout:Z

    invoke-virtual {v0, v1, v2}, Lcom/nispok/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    return-void
.end method
