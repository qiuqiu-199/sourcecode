.class public Lcom/nispok/snackbar/layouts/SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    .line 9
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    if-ge v1, v0, :cond_0

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 29
    iget v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 32
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 33
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    if-ge v1, v0, :cond_1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 35
    iget v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxHeight:I

    .line 47
    invoke-virtual {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->mMaxWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->requestLayout()V

    return-void
.end method
