.class public interface abstract Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/CommentsIdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIDAdded"
.end annotation


# virtual methods
.method public abstract onCommentRemoved(Lorg/inaturalist/android/BetterJSONObject;)V
.end method

.method public abstract onCommentUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
.end method

.method public abstract onIdentificationAdded(Lorg/inaturalist/android/BetterJSONObject;)V
.end method

.method public abstract onIdentificationRemoved(Lorg/inaturalist/android/BetterJSONObject;)V
.end method

.method public abstract onIdentificationRestored(Lorg/inaturalist/android/BetterJSONObject;)V
.end method

.method public abstract onIdentificationUpdated(Lorg/inaturalist/android/BetterJSONObject;)V
.end method
