.class public interface abstract Lcom/mikepenz/fastadapter/IItemAdapter;
.super Ljava/lang/Object;
.source "IItemAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IItemAdapter$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapter<",
        "TItem;>;"
    }
.end annotation


# virtual methods
.method public abstract add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public varargs abstract add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method
