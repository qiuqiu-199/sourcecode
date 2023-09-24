.class public interface abstract Leu/davidea/flexibleadapter/items/IFlexible;
.super Ljava/lang/Object;
.source "IFlexible.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)TVH;"
        }
    .end annotation
.end method

.method public abstract getItemViewType()I
.end method

.method public abstract getLayoutRes()I
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSwipeable()Z
.end method

.method public abstract onViewAttached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onViewDetached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;TVH;I)V"
        }
    .end annotation
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setSelectable(Z)V
.end method

.method public abstract shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z
.end method

.method public abstract unbindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;TVH;I)V"
        }
    .end annotation
.end method
