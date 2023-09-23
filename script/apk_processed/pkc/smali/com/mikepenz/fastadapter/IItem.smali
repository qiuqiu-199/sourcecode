.class public interface abstract Lcom/mikepenz/fastadapter/IItem;
.super Ljava/lang/Object;
.source "IItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdentifyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdentifyable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract withSetSelected(Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation
.end method
