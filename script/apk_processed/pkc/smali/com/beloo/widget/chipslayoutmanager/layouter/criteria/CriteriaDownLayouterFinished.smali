.class Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;
.super Ljava/lang/Object;
.source "CriteriaDownLayouterFinished.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;


# instance fields
.field private isFinished:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;->isFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getViewTop()I

    move-result v0

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasBottomBorder()I

    move-result p1

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;->isFinished:Z

    .line 12
    iget-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;->isFinished:Z

    return p1
.end method
