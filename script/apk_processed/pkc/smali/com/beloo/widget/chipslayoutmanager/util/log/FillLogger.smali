.class Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;
.super Ljava/lang/Object;
.source "FillLogger.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/util/log/IFillLogger;


# instance fields
.field private recycledItems:I

.field private recycledSize:I

.field private requestedItems:I

.field private startCacheSize:I

.field private viewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->viewCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public onAfterLayouter()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledSize:I

    return-void
.end method

.method public onAfterRemovingViews()V
    .locals 3

    const-string v0, "fillWithLayouter"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycled count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public onBeforeLayouter(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "fill"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anchorPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getPosition()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v0, "fill"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anchorTop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->getAnchorViewRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public onFinishedLayouter()V
    .locals 7

    const-string v0, "fillWithLayouter"

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "reattached items = %d : requested items = %d recycledItems = %d"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->startCacheSize:I

    iget-object v6, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->requestedItems:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledItems:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1, v3}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public onItemRecycled()V
    .locals 1

    .line 38
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledItems:I

    return-void
.end method

.method public onItemRequested()V
    .locals 1

    .line 33
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->requestedItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->requestedItems:I

    return-void
.end method

.method public onRemovedAndRecycled(I)V
    .locals 3

    const-string v0, "fillWithLayouter"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " recycle position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    .line 56
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledSize:I

    return-void
.end method

.method public onStartLayouter(I)V
    .locals 3

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->requestedItems:I

    .line 24
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->recycledItems:I

    .line 25
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->startCacheSize:I

    const-string v0, "fillWithLayouter"

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    const-string p1, "fillWithLayouter"

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached items = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/util/log/FillLogger;->startCacheSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/beloo/widget/chipslayoutmanager/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method
