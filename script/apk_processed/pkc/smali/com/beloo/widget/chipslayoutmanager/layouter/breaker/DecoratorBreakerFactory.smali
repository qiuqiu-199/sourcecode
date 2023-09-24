.class public Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;
.super Ljava/lang/Object;
.source "DecoratorBreakerFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;


# instance fields
.field private breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

.field private cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

.field private maxViewsInRow:Ljava/lang/Integer;

.field private rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;Ljava/lang/Integer;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    .line 23
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    .line 24
    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->maxViewsInRow:Ljava/lang/Integer;

    .line 25
    iput-object p4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    return-void
.end method


# virtual methods
.method public createBackwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;->createBackwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/BackwardBreakerContract;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    new-instance v3, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/CacheRowBreaker;

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-direct {v3, v4, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/CacheRowBreaker;-><init>(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    invoke-direct {v1, v2, v3}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/BackwardBreakerContract;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    .line 32
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->maxViewsInRow:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/MaxViewsBreaker;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->maxViewsInRow:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/MaxViewsBreaker;-><init>(ILcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public createForwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;->createForwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ForwardBreakerContract;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    invoke-direct {v1, v2, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ForwardBreakerContract;-><init>(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    .line 42
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->maxViewsInRow:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/MaxViewsBreaker;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/DecoratorBreakerFactory;->maxViewsInRow:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/MaxViewsBreaker;-><init>(ILcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method
