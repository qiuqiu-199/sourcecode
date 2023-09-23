.class Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaLeftLayouterFinished;
.super Ljava/lang/Object;
.source "CriteriaLeftLayouterFinished.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getViewRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasLeftBorder()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
