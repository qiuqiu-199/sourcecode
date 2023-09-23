.class public Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffUtilCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Leu/davidea/flexibleadapter/items/IFlexible;",
        ">",
        "Landroid/support/v7/util/DiffUtil$Callback;"
    }
.end annotation


# instance fields
.field protected newItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected oldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5628
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 5686
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5687
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5688
    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/IFlexible;->shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 5663
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5664
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5665
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 0

    .line 5710
    sget-object p1, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    return-object p1
.end method

.method public final getNewItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 5639
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    return-object v0
.end method

.method public final getNewListSize()I
    .locals 1

    .line 5649
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOldListSize()I
    .locals 1

    .line 5644
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final setItems(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 5634
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->oldItems:Ljava/util/List;

    .line 5635
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->newItems:Ljava/util/List;

    return-void
.end method
