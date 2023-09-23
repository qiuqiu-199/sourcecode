.class public interface abstract Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;
.super Ljava/lang/Object;
.source "INaturalistApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/INaturalistApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadFileProgress"
.end annotation


# virtual methods
.method public abstract onDownloadError()V
.end method

.method public abstract onDownloadProgress(JJLjava/lang/String;)Z
.end method
