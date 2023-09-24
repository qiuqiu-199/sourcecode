.class public Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "SmoothScrollGridLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field private mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0, v1}, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 38
    new-instance p2, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;

    invoke-direct {p2, p1, p0}, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p2, p0, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 44
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/common/SmoothScrollGridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
