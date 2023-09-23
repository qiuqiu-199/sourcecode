.class public Lcom/beloo/widget/chipslayoutmanager/util/LayoutManagerUtil;
.super Ljava/lang/Object;
.source "LayoutManagerUtil.java"


# direct methods
.method public static requestLayoutWithAnimations(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/util/LayoutManagerUtil$1;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/util/LayoutManagerUtil$1;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
