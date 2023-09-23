.class Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtEndPlacer;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;
.source "RealAtEndPlacer.java"

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
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/RealAtEndPlacer;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    return-void
.end method
