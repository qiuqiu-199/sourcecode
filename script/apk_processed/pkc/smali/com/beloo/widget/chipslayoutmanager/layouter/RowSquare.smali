.class Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/Square;
.source "RowSquare.java"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/Square;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public final getCanvasBottomBorder()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getCanvasLeftBorder()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getCanvasRightBorder()I
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/RowSquare;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getCanvasTopBorder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
