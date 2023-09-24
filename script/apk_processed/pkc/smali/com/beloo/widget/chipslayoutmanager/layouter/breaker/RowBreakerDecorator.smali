.class Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;
.super Ljava/lang/Object;
.source "RowBreakerDecorator.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;


# instance fields
.field private decorate:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;->decorate:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    return-void
.end method


# virtual methods
.method public isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;->decorate:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;->isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result p1

    return p1
.end method
