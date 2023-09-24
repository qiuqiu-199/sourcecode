.class abstract Lcom/melnykov/fab/AbsListViewScrollDetector;
.super Ljava/lang/Object;
.source "AbsListViewScrollDetector.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mLastScrollY:I

.field private mListView:Landroid/widget/AbsListView;

.field private mPreviousFirstVisibleItem:I

.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTopItemScrollY()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isSameRow(I)Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/AbsListViewScrollDetector;->isSameRow(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result p1

    .line 26
    iget p2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 28
    iget p2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    if-le p2, p1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    .line 34
    :cond_3
    :goto_1
    iput p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    goto :goto_3

    .line 36
    :cond_4
    iget p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-le p2, p1, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    goto :goto_2

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    .line 42
    :goto_2
    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result p1

    iput p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    .line 43
    iput p2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    :goto_3
    return-void
.end method

.method abstract onScrollDown()V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method abstract onScrollUp()V
.end method

.method public setListView(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iput-object p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    return-void
.end method

.method public setScrollThreshold(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    return-void
.end method
