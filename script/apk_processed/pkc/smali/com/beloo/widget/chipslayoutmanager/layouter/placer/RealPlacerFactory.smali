.class Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealPlacerFactory;
.super Ljava/lang/Object;
.source "RealPlacerFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public getAtEndPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;
    .locals 2

    .line 20
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtEndPlacer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtEndPlacer;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public getAtStartPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;
    .locals 2

    .line 15
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtStartPlacer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtStartPlacer;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
