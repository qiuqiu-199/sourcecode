.class public interface abstract Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;
.super Ljava/lang/Object;
.source "IViewCacheStorage.java"


# virtual methods
.method public abstract getLastCachePosition()Ljava/lang/Integer;
.end method

.method public abstract getStartOfRow(I)I
.end method

.method public abstract isPositionEndsRow(I)Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract purge()V
.end method

.method public abstract purgeCacheFromPosition(I)V
.end method

.method public abstract storeRow(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation
.end method
