.class abstract Lcom/beloo/widget/chipslayoutmanager/ScrollingController;
.super Ljava/lang/Object;
.source "ScrollingController.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/IScrollingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;
    }
.end annotation


# instance fields
.field canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

.field private lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private scrollerListener:Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;

.field private stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 23
    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->scrollerListener:Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;

    .line 24
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    .line 25
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    sub-int/2addr v0, p1

    .line 203
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getTotalSpace()I

    move-result p1

    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->getLaidOutArea()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 177
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 178
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sub-int/2addr p1, v0

    .line 184
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 186
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->getLaidOutArea()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v1

    mul-float p1, p1, v0

    .line 188
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    .line 189
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartViewBound()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 188
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 222
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 225
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->getLaidOutArea()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    float-to-int p1, v1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getLaidOutArea()I
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getEndViewBound()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    .line 166
    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartViewBound()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 156
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->calcOffset(I)I

    move-result p1

    neg-int v0, p1

    .line 157
    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->offsetChildren(I)V

    .line 159
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->scrollerListener:Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;

    invoke-interface {v0, p0, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;->onScrolled(Lcom/beloo/widget/chipslayoutmanager/IScrollingController;Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    return p1
.end method


# virtual methods
.method final calcOffset(I)I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->onContentScrolledBackward(I)I

    move-result v1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->onContentScrolledForward(I)I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method final calculateEndGap()I
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCompletelyVisibleViewsCount()I

    move-result v0

    .line 33
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getEndViewBound()I

    move-result v0

    .line 35
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, v0

    if-gez v2, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method final calculateStartGap()I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartViewBound()I

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final normalizeGaps(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->calculateStartGap()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    neg-int p1, v0

    .line 55
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->offsetChildren(I)V

    return v1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->calculateEndGap()I

    move-result v0

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 62
    invoke-direct {p0, v0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method abstract offsetChildren(I)V
.end method

.method final onContentScrolledBackward(I)I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStartAfterPadding()I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v2, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getStart(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    move p1, v0

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method final onContentScrolledForward(I)I
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v2, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getEndViewBound()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 137
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/ScrollingController;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
