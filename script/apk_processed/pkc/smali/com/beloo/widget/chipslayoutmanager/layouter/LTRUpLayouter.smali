.class Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.source "LTRUpLayouter.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;
    .locals 2

    .line 17
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$1;)V

    return-object v0
.end method


# virtual methods
.method createViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 22
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCurrentViewWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 23
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCurrentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 25
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    return-object v1
.end method

.method public getEndRowBorder()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getViewBottom()I

    move-result v0

    return v0
.end method

.method public getRowLength()I
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasRightBorder()I

    move-result v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartRowBorder()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getViewTop()I

    move-result v0

    return v0
.end method

.method isAttachedViewFromNewRow(Landroid/view/View;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    .line 64
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    if-le p1, v0, :cond_0

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

    .line 55
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasRightBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    .line 56
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    return-void
.end method

.method public onInterceptAttachView(Landroid/view/View;)V
    .locals 2

    .line 70
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasRightBorder()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCurrentViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasLeftBorder()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasRightBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    .line 73
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    .line 78
    :goto_0
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    return-void
.end method

.method onPreLayout()V
    .locals 5

    .line 37
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->getCanvasLeftBorder()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewLeft:I

    .line 40
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 41
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 43
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 44
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 46
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewLeft:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewLeft:I

    .line 47
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewTop:I

    .line 48
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->viewBottom:I

    goto :goto_0

    :cond_0
    return-void
.end method
