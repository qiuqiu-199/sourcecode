.class public interface abstract Lcom/beloo/widget/chipslayoutmanager/IScrollingController;
.super Ljava/lang/Object;
.source "IScrollingController.java"


# virtual methods
.method public abstract canScrollHorizontally()Z
.end method

.method public abstract canScrollVertically()Z
.end method

.method public abstract computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract createSmoothScroller(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end method

.method public abstract normalizeGaps(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
.end method

.method public abstract scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
.end method

.method public abstract scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
.end method
