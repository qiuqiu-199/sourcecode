.class public interface abstract Leu/davidea/flexibleadapter/items/ISectionable;
.super Ljava/lang/Object;
.source "ISectionable.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/IFlexible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "T::",
        "Leu/davidea/flexibleadapter/items/IHeader;",
        ">",
        "Ljava/lang/Object;",
        "Leu/davidea/flexibleadapter/items/IFlexible<",
        "TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract getHeader()Leu/davidea/flexibleadapter/items/IHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
