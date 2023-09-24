.class public interface abstract Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;
.super Ljava/lang/Object;
.source "IStateFactory.java"


# virtual methods
.method public abstract anchorFactory()Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;
.end method

.method public abstract createCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
.end method

.method public abstract createDefaultFinishingCriteriaFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;
.end method

.method public abstract createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEnd(Landroid/view/View;)I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndViewBound()I
.end method

.method public abstract getSizeMode()I
.end method

.method public abstract getStart(Landroid/view/View;)I
.end method

.method public abstract getStart(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getStartViewBound()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public abstract scrollingController()Lcom/beloo/widget/chipslayoutmanager/IScrollingController;
.end method
