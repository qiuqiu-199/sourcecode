.class public interface abstract Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;
.super Ljava/lang/Object;
.source "INaturalistApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/INaturalistApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestPermissionResult"
.end annotation


# virtual methods
.method public abstract onPermissionDenied()V
.end method

.method public abstract onPermissionGranted()V
.end method
