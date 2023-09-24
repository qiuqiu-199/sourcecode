.class Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsCreator;
.super Ljava/lang/Object;
.source "LTRRowsCreator.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsCreator;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public createBackwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    .line 49
    invoke-static {}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter;->newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRUpLayouter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createForwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    .line 54
    invoke-static {}, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter;->newBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/LTRDownLayouter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createOffsetRectForBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 4

    .line 25
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public createOffsetRectForForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 5

    .line 37
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsCreator;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 41
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsCreator;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    if-nez v0, :cond_4

    .line 44
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LTRRowsCreator;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v1, v2, v4, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
