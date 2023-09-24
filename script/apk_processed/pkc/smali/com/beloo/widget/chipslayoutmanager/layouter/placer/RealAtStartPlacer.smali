.class Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtStartPlacer;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;
.source "RealAtStartPlacer.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtStartPlacer;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method
