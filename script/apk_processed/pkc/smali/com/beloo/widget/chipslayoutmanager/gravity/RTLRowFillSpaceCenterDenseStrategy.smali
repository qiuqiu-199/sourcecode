.class Lcom/beloo/widget/chipslayoutmanager/gravity/RTLRowFillSpaceCenterDenseStrategy;
.super Ljava/lang/Object;
.source "RTLRowFillSpaceCenterDenseStrategy.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/gravity/IRowStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStrategy(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;",
            "Ljava/util/List<",
            "Lcom/beloo/widget/chipslayoutmanager/layouter/Item;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/gravity/GravityUtil;->getHorizontalDifference(Lcom/beloo/widget/chipslayoutmanager/layouter/AbstractLayouter;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;

    .line 17
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->getViewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 18
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 19
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    return-void
.end method