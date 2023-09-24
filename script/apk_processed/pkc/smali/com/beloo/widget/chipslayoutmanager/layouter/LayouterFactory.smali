.class public Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;
.super Ljava/lang/Object;
.source "LayouterFactory.java"


# instance fields
.field private breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

.field private cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

.field private criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

.field private gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

.field private layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

.field private layouterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;",
            ">;"
        }
    .end annotation
.end field

.field private placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

.field private rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterListeners:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    .line 41
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getViewPositionsStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object p2

    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    .line 42
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 43
    iput-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    .line 44
    iput-object p4, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

    .line 45
    iput-object p5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    .line 46
    iput-object p6, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    .line 47
    iput-object p7, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    return-void
.end method

.method private createBackwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;->createBackwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    return-object v0
.end method

.method private createForwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;->createForwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createOffsetRectForBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;->createOffsetRectForBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private createOffsetRectForForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterCreator:Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;->createOffsetRectForForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private fillBasicBuilder(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layoutManager(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    .line 76
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->createCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->canvas(Lcom/beloo/widget/chipslayoutmanager/IBorder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 77
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildGravityResolver()Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->childGravityResolver(Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    .line 78
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->cacheStorage(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    .line 79
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->gravityModifiersFactory(Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layouterListeners:Ljava/util/List;

    .line 80
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->addLayouterListeners(Ljava/util/List;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final buildBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;
    .locals 1

    .line 118
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    .line 119
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;->getBackwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->setFinishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V

    .line 120
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;->getAtStartPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->setPlacer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)V

    return-object p1
.end method

.method public final buildForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;
    .locals 1

    .line 109
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    .line 110
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;->getForwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->setFinishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V

    .line 111
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;->getAtEndPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->setPlacer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)V

    return-object p1
.end method

.method public final getBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->createBackwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->fillBasicBuilder(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    .line 86
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->createOffsetRectForBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->offsetRect(Landroid/graphics/Rect;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    .line 87
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;->createBackwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->breaker(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

    .line 88
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;->getBackwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->finishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    .line 89
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->rowStrategy(Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    .line 90
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;->getAtStartPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->placer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/DecrementalPositionIterator;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 91
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/DecrementalPositionIterator;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->positionIterator(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->build()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    move-result-object p1

    return-object p1
.end method

.method public final getForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->createForwardBuilder()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->fillBasicBuilder(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->createOffsetRectForForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->offsetRect(Landroid/graphics/Rect;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->breakerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;

    .line 99
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;->createForwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->breaker(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->criteriaFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;

    .line 100
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;->getForwardFinishingCriteria()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->finishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/gravity/SkipLastRowStrategy;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 101
    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isStrategyAppliedWithLastRow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/gravity/SkipLastRowStrategy;-><init>(Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;Z)V

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->rowStrategy(Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    .line 102
    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;->getAtEndPlacer()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->placer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/IncrementalPositionIterator;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 103
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IncrementalPositionIterator;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->positionIterator(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->build()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    move-result-object p1

    return-object p1
.end method
