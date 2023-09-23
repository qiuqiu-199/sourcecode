.class public Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;
.super Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;
.source "ColumnsAnchorFactory.java"


# instance fields
.field private childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;)V

    .line 16
    new-instance p2, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-direct {p2, p1}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    return-void
.end method


# virtual methods
.method public bridge synthetic createNotFound()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->createNotFound()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    return-object v0
.end method

.method public getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 11

    .line 23
    invoke-static {}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getNotFoundState()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 30
    invoke-virtual {p0, v5}, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->createAnchorState(Landroid/view/View;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 32
    iget-object v8, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v8

    .line 33
    iget-object v9, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    .line 35
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->isInside(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->isRemoving()Z

    move-result v9

    if-nez v9, :cond_0

    if-le v4, v7, :cond_1

    move-object v0, v6

    move v4, v7

    :cond_1
    if-le v2, v8, :cond_2

    move v3, v5

    move v2, v8

    goto :goto_0

    :cond_2
    if-ne v2, v8, :cond_0

    .line 47
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->isNotFoundState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v1

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 55
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v1

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->setPosition(Ljava/lang/Integer;)V

    :cond_4
    return-object v0
.end method

.method public resetRowCoordinates(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->isNotFoundState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getCanvasTopBorder()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 68
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/anchor/ColumnsAnchorFactory;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getCanvasBottomBorder()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
