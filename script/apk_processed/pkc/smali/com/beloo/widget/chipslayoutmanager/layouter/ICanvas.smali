.class public interface abstract Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
.super Ljava/lang/Object;
.source "ICanvas.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/IBorder;


# virtual methods
.method public abstract findBorderViews()V
.end method

.method public abstract getBottomView()Landroid/view/View;
.end method

.method public abstract getLeftView()Landroid/view/View;
.end method

.method public abstract getMaxPositionOnScreen()Ljava/lang/Integer;
.end method

.method public abstract getMinPositionOnScreen()Ljava/lang/Integer;
.end method

.method public abstract getRightView()Landroid/view/View;
.end method

.method public abstract getTopView()Landroid/view/View;
.end method

.method public abstract getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public abstract isFullyVisible(Landroid/view/View;)Z
.end method

.method public abstract isInside(Landroid/graphics/Rect;)Z
.end method
