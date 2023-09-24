.class public abstract Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FilterableAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;,
        Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private displayedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private hiddenItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private itemFilter:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter<",
            "TT;TVH;>.ItemFilter;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->displayedList:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->hiddenItemsList:Ljava/util/List;

    .line 20
    new-instance v0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;

    invoke-direct {v0, p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;-><init>(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->itemFilter:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;

    .line 21
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->displayedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->displayedList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->itemFilter:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;

    return-object v0
.end method

.method public getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->displayedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->displayedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 42
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public hideItem(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->hiddenItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->hiddenItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public unhideItem(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->hiddenItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->notifyDataSetChanged()V

    return-void
.end method
