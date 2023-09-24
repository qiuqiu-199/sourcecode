.class public interface abstract Lcom/mikepenz/fastadapter/IClickable;
.super Ljava/lang/Object;
.source "IClickable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getOnItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getOnPreItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end method
