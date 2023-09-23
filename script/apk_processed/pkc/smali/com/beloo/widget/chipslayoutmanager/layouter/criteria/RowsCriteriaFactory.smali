.class public Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;
.source "RowsCriteriaFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;
    .locals 3

    .line 10
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpLayouterFinished;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpLayouterFinished;-><init>()V

    .line 11
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalLength:I

    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpAdditionalHeight;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalLength:I

    invoke-direct {v1, v0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaUpAdditionalHeight;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;I)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getForwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;
    .locals 3

    .line 20
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownLayouterFinished;-><init>()V

    .line 21
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalLength:I

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownAdditionalHeight;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalLength:I

    invoke-direct {v1, v0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaDownAdditionalHeight;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;I)V

    move-object v0, v1

    .line 24
    :cond_0
    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalRowCount:I

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/RowsCriteriaFactory;->additionalRowCount:I

    invoke-direct {v1, v0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/CriteriaAdditionalRow;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
