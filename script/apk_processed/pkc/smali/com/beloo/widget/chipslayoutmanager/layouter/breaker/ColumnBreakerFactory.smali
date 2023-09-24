.class public Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ColumnBreakerFactory;
.super Ljava/lang/Object;
.source "ColumnBreakerFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/IBreakerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;
    .locals 1

    .line 6
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/LTRBackwardColumnBreaker;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/LTRBackwardColumnBreaker;-><init>()V

    return-object v0
.end method

.method public createForwardRowBreaker()Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/ILayoutRowBreaker;
    .locals 1

    .line 11
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/LTRForwardColumnBreaker;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/breaker/LTRForwardColumnBreaker;-><init>()V

    return-object v0
.end method
