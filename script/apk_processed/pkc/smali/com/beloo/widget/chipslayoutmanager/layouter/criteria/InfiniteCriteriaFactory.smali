.class public Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteriaFactory;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;
.source "InfiniteCriteriaFactory.java"

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
    .locals 1

    .line 9
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteria;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteria;-><init>()V

    return-object v0
.end method

.method public getForwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;
    .locals 1

    .line 15
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteria;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteria;-><init>()V

    return-object v0
.end method
