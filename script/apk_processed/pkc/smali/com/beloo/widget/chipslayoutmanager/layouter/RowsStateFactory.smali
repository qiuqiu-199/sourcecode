.class public Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;
.super Ljava/lang/Object;
.source "RowsStateFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;


# instance fields
.field private lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-void
.end method

.method private createOrientationStateFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLRowsOrientationStateFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLRowsOrientationStateFactory;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsOrientationStateFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsOrientationStateFactory;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public anchorFactory()Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;
    .locals 3

    .line 55
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/RowsAnchorFactory;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/RowsAnchorFactory;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;)V

    return-object v0
.end method

.method public createCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 2

    .line 65
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public createDefaultFinishingCriteriaFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/beloo/widget/chipslayoutmanager/util/StateHelper;->isInfinite(Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteriaFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteriaFactory;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;-><init>()V

    :goto_0
    return-object v0
.end method

.method public createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;
    .locals 10

    .line 33
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->createOrientationStateFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;

    move-result-object v0

    .line 35
    new-instance v9, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 36
    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;->createLayouterCreator(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    move-result-object v3

    new-instance v4, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 38
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getViewPositionsStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object v1

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 39
    invoke-virtual {v5}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    move-result-object v5

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 40
    invoke-virtual {v6}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getMaxViewsInRow()Ljava/lang/Integer;

    move-result-object v6

    .line 41
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;->createDefaultBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;-><init>(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;Ljava/lang/Integer;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;)V

    new-instance v7, Lcom/beloo/widget/chipslayoutmanager/gravity/RowGravityModifiersFactory;

    invoke-direct {v7}, Lcom/beloo/widget/chipslayoutmanager/gravity/RowGravityModifiersFactory;-><init>()V

    .line 45
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;->createRowStrategyFactory()Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategyFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getRowStrategyType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategyFactory;->createRowStrategy(I)Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    move-result-object v8

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)V

    return-object v9
.end method

.method public getEnd()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEnd(Landroid/view/View;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndViewBound()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->getEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getSizeMode()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStart(Landroid/view/View;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getStart(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)I
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getStartViewBound()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getTopView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->getStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 136
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public scrollingController()Lcom/beloo/widget/chipslayoutmanager/IScrollingController;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowsStateFactory;->lm:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->verticalScrollingController()Lcom/beloo/widget/chipslayoutmanager/VerticalScrollingController;

    move-result-object v0

    return-object v0
.end method
