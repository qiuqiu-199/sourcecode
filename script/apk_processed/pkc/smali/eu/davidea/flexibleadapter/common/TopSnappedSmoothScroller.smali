.class public Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "TopSnappedSmoothScroller.java"


# static fields
.field public static MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private layoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

.field private vectorPosition:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->vectorPosition:Landroid/graphics/PointF;

    .line 48
    new-instance p1, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;

    invoke-direct {p1, p2}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->layoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 75
    sget v0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->MILLISECONDS_PER_INCH:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 58
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->layoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 61
    :goto_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->layoutManager:Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->vectorPosition:Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 63
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->vectorPosition:Landroid/graphics/PointF;

    return-object p1

    .line 65
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->vectorPosition:Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 66
    iget-object p1, p0, Leu/davidea/flexibleadapter/common/TopSnappedSmoothScroller;->vectorPosition:Landroid/graphics/PointF;

    return-object p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
