.class public Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;
.super Landroid/support/v7/widget/StaggeredGridLayoutManager;
.source "SmoothScrollStaggeredLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field private mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 38
    new-instance p2, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;

    invoke-direct {p2, p1, p0}, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p2, p0, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    return-void
.end method


# virtual methods
.method public findFirstCompletelyVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 49
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 50
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 51
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 59
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 60
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 61
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 69
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 70
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 71
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    const/4 v0, 0x0

    .line 79
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 80
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 81
    invoke-super {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v3

    aget v3, v3, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 44
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/common/SmoothScrollStaggeredLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
