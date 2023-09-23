.class Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "HorizontalScrollingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;->createSmoothScroller(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;

.field final synthetic val$anchor:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

.field final synthetic val$position:I

.field final synthetic val$timeMs:I


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;Landroid/content/Context;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;II)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;

    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$anchor:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    iput p4, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$position:I

    iput p5, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$timeMs:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$anchor:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$position:I

    if-le v1, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 41
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;

    invoke-static {p2}, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;->access$000(Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPaddingLeft()I

    move-result p2

    .line 42
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;->access$000(Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p2

    .line 47
    iget p2, p0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController$1;->val$timeMs:I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1, p2, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
