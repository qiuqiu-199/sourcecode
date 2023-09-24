.class abstract Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;
.super Ljava/lang/Object;
.source "AbstractPlacer.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/AbstractPlacer;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
