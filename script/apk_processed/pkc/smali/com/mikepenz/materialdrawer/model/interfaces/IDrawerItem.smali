.class public interface abstract Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
.super Ljava/lang/Object;
.source "IDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem<",
        "TT;TVH;>;"
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

.method public abstract generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getLayoutRes()I
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
