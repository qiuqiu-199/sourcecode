.class Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ForwardBreakerContract;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;
.source "ForwardBreakerContract.java"


# instance fields
.field private breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    .line 11
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ForwardBreakerContract;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    return-void
.end method


# virtual methods
.method public isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 2

    .line 16
    invoke-super {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;->isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCurrentViewPosition()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ForwardBreakerContract;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCurrentViewPosition()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;->isItemBreakRow(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
