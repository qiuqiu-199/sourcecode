.class public Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.super Lcom/mikepenz/fastadapter/AbstractAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;,
        Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Lcom/mikepenz/fastadapter/AbstractAdapter<",
        "TItem;>;",
        "Lcom/mikepenz/fastadapter/IItemAdapter<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field protected mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemAdapter$Predicate<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mItemFilter:Landroid/widget/Filter;

.field protected mItemFilterListener:Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilterListener;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mUseIdDistributor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/AbstractAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mUseIdDistributor:Z

    .line 55
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;-><init>(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItemFilter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mFilterPredicate:Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p2}, Lcom/mikepenz/fastadapter/utils/IdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 456
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 457
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 459
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    :cond_1
    return-object p0
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 418
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1}, Lcom/mikepenz/fastadapter/utils/IdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 425
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    if-nez v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :goto_0
    return-object p0
.end method

.method public final varargs add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public getAdapterItemCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getGlobalPosition(I)I
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getOrder()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public bridge synthetic removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    .line 519
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    return-object p0
.end method

.method public set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p1}, Lcom/mikepenz/fastadapter/utils/IdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(Z)V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 252
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v2

    .line 255
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    if-eq p1, v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 269
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz p1, :cond_3

    .line 270
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    if-le v0, v1, :cond_5

    if-lez v1, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    add-int/2addr v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    if-ge v0, v1, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(II)V

    .line 281
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 283
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_0

    .line 285
    :cond_7
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1}, Lcom/mikepenz/fastadapter/utils/IdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 390
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    .line 391
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mapPossibleTypes(Ljava/lang/Iterable;)V

    .line 393
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    return-object p0
.end method
