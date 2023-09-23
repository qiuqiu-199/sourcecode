.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 70
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 75
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 80
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 85
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private addIndicatorViews()V
    .locals 7

    .line 335
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_0

    .line 340
    new-instance v2, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v2, v5, v6}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 341
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0x35

    .line 344
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 350
    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 353
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_2

    .line 355
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {v0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 356
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 358
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    .line 359
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 360
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 365
    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    :cond_3
    :goto_1
    return-void
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 48
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    .line 50
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstItemVisible()Z
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 376
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 392
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private isLastItemVisible()Z
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 405
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 412
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v2, v0

    .line 428
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getBottom()I

    move-result v2

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method private removeIndicatorViews()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 441
    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 446
    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    .line 463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    goto :goto_1

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getShowIndicator()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 303
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return-void
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .locals 2

    .line 247
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPullToRefresh()V

    .line 249
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshing(Z)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onRefreshing(Z)V

    .line 267
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReleaseToRefresh()V

    .line 276
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 1

    .line 293
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onReset()V

    .line 295
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_1

    if-lez p4, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 317
    iget-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez p3, :cond_0

    .line 318
    iget-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int p1, p1

    neg-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 178
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 191
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v0, v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 196
    :goto_1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 234
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    :goto_0
    return-void
.end method

.method protected updateUIForMode()V
    .locals 1

    .line 324
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->updateUIForMode()V

    .line 327
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    :goto_0
    return-void
.end method
