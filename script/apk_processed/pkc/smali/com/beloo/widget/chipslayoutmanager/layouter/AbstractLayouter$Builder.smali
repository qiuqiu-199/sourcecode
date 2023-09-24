.class public abstract Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
.super Ljava/lang/Object;
.source "AbstractLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

.field private breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

.field private cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

.field private childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

.field private finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

.field private gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

.field private layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private layouterListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;",
            ">;"
        }
    .end annotation
.end field

.field private offsetRect:Landroid/graphics/Rect;

.field private placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

.field private positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

.field private rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layouterListeners:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/IBorder;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    return-object p0
.end method

.method static synthetic access$500(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Landroid/graphics/Rect;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->offsetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Ljava/util/HashSet;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layouterListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    return-object p0
.end method


# virtual methods
.method final addLayouterListeners(Ljava/util/List;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;",
            ">;)",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layouterListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method final breaker(Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 1

    const-string v0, "breaker shouldn\'t be null"

    .line 414
    invoke-static {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/util/AssertionUtils;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    return-object p0
.end method

.method public final build()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layoutManager can\'t be null, call #layoutManager()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    if-nez v0, :cond_1

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "breaker can\'t be null, call #breaker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "border can\'t be null, call #border()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    if-nez v0, :cond_3

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cacheStorage can\'t be null, call #cacheStorage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    if-nez v0, :cond_4

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rowStrategy can\'t be null, call #rowStrategy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->offsetRect:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "offsetRect can\'t be null, call #offsetRect()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    if-nez v0, :cond_6

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finishingCriteria can\'t be null, call #finishingCriteria()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    if-nez v0, :cond_7

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "placer can\'t be null, call #placer()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_7
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    if-nez v0, :cond_8

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gravityModifiersFactory can\'t be null, call #gravityModifiersFactory()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_8
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    if-nez v0, :cond_9

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childGravityResolver can\'t be null, call #childGravityResolver()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_9
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    if-nez v0, :cond_a

    .line 466
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "positionIterator can\'t be null, call #positionIterator()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_a
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;

    move-result-object v0

    return-object v0
.end method

.method final cacheStorage(Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    return-object p0
.end method

.method final canvas(Lcom/beloo/widget/chipslayoutmanager/IBorder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    return-object p0
.end method

.method final childGravityResolver(Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    return-object p0
.end method

.method protected abstract createLayouter()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.end method

.method final finishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    return-object p0
.end method

.method final gravityModifiersFactory(Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    return-object p0
.end method

.method public final layoutManager(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object p0
.end method

.method public offsetRect(Landroid/graphics/Rect;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->offsetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final placer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    return-object p0
.end method

.method public positionIterator(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    return-object p0
.end method

.method rowStrategy(Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    return-object p0
.end method
