.class public final Lorg/inaturalist/android/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static centerCropTransform2:Lorg/inaturalist/android/GlideOptions;

.field private static centerInsideTransform1:Lorg/inaturalist/android/GlideOptions;

.field private static circleCropTransform3:Lorg/inaturalist/android/GlideOptions;

.field private static fitCenterTransform0:Lorg/inaturalist/android/GlideOptions;

.field private static noAnimation5:Lorg/inaturalist/android/GlideOptions;

.field private static noTransformation4:Lorg/inaturalist/android/GlideOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 181
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 157
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->centerCropTransform2:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 159
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->centerCropTransform2:Lorg/inaturalist/android/GlideOptions;

    .line 161
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->centerCropTransform2:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 145
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->centerInsideTransform1:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 147
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->centerInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->centerInsideTransform1:Lorg/inaturalist/android/GlideOptions;

    .line 149
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->centerInsideTransform1:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 169
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->circleCropTransform3:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 171
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->circleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->circleCropTransform3:Lorg/inaturalist/android/GlideOptions;

    .line 173
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->circleCropTransform3:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 209
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 53
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 233
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 257
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 249
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->encodeQuality(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 93
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->error(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 85
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 133
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->fitCenterTransform0:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 135
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->fitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->fitCenterTransform0:Lorg/inaturalist/android/GlideOptions;

    .line 137
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->fitCenterTransform0:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 217
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 225
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/inaturalist/android/GlideOptions;->frame(J)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 265
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->noAnimation5:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 267
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontAnimate()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->noAnimation5:Lorg/inaturalist/android/GlideOptions;

    .line 269
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->noAnimation5:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 189
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->noTransformation4:Lorg/inaturalist/android/GlideOptions;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    .line 191
    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->dontTransform()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/GlideOptions;->noTransformation4:Lorg/inaturalist/android/GlideOptions;

    .line 193
    :cond_0
    sget-object v0, Lorg/inaturalist/android/GlideOptions;->noTransformation4:Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/inaturalist/android/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 117
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->override(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 109
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/inaturalist/android/GlideOptions;->override(II)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 77
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->placeholder(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 69
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 61
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 125
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 45
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->sizeMultiplier(F)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 101
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->skipMemoryCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 241
    new-instance v0, Lorg/inaturalist/android/GlideOptions;

    invoke-direct {v0}, Lorg/inaturalist/android/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/GlideOptions;->timeout(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lcom/bumptech/glide/request/RequestOptions;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 524
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->autoClone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final autoClone()Lorg/inaturalist/android/GlideOptions;
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->centerCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerCrop()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 437
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->centerInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final centerInside()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 461
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->circleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final circleCrop()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 473
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->clone()Lorg/inaturalist/android/GlideOptions;

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

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->clone()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 371
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Ljava/lang/Class;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 383
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->disallowHardwareConfig()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final disallowHardwareConfig()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 413
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 293
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->dontAnimate()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontAnimate()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 518
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->dontTransform()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransform()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 512
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 389
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->encodeQuality(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final encodeQuality(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 395
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->error(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final error(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 335
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 329
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final fallback(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 323
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 317
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->fitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final fitCenter()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 449
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/bumptech/glide/load/DecodeFormat;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 407
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->frame(J)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final frame(J)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 401
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->lock()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final lock()Lorg/inaturalist/android/GlideOptions;
    .locals 1

    .line 529
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->onlyRetrieveFromCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final onlyRetrieveFromCache(Z)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 287
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterCrop()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->optionalCenterInside()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCenterInside()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 455
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->optionalCircleCrop()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalCircleCrop()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 467
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/inaturalist/android/GlideOptions;->optionalFitCenter()Lorg/inaturalist/android/GlideOptions;

    move-result-object v0

    return-object v0
.end method

.method public final optionalFitCenter()Lorg/inaturalist/android/GlideOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 443
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GlideOptions;

    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 492
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 499
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->override(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->override(II)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final override(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 359
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final override(II)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 353
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final placeholder(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 311
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 305
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final priority(Lcom/bumptech/glide/Priority;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 299
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 377
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 365
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->sizeMultiplier(F)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final sizeMultiplier(F)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 275
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->skipMemoryCache(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final skipMemoryCache(Z)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 347
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final theme(Landroid/content/res/Resources$Theme;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 341
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->timeout(I)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(I)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 425
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transform(Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 479
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public final transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .line 506
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lorg/inaturalist/android/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 486
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lorg/inaturalist/android/GlideOptions;

    move-result-object p1

    return-object p1
.end method

.method public final useUnlimitedSourceGeneratorsPool(Z)Lorg/inaturalist/android/GlideOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 281
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GlideOptions;

    return-object p1
.end method
