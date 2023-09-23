.class public Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "ChipsLayoutManager.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;,
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$StrategyBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChipsLayoutManager"


# instance fields
.field private anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

.field private anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

.field private cacheNormalizationPosition:Ljava/lang/Integer;

.field private canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

.field private childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

.field private childViewPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

.field private container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

.field private disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

.field private isAfterPreLayout:Z

.field private isLayoutRTL:Z

.field private isScrollingEnabledContract:Z

.field private isSmoothScrollbarEnabled:Z

.field private isStrategyAppliedWithLastRow:Z

.field private layoutOrientation:I
    .annotation build Lcom/beloo/widget/chipslayoutmanager/Orientation;
    .end annotation
.end field

.field private logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

.field private maxViewsInRow:Ljava/lang/Integer;

.field private measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

.field private orientation:I

.field private placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

.field private rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

.field private rowStrategy:I

.field private scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

.field private spy:Lcom/beloo/widget/chipslayoutmanager/util/testing/ISpy;

.field private stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

.field private viewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 193
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 91
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViewPositions:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isScrollingEnabledContract:Z

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->maxViewsInRow:Ljava/lang/Integer;

    .line 104
    new-instance v2, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/EmptyRowBreaker;

    invoke-direct {v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/EmptyRowBreaker;-><init>()V

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    .line 107
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->layoutOrientation:I

    .line 109
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->rowStrategy:I

    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isSmoothScrollbarEnabled:Z

    .line 127
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 134
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    .line 139
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    invoke-direct {v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    .line 150
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL:Z

    .line 184
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    invoke-direct {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    .line 187
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/util/testing/EmptySpy;

    invoke-direct {v1}, Lcom/beloo/widget/chipslayoutmanager/util/testing/EmptySpy;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->spy:Lcom/beloo/widget/chipslayoutmanager/util/testing/ISpy;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 196
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    .line 198
    new-instance p1, Lcom/beloo/widget/chipslayoutmanager/util/log/LoggerFactory;

    invoke-direct {p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LoggerFactory;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/LoggerFactory;->getFillLogger(Landroid/util/SparseArray;)Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    .line 201
    new-instance p1, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;

    invoke-direct {p1, p0}, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;->createCacheStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    .line 202
    new-instance p1, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;

    invoke-direct {p1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    .line 203
    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/IScrollingController;)Lcom/beloo/widget/chipslayoutmanager/IScrollingController;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;)Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    return-object p0
.end method

.method static synthetic access$202(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;)Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->layoutOrientation:I

    return p0
.end method

.method static synthetic access$602(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->layoutOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    return-object p0
.end method

.method static synthetic access$702(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-object p0
.end method

.method static synthetic access$802(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;)Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-object p1
.end method

.method static synthetic access$900(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    return-object p0
.end method

.method static synthetic access$902(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;)Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    return-object p1
.end method

.method private buildChildWithPositionsMap()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViewPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 840
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 841
    invoke-virtual {p0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 842
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViewPositions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calcRecyclerCacheSize(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->maxViewsInRow:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->maxViewsInRow:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 901
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 800
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fillCache()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 803
    :goto_0
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 804
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onStartLayouter(I)V

    .line 812
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 815
    invoke-direct {p0, p1, p2, v3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fillWithLayouter(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;I)V

    .line 818
    :cond_1
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p2, v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onStartLayouter(I)V

    .line 821
    invoke-direct {p0, p1, p3, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fillWithLayouter(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;I)V

    .line 823
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p2}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onAfterLayouter()V

    .line 826
    :goto_1
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 827
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 828
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p2, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onRemovedAndRecycled(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    :cond_2
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->findBorderViews()V

    .line 832
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->buildChildWithPositionsMap()V

    .line 834
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 835
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onAfterRemovingViews()V

    return-void
.end method

.method private fillCache()V
    .locals 5

    .line 788
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 789
    invoke-virtual {p0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 790
    invoke-virtual {p0, v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 791
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillWithLayouter(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;I)V
    .locals 2

    if-gez p3, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-interface {p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->positionIterator()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    move-result-object v0

    .line 852
    invoke-virtual {v0, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;->move(I)V

    .line 853
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 854
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 855
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 858
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onItemRequested()V

    .line 869
    invoke-interface {p2, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->placeView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 874
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onItemRecycled()V

    goto :goto_1

    .line 880
    :cond_2
    invoke-interface {p2, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->onAttachView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 890
    :catch_0
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onFinishedLayouter()V

    .line 893
    invoke-interface {p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->layoutRow()V

    return-void
.end method

.method private layoutDisappearingViews(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V
    .locals 5

    .line 754
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteriaFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/InfiniteCriteriaFactory;-><init>()V

    .line 755
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;->createDisappearingPlacerFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

    invoke-interface {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;->getDisappearingViews(Landroid/support/v7/widget/RecyclerView$Recycler;)Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "disappearing views"

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fill disappearing views"

    const-string v3, ""

    .line 761
    invoke-static {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->buildForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 765
    :goto_0
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->getForwardViews()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 766
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->getForwardViews()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 767
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->placeView(Landroid/view/View;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 770
    :cond_0
    invoke-interface {p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->layoutRow()V

    .line 772
    invoke-virtual {v0, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->buildBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object p2

    .line 774
    :goto_1
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->getBackwardViews()Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    .line 775
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->getBackwardViews()Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 776
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->placeView(Landroid/view/View;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    :cond_1
    invoke-interface {p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;->layoutRow()V

    :cond_2
    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;
    .locals 2

    if-nez p0, :cond_0

    .line 211
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "you have passed null context to builder"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_0
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$StrategyBuilder;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$StrategyBuilder;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    return-object v0
.end method

.method private onLayoutUpdatedFromPosition(I)V
    .locals 3

    .line 1030
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache purged from position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    .line 1032
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getStartOfRow(I)I

    move-result p1

    .line 1033
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 1034
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1033
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    return-void
.end method

.method private performNormalizationIfNeeded()V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 911
    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 912
    invoke-virtual {p0, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 914
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 915
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v1, "normalization"

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " top view position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    sget-object v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache purged from position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v1, v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 922
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestLayoutWithAnimations()V

    :cond_1
    return-void
.end method

.method private requestLayoutWithAnimations()V
    .locals 0

    .line 437
    invoke-static {p0}, Lcom/beloo/widget/chipslayoutmanager/util/LayoutManagerUtil;->requestLayoutWithAnimations(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->canScrollHorizontally()Z

    move-result v0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->canScrollVertically()Z

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 747
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 748
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViewPositions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getMinPositionOnScreen()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->getMaxPositionOnScreen()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 431
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object v0
.end method

.method public getCanvas()Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    return-object v0
.end method

.method public getChildGravityResolver()Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    return-object v0
.end method

.method public getCompletelyVisibleViewsCount()I
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->childViews:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 511
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->canvas:Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;

    invoke-interface {v3, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/ICanvas;->isFullyVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemCount()I
    .locals 2

    .line 642
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;->getDeletingItemsOnScreenCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxViewsInRow()Ljava/lang/Integer;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->maxViewsInRow:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->rowBreaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IRowBreaker;

    return-object v0
.end method

.method public getRowStrategyType()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->rowStrategy:I

    return v0
.end method

.method public getViewPositionsStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    return-object v0
.end method

.method public horizontalScrollingController()Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;
    .locals 2

    .line 1152
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-direct {v0, p0, v1, p0}, Lcom/beloo/widget/chipslayoutmanager/HorizontalScrollingController;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;)V

    return-object v0
.end method

.method public isLayoutRTL()Z
    .locals 2

    .line 623
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScrollingEnabledContract()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isScrollingEnabledContract:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    .line 1083
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStrategyAppliedWithLastRow()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isStrategyAppliedWithLastRow:Z

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->setRegistered(Z)V

    .line 954
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p2, :cond_1

    .line 960
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->setRegistered(Z)V

    .line 961
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "onItemsAdded"

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starts from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 985
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 986
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onLayoutUpdatedFromPosition(I)V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const-string v0, "onItemsChanged"

    const-string v1, ""

    const/4 v2, 0x1

    .line 994
    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 995
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 996
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purge()V

    const/4 p1, 0x0

    .line 997
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onLayoutUpdatedFromPosition(I)V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 7

    const-string v0, "onItemsMoved"

    .line 1023
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "from = %d, to = %d, itemCount = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1024
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    .line 1025
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onLayoutUpdatedFromPosition(I)V

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "onItemsRemoved"

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starts from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 973
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 974
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onLayoutUpdatedFromPosition(I)V

    .line 976
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {p2, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "onItemsUpdated"

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starts from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1006
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1007
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onLayoutUpdatedFromPosition(I)V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1015
    invoke-virtual {p0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .line 650
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->spy:Lcom/beloo/widget/chipslayoutmanager/util/testing/ISpy;

    invoke-interface {v0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/util/testing/ISpy;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 651
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChildren. State ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    :cond_0
    const-string v0, "onLayoutChildren"

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;I)I

    .line 660
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v0

    iget-boolean v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL:Z

    if-eq v0, v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL:Z

    .line 664
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 667
    :cond_1
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->calcRecyclerCacheSize(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 669
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;->calcDisappearingViewsLength(Landroid/support/v7/widget/RecyclerView$Recycler;)I

    move-result v0

    const-string v3, "LayoutManager"

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v3, "onDeletingHeightCalc"

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "additional height  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 678
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v2

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 679
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-interface {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->resetRowCoordinates(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 680
    sget-object v2, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anchor state in pre-layout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 684
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createDefaultFinishingCriteriaFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;

    move-result-object v2

    .line 685
    invoke-virtual {v2, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->setAdditionalRowsCount(I)V

    .line 686
    invoke-virtual {v2, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->setAdditionalLength(I)V

    .line 688
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;->createRealPlacerFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->logger:Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-interface {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;->onBeforeLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 691
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 692
    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 693
    invoke-virtual {v0, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object v0

    .line 691
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V

    const/4 p1, 0x1

    .line 695
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isAfterPreLayout:Z

    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 700
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    .line 701
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 702
    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createDefaultFinishingCriteriaFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;

    move-result-object v0

    .line 713
    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->setAdditionalRowsCount(I)V

    .line 715
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    invoke-virtual {v3}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;->createRealPlacerFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object v1

    .line 717
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0, v3}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object v0

    .line 719
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V

    .line 722
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v3, p1, v2}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->normalizeGaps(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 723
    sget-object v2, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    const-string v3, "normalize gaps"

    invoke-static {v2, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v2

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 726
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->requestLayoutWithAnimations()V

    .line 729
    :cond_4
    iget-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isAfterPreLayout:Z

    if-eqz v2, :cond_5

    .line 731
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->layoutDisappearingViews(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V

    :cond_5
    const/4 p1, 0x0

    .line 734
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isAfterPreLayout:Z

    .line 737
    :goto_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->disappearingViewsManager:Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/IDisappearingViewsManager;->reset()V

    .line 739
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isMeasuring()Z

    move-result p1

    if-nez p1, :cond_6

    .line 740
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->onSizeChanged()V

    :cond_6
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 449
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    .line 451
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->getAnchorViewState()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 452
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 454
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 455
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->createNotFound()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 456
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->setPosition(Ljava/lang/Integer;)V

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->getPositionsCache(I)Landroid/os/Parcelable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 460
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->getNormalizationPosition(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    .line 462
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. last cache position before cleanup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getLastCachePosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->purgeCacheFromPosition(I)V

    .line 467
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. anchor position ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. layoutOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " normalizationPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. last cache position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getLastCachePosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->putAnchorViewState(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 479
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->putPositionsCache(ILandroid/os/Parcelable;)V

    .line 480
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->putOrientation(I)V

    .line 481
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STORE. last cache position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v2}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getLastCachePosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getLastCachePosition()Ljava/lang/Integer;

    move-result-object v0

    .line 485
    :goto_0
    sget-object v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STORE. layoutOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " normalizationPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->orientation:I

    invoke-virtual {v1, v2, v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->putNormalizationPosition(ILjava/lang/Integer;)V

    .line 489
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->container:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    return-object v0
.end method

.method public onScrolled(Lcom/beloo/widget/chipslayoutmanager/IScrollingController;Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 1158
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->performNormalizationIfNeeded()V

    .line 1159
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->getAnchor()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 1161
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createDefaultFinishingCriteriaFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;

    move-result-object p1

    const/4 p3, 0x1

    .line 1162
    invoke-virtual {p1, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/AbstractCriteriaFactory;->setAdditionalRowsCount(I)V

    .line 1163
    iget-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->placerFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/PlacerFactory;->createRealPlacerFactory()Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;->createLayouterFactory(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/ICriteriaFactory;Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacerFactory;)Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;

    move-result-object p1

    .line 1165
    iget-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 1166
    invoke-virtual {p1, p3}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getBackwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object p3

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 1167
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/LayouterFactory;->getForwardLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;

    move-result-object p1

    .line 1165
    invoke-direct {p0, p2, p3, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 3

    .line 1090
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getLastCachePosition()Ljava/lang/Integer;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->cacheNormalizationPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->viewPositionsStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;->getStartOfRow(I)I

    move-result p1

    .line 1103
    :cond_2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorFactory:Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/IAnchorFactory;->createNotFound()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 1104
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->setPosition(Ljava/lang/Integer;)V

    .line 1107
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    :cond_3
    :goto_1
    const-string v0, "span layout manager"

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot scroll to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", item count "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-interface {v0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(II)V
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {v0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->measure(II)V

    .line 937
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measured dimension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureSupporter:Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;

    invoke-interface {p2}, Lcom/beloo/widget/chipslayoutmanager/layouter/IMeasureSupporter;->getMeasuredHeight()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .line 1115
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p2

    if-ge p3, p2, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->scrollingController:Lcom/beloo/widget/chipslayoutmanager/IScrollingController;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x96

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->anchorView:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/beloo/widget/chipslayoutmanager/IScrollingController;->createSmoothScroller(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object p1

    .line 1121
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1122
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "span layout manager"

    .line 1116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot scroll to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", item count "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verticalScrollingController()Lcom/beloo/widget/chipslayoutmanager/VerticalScrollingController;
    .locals 2

    .line 1148
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/VerticalScrollingController;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->stateFactory:Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;

    invoke-direct {v0, p0, v1, p0}, Lcom/beloo/widget/chipslayoutmanager/VerticalScrollingController;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/layouter/IStateFactory;Lcom/beloo/widget/chipslayoutmanager/ScrollingController$IScrollerListener;)V

    return-object v0
.end method
