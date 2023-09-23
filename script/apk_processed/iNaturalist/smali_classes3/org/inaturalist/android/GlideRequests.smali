.class public Lorg/inaturalist/android/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequests;->as(Ljava/lang/Class;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TResourceType;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/inaturalist/android/GlideRequest;

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequests;->glide:Lcom/bumptech/glide/Glide;

    invoke-direct {v0, v1, p0, p1}, Lorg/inaturalist/android/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequests;->asBitmap()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequests;->asDrawable()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequests;->asFile()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequests;->asGif()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequests;->download(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequests;->downloadOnly()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequests;->load(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    instance-of v0, p1, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_0
    return-void
.end method
