.class Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingPlacerFactory;
.super Ljava/lang/Object;
.source "DisappearingPlacerFactory.java"

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
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public getAtEndPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;
    .locals 2

    .line 20
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingViewAtEndPlacer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingViewAtEndPlacer;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public getAtStartPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;
    .locals 2

    .line 15
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingViewAtStartPlacer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingPlacerFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/DisappearingViewAtStartPlacer;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
