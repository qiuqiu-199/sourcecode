.class public abstract Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;
.super Ljava/lang/Object;
.source "AbstractLayouter.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/IBorder;
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;
    }
.end annotation


# instance fields
.field private border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

.field private breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

.field private cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

.field private childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

.field private currentViewHeight:I

.field private currentViewPosition:I

.field private currentViewWidth:I

.field private finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

.field private gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

.field private isRowCompleted:Z

.field private layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private layouterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;",
            ">;"
        }
    .end annotation
.end field

.field private placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

.field private positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

.field private previousRowSize:I

.field private rowSize:I

.field private rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

.field rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field viewBottom:I

.field viewLeft:I

.field viewRight:I

.field viewTop:I


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layouterListeners:Ljava/util/Set;

    .line 79
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$000(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 80
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$100(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    .line 81
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$200(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/IBorder;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    .line 82
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$300(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    .line 83
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$400(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    .line 84
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$500(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    .line 85
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$600(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewTop:I

    .line 86
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$600(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewBottom:I

    .line 87
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$600(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewRight:I

    .line 88
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$600(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewLeft:I

    .line 89
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$700(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layouterListeners:Ljava/util/Set;

    .line 90
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$800(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    .line 91
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$900(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    .line 92
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$1000(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    .line 93
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;->access$1100(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter$Builder;)Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    return-void
.end method

.method private applyChildGravity(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->childGravityResolver:Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/gravity/IChildGravityResolver;->getItemGravity(I)I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->gravityModifiersFactory:Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;->getGravityModifier(I)Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getStartRowBorder()I

    move-result v0

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getEndRowBorder()I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;->modifyChildRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private calculateView(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewHeight:I

    .line 154
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewWidth:I

    .line 155
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewPosition:I

    return-void
.end method

.method private notifyLayouterListeners()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layouterListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;

    .line 142
    invoke-interface {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;->onLayoutRow(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouter;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addLayouterListener(Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layouterListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final canNotBePlacedInCurrentRow()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->breaker:Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;

    invoke-interface {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;->isRowBroke(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result v0

    return v0
.end method

.method abstract createViewRect(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method final getCacheStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->cacheStorage:Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;

    return-object v0
.end method

.method public final getCanvasBottomBorder()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IBorder;->getCanvasBottomBorder()I

    move-result v0

    return v0
.end method

.method public final getCanvasLeftBorder()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IBorder;->getCanvasLeftBorder()I

    move-result v0

    return v0
.end method

.method public final getCanvasRightBorder()I
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IBorder;->getCanvasRightBorder()I

    move-result v0

    return v0
.end method

.method public final getCanvasTopBorder()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->border:Lcom/beloo/widget/chipslayoutmanager/IBorder;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/IBorder;->getCanvasTopBorder()I

    move-result v0

    return v0
.end method

.method public getCurrentRowItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/Item;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 112
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isReverseOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 117
    new-instance v3, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5, v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getCurrentViewHeight()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewHeight:I

    return v0
.end method

.method public final getCurrentViewPosition()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewPosition:I

    return v0
.end method

.method public final getCurrentViewWidth()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->currentViewWidth:I

    return v0
.end method

.method public abstract getEndRowBorder()I
.end method

.method public getLayoutManager()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object v0
.end method

.method public abstract getRowLength()I
.end method

.method public getRowSize()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    return v0
.end method

.method public abstract getStartRowBorder()I
.end method

.method public getViewBottom()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewBottom:I

    return v0
.end method

.method public final getViewLeft()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewLeft:I

    return v0
.end method

.method public final getViewRight()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewRight:I

    return v0
.end method

.method public getViewTop()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->viewTop:I

    return v0
.end method

.method abstract isAttachedViewFromNewRow(Landroid/view/View;)Z
.end method

.method public final isFinishedLayouting()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    invoke-interface {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;->isFinishedLayouting(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)Z

    move-result v0

    return v0
.end method

.method abstract isReverseOrder()Z
.end method

.method public isRowCompleted()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isRowCompleted:Z

    return v0
.end method

.method public final layoutRow()V
    .locals 9

    .line 238
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->onPreLayout()V

    .line 241
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowStrategy:Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->getCurrentRowItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;->applyStrategy(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;Ljava/util/List;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 247
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 248
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    .line 250
    invoke-direct {p0, v4, v2}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->applyChildGravity(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    invoke-interface {v2, v4}, Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;->addView(Landroid/view/View;)V

    .line 255
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->onAfterLayout()V

    .line 260
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->notifyLayouterListeners()V

    .line 263
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->previousRowSize:I

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    .line 266
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 267
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isRowCompleted:Z

    return-void
.end method

.method abstract onAfterLayout()V
.end method

.method public final onAttachView(Landroid/view/View;)Z
    .locals 2

    .line 218
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->calculateView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isAttachedViewFromNewRow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->notifyLayouterListeners()V

    .line 223
    iput v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->onInterceptAttachView(Landroid/view/View;)V

    .line 228
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isFinishedLayouting()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 230
    :cond_1
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    .line 231
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->attachView(Landroid/view/View;)V

    return v1
.end method

.method abstract onInterceptAttachView(Landroid/view/View;)V
.end method

.method abstract onPreLayout()V
.end method

.method public final placeView(Landroid/view/View;)Z
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutManager:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 164
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->calculateView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->canNotBePlacedInCurrentRow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isRowCompleted:Z

    .line 168
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->layoutRow()V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->isFinishedLayouting()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 173
    :cond_1
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowSize:I

    .line 174
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->createViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->rowViews:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public positionIterator()Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->positionIterator:Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractPositionIterator;

    return-object v0
.end method

.method setFinishingCriteria(Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->finishingCriteria:Lcom/beloo/widget/chipslayoutmanager/layouter/criteria/IFinishingCriteria;

    return-void
.end method

.method setPlacer(Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;->placer:Lcom/beloo/widget/chipslayoutmanager/layouter/placer/IPlacer;

    return-void
.end method
