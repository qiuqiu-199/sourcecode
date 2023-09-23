.class Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.source "LeftLayouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;
    .locals 2

    .line 17
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$Builder;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter$1;)V

    return-object v0
.end method


# virtual methods
.method createViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 23
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCurrentViewWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 24
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCurrentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 26
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    iget p1, v1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    return-object v1
.end method

.method public getEndRowBorder()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getViewRight()I

    move-result v0

    return v0
.end method

.method public getRowLength()I
    .locals 2

    .line 95
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasTopBorder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartRowBorder()I
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getViewLeft()I

    move-result v0

    return v0
.end method

.method isAttachedViewFromNewRow(Landroid/view/View;)Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    .line 66
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    if-lt v1, p1, :cond_0

    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isReverseOrder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onAfterLayout()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasBottomBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    .line 58
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    return-void
.end method

.method onInterceptAttachView(Landroid/view/View;)V
    .locals 2

    .line 72
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasBottomBorder()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCurrentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasTopBorder()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasBottomBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    .line 75
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    .line 80
    :goto_0
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    return-void
.end method

.method onPreLayout()V
    .locals 5

    .line 40
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->getCanvasTopBorder()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    .line 43
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 44
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 46
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 47
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 49
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewBottom:I

    .line 50
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewLeft:I

    .line 51
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LeftLayouter;->viewRight:I

    goto :goto_0

    :cond_0
    return-void
.end method
