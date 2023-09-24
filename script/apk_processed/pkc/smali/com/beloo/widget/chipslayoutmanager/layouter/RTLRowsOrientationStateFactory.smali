.class Lcom/beloo/widget/chipslayoutmanager/layouter/RTLRowsOrientationStateFactory;
.super Ljava/lang/Object;
.source "RTLRowsOrientationStateFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/IOrientationStateFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefaultBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;
    .locals 1

    .line 24
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RTLRowBreakerFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/RTLRowBreakerFactory;-><init>()V

    return-object v0
.end method

.method public createLayouterCreator(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/beloo/widget/chipslayoutmanager/layouter/ILayouterCreator;
    .locals 1

    .line 14
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLRowsCreator;

    invoke-direct {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/layouter/RTLRowsCreator;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public createRowStrategyFactory()Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategyFactory;
    .locals 1

    .line 19
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/gravity/RTLRowStrategyFactory;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/gravity/RTLRowStrategyFactory;-><init>()V

    return-object v0
.end method
