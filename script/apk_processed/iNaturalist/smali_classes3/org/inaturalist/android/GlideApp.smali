.class public final Lorg/inaturalist/android/GlideApp;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lcom/bumptech/glide/Glide;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->init(Lcom/bumptech/glide/Glide;)V

    return-void
.end method

.method public static tearDown()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 66
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method

.method public static with(Landroid/view/View;)Lorg/inaturalist/android/GlideRequests;
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GlideRequests;

    return-object p0
.end method
