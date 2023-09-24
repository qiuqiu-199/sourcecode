.class Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.source "RTLUpLayouter.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RTLUpLayouter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;
    .locals 2

    .line 18
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$Builder;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter$1;)V

    return-object v0
.end method


# virtual methods
.method createViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 57
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCurrentViewWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 58
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCurrentViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    invoke-direct {v1, v2, v0, p1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    iget p1, v1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    return-object v1
.end method

.method public getEndRowBorder()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getViewBottom()I

    move-result v0

    return v0
.end method

.method public getRowLength()I
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasRightBorder()I

    move-result v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartRowBorder()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getViewTop()I

    move-result v0

    return v0
.end method

.method isAttachedViewFromNewRow(Landroid/view/View;)Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    .line 51
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

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

    const/4 v0, 0x1

    return v0
.end method

.method onAfterLayout()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasLeftBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    .line 43
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    return-void
.end method

.method public onInterceptAttachView(Landroid/view/View;)V
    .locals 2

    .line 71
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasLeftBorder()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCurrentViewWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasRightBorder()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasLeftBorder()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    .line 73
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    .line 78
    :goto_0
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    return-void
.end method

.method onPreLayout()V
    .locals 5

    .line 23
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->getCanvasRightBorder()I

    move-result v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    .line 25
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    .line 27
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 28
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 30
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 31
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 33
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewLeft:I

    .line 34
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewTop:I

    .line 35
    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLUpLayouter;->viewBottom:I

    goto :goto_1

    :cond_1
    return-void
.end method
