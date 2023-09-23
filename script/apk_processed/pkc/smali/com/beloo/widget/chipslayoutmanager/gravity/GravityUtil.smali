.class abstract Lcom/beloo/widget/chipslayoutmanager/gravity/GravityUtil;
.super Ljava/lang/Object;
.source "GravityUtil.java"


# direct methods
.method static getHorizontalDifference(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)I
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasRightBorder()I

    move-result v0

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasLeftBorder()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getRowLength()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static getVerticalDifference(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)I
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasBottomBorder()I

    move-result v0

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasTopBorder()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getRowLength()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
