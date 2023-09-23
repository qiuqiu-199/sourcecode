.class abstract Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;
.super Ljava/lang/Object;
.source "FinishingCriteriaDecorator.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;


# instance fields
.field private finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    return-void
.end method


# virtual methods
.method public isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/FinishingCriteriaDecorator;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;->isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result p1

    return p1
.end method
