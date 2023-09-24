.class Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.source "RightLayouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;
    }
.end annotation


# instance fields
.field private isPurged:Z


# direct methods
.method private constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;
    .locals 2

    .line 16
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$Builder;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter$1;)V

    return-object v0
.end method


# virtual methods
.method createViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewLeft:I

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewLeft:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCurrentViewWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCurrentViewHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 23
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewBottom:I

    .line 24
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewBottom:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    .line 25
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewRight:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewRight:I

    return-object p1
.end method

.method public getEndRowBorder()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getViewRight()I

    move-result v0

    return v0
.end method

.method public getRowLength()I
    .locals 2

    .line 83
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCanvasTopBorder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartRowBorder()I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getViewLeft()I

    move-result v0

    return v0
.end method

.method isAttachedViewFromNewRow(Landroid/view/View;)Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    .line 60
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewRight:I

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isReverseOrder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onAfterLayout()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getViewRight()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewLeft:I

    .line 52
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCanvasTopBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    return-void
.end method

.method onInterceptAttachView(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewTop:I

    .line 67
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewLeft:I

    .line 68
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewRight:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->viewRight:I

    return-void
.end method

.method onPreLayout()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->isPurged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->isPurged:Z

    .line 40
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCacheStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->rowViews:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->getCacheStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RightLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->storeRow(Ljava/util/List;)V

    :cond_1
    return-void
.end method
