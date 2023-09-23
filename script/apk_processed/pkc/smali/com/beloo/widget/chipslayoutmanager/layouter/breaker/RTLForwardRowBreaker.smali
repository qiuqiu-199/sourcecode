.class Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RTLForwardRowBreaker;
.super Ljava/lang/Object;
.source "RTLForwardRowBreaker.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 2

    .line 10
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getViewRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasRightBorder()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getViewRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCurrentViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasLeftBorder()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
