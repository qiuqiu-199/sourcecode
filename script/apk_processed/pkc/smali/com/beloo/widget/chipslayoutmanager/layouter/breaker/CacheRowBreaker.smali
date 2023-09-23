.class Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/CacheRowBreaker;
.super Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;
.source "CacheRowBreaker.java"


# instance fields
.field private cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    .line 12
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/CacheRowBreaker;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    return-void
.end method


# virtual methods
.method public isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/CacheRowBreaker;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCurrentViewPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->isPositionEndsRow(I)Z

    move-result v0

    .line 18
    invoke-super {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RowBreakerDecorator;->isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
