.class Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;
.source "CriteriaAdditionalRow.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;


# instance fields
.field private additionalRowsCount:I

.field private requiredRowsCount:I


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V

    .line 15
    iput p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;->requiredRowsCount:I

    return-void
.end method


# virtual methods
.method public isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 1

    .line 20
    invoke-virtual {p1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->addLayouterListener(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;)V

    .line 21
    invoke-super {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;->isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;->additionalRowsCount:I

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;->requiredRowsCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLayoutRow(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    invoke-super {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;->isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;->additionalRowsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;->additionalRowsCount:I

    :cond_0
    return-void
.end method
