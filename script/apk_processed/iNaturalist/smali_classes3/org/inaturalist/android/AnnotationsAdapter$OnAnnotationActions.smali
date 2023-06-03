.class public interface abstract Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;
.super Ljava/lang/Object;
.source "AnnotationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/AnnotationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAnnotationActions"
.end annotation


# virtual methods
.method public abstract onAnnotationAgree(Ljava/lang/String;)V
.end method

.method public abstract onAnnotationCollapsedExpanded()V
.end method

.method public abstract onAnnotationDisagree(Ljava/lang/String;)V
.end method

.method public abstract onAnnotationVoteDelete(Ljava/lang/String;)V
.end method

.method public abstract onDeleteAnnotationValue(Ljava/lang/String;)V
.end method

.method public abstract onSetAnnotationValue(II)V
.end method
