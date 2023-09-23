.class Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpAdditionalHeight;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;
.source "CriteriaUpAdditionalHeight.java"


# instance fields
.field private additionalHeight:I


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V

    .line 11
    iput p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpAdditionalHeight;->additionalHeight:I

    return-void
.end method


# virtual methods
.method public isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCanvasTopBorder()I

    move-result v0

    .line 17
    invoke-super {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;->isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getViewBottom()I

    move-result p1

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpAdditionalHeight;->additionalHeight:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
