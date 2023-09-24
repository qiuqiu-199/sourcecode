.class public interface abstract Leu/davidea/flexibleadapter/items/IExpandable;
.super Ljava/lang/Object;
.source "IExpandable.java"

# interfaces
.implements Leu/davidea/flexibleadapter/items/IFlexible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Ljava/lang/Object;",
        "S::",
        "Leu/davidea/flexibleadapter/items/IFlexible;",
        ">",
        "Ljava/lang/Object;",
        "Leu/davidea/flexibleadapter/items/IFlexible<",
        "TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract getExpansionLevel()I
.end method

.method public abstract getSubItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract setExpanded(Z)V
.end method
