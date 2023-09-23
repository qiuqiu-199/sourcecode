.class public interface abstract Lorg/inaturalist/android/SignInTask$SignInTaskStatus;
.super Ljava/lang/Object;
.source "SignInTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/SignInTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignInTaskStatus"
.end annotation


# virtual methods
.method public abstract onLoginFailed(Lorg/inaturalist/android/INaturalistService$LoginType;)V
.end method

.method public abstract onLoginSuccessful()V
.end method
