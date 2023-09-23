.class public Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "MeasureSupporter.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;


# instance fields
.field private autoMeasureHeight:I

.field private autoMeasureWidth:I

.field private beforeRemovingHeight:Ljava/lang/Integer;

.field private beforeRemovingWidth:Ljava/lang/Integer;

.field private isAfterRemoving:Z

.field private isRegistered:Z

.field private lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private measuredHeight:I

.field private measuredWidth:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingWidth:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureWidth:I

    .line 30
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingHeight:Ljava/lang/Integer;

    .line 36
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureHeight:I

    .line 39
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic access$002(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isAfterRemoving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method private setMeasuredHeight(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->measuredHeight:I

    return-void
.end method

.method private setMeasuredWidth(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->measuredWidth:I

    return-void
.end method


# virtual methods
.method public getMeasuredHeight()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->measuredWidth:I

    return v0
.end method

.method isAfterRemoving()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isAfterRemoving:Z

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isRegistered:Z

    return v0
.end method

.method public measure(II)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isAfterRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->setMeasuredWidth(I)V

    .line 85
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingHeight:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->setMeasuredHeight(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->setMeasuredWidth(I)V

    .line 88
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->setMeasuredHeight(I)V

    :goto_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isAfterRemoving:Z

    .line 130
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingWidth:Ljava/lang/Integer;

    .line 131
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->beforeRemovingHeight:Ljava/lang/Integer;

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$1;

    invoke-direct {v1, p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter$1;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSizeChanged()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureWidth:I

    .line 45
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->lm:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->autoMeasureHeight:I

    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;->isRegistered:Z

    return-void
.end method
