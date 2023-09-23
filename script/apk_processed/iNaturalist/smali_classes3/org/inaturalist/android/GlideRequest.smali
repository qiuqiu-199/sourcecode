.class public Lorg/inaturalist/android/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 550
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public centerCrop()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public centerInside()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 429
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public circleCrop()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->circleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 453
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->circleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->clone()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->clone()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/inaturalist/android/GlideRequest;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 612
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideRequest;

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public disallowHardwareConfig()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->disallowHardwareConfig()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->disallowHardwareConfig()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public dontAnimate()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontAnimate()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontAnimate()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public dontTransform()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontTransform()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 531
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontTransform()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 345
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public encodeQuality(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeQuality(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeQuality(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public error(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->error(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->error(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public fallback(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public fitCenter()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->fitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 405
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->fitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public frame(J)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->frame(J)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->frame(J)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getDownloadOnlyRequest()Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadOnlyRequest()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/inaturalist/android/GlideRequest;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lorg/inaturalist/android/GlideRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lorg/inaturalist/android/GlideRequest;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 560
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Landroid/net/Uri;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Ljava/io/File;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Ljava/lang/Integer;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Ljava/lang/String;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load(Ljava/net/URL;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->load([B)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 585
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 590
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 595
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 575
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 580
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public load([B)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 606
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public onlyRetrieveFromCache(Z)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalCenterCrop()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalCenterInside()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 417
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalCircleCrop()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCircleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalCircleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalFitCenter()Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalFitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->optionalFitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 506
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public override(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->override(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->override(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public override(II)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->override(II)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->override(II)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public placeholder(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public sizeMultiplier(F)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->sizeMultiplier(F)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->sizeMultiplier(F)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public skipMemoryCache(Z)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->skipMemoryCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->skipMemoryCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->thumbnail(F)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 570
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 565
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public timeout(I)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->timeout(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 357
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->timeout(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 465
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 481
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/inaturalist/android/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lorg/inaturalist/android/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 555
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideRequest;

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lorg/inaturalist/android/GlideRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/inaturalist/android/GlideRequest<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lorg/inaturalist/android/GlideOptions;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideRequest;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GlideRequest;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method
