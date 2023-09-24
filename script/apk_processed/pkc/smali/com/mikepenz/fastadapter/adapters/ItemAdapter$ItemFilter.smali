.class public Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;
.super Landroid/widget/Filter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemFilter"
.end annotation


# instance fields
.field private mConstraint:Ljava/lang/CharSequence;

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 550
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->isPositionBasedStateManagement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(Z)V

    .line 555
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mConstraint:Ljava/lang/CharSequence;

    .line 557
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->access$000(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    .line 561
    :cond_1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_6

    .line 563
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 570
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-static {v2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->access$100(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 574
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 575
    iget-object v4, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-static {v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->access$100(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;

    move-result-object v4

    invoke-interface {v4, v3, p1}, Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;->filter(Lcom/mikepenz/fastadapter/IItem;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 576
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    :cond_4
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-static {p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->access$000(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    .line 583
    :cond_5
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 584
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2

    .line 565
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 566
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 568
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->mOriginalItems:Ljava/util/List;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 596
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    iget-object p1, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItemFilterListener:Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilterListener;

    if-eqz p1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilter;->this$0:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    iget-object p1, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->mItemFilterListener:Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilterListener;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter$ItemFilterListener;->itemsFiltered()V

    :cond_1
    return-void
.end method
