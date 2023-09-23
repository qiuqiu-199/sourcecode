.class Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;
.super Landroid/widget/Filter;
.source "FilterableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemFilter"
.end annotation


# instance fields
.field private filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->this$0:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;

    .line 51
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->originalList:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->originalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    .line 65
    invoke-interface {v2, p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;->isKeptForConstraint(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->originalList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_3
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->filteredList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->this$0:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->access$000(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 79
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->this$0:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->access$000(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$ItemFilter;->this$0:Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;->notifyDataSetChanged()V

    return-void
.end method
