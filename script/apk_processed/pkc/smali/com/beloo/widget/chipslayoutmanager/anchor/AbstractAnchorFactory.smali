.class abstract Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;
.super Ljava/lang/Object;
.source "AbstractAnchorFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;


# instance fields
.field private canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

.field lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 14
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-void
.end method


# virtual methods
.method createAnchorState(Landroid/view/View;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 3

    .line 22
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    invoke-interface {v2, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;-><init>(ILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public createNotFound()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1

    .line 27
    invoke-static {}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getNotFoundState()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    return-object v0
.end method

.method getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/AbstractAnchorFactory;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-object v0
.end method
