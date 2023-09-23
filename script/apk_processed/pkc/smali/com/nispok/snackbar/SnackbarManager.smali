.class public Lcom/nispok/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# static fields
.field private static final MAIN_THREAD:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "SnackbarManager"

.field private static snackbarReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nispok/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nispok/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 15
    sput-object p0, Lcom/nispok/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getCurrentSnackbar()Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 133
    sget-object v0, Lcom/nispok/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/nispok/snackbar/SnackbarManager;->snackbarReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nispok/snackbar/Snackbar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static show(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/nispok/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    new-instance v1, Lcom/nispok/snackbar/SnackbarManager$1;

    invoke-direct {v1, p0, p1}, Lcom/nispok/snackbar/SnackbarManager$1;-><init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 93
    sget-object v0, Lcom/nispok/snackbar/SnackbarManager;->MAIN_THREAD:Landroid/os/Handler;

    new-instance v1, Lcom/nispok/snackbar/SnackbarManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/nispok/snackbar/SnackbarManager$2;-><init>(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
