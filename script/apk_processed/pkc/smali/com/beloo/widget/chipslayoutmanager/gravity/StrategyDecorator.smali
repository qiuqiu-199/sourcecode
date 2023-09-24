.class Lcom/beloo/widget/chipslayoutmanager/gravity/StrategyDecorator;
.super Ljava/lang/Object;
.source "StrategyDecorator.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;


# instance fields
.field private rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/StrategyDecorator;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    return-void
.end method


# virtual methods
.method public applyStrategy(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;",
            "Ljava/util/List<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/Item;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/StrategyDecorator;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    invoke-interface {v0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;->applyStrategy(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;Ljava/util/List;)V

    return-void
.end method
