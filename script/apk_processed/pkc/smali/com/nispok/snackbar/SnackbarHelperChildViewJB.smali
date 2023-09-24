.class Lcom/nispok/snackbar/SnackbarHelperChildViewJB;
.super Landroid/view/View;
.source "SnackbarHelperChildViewJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;->setSaveEnabled(Z)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;->setWillNotDraw(Z)V

    const/16 p1, 0x8

    .line 15
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 22
    invoke-virtual {p0}, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/nispok/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->dispatchOnWindowSystemUiVisibilityChangedCompat(I)V

    :cond_0
    return-void
.end method
