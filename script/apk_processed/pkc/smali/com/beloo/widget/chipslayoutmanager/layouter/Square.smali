.class abstract Lcom/beloo/widget/chipslayoutmanager/layouter/Square;
.super Ljava/lang/Object;
.source "Square.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;


# instance fields
.field private bottomView:Landroid/view/View;

.field private childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

.field private isFirstItemAdded:Z

.field private leftView:Landroid/view/View;

.field lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private maxPositionOnScreen:Ljava/lang/Integer;

.field private minPositionOnScreen:Ljava/lang/Integer;

.field private rightView:Landroid/view/View;

.field private topView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 40
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-direct {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    return-void
.end method


# virtual methods
.method public findBorderViews()V
    .locals 7

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->topView:Landroid/view/View;

    .line 89
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->bottomView:Landroid/view/View;

    .line 90
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->leftView:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->rightView:Landroid/view/View;

    const/4 v0, -0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->minPositionOnScreen:Ljava/lang/Integer;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->maxPositionOnScreen:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->isFirstItemAdded:Z

    .line 97
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 98
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->topView:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->bottomView:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->leftView:Landroid/view/View;

    .line 102
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->rightView:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 107
    invoke-virtual {p0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->isInside(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->topView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 110
    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->topView:Landroid/view/View;

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->bottomView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 114
    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->bottomView:Landroid/view/View;

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->leftView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 118
    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->leftView:Landroid/view/View;

    .line 121
    :cond_4
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->rightView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_5

    .line 122
    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->rightView:Landroid/view/View;

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->minPositionOnScreen:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_6

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->minPositionOnScreen:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 126
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->minPositionOnScreen:Ljava/lang/Integer;

    .line 129
    :cond_7
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->maxPositionOnScreen:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_8

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->maxPositionOnScreen:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_9

    .line 130
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->maxPositionOnScreen:Ljava/lang/Integer;

    :cond_9
    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->isFirstItemAdded:Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public getBottomView()Landroid/view/View;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->bottomView:Landroid/view/View;

    return-object v0
.end method

.method public getCanvasRect()Landroid/graphics/Rect;
    .locals 5

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasLeftBorder()I

    move-result v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasTopBorder()I

    move-result v2

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasRightBorder()I

    move-result v3

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasBottomBorder()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getLeftView()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->leftView:Landroid/view/View;

    return-object v0
.end method

.method public getMaxPositionOnScreen()Ljava/lang/Integer;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->maxPositionOnScreen:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinPositionOnScreen()Ljava/lang/Integer;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->minPositionOnScreen:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRightView()Landroid/view/View;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->rightView:Landroid/view/View;

    return-object v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->topView:Landroid/view/View;

    return-object v0
.end method

.method public getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 53
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public isFullyVisible(Landroid/graphics/Rect;)Z
    .locals 2

    .line 77
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasTopBorder()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasBottomBorder()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 79
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasLeftBorder()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 80
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasRightBorder()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFullyVisible(Landroid/view/View;)Z
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->isFullyVisible(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public isInside(Landroid/graphics/Rect;)Z
    .locals 1

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public isInside(Landroid/view/View;)Z
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;->isInside(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
