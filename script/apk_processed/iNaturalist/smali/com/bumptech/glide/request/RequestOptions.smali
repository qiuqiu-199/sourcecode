.class public Lcom/bumptech/glide/request/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DISK_CACHE_STRATEGY:I = 0x4

.field private static final ERROR_ID:I = 0x20

.field private static final ERROR_PLACEHOLDER:I = 0x10

.field private static final FALLBACK:I = 0x2000

.field private static final FALLBACK_ID:I = 0x4000

.field private static final IS_CACHEABLE:I = 0x100

.field private static final ONLY_RETRIEVE_FROM_CACHE:I = 0x80000

.field private static final OVERRIDE:I = 0x200

.field private static final PLACEHOLDER:I = 0x40

.field private static final PLACEHOLDER_ID:I = 0x80

.field private static final PRIORITY:I = 0x8

.field private static final RESOURCE_CLASS:I = 0x1000

.field private static final SIGNATURE:I = 0x400

.field private static final SIZE_MULTIPLIER:I = 0x2

.field private static final THEME:I = 0x8000

.field private static final TRANSFORMATION:I = 0x800

.field private static final TRANSFORMATION_ALLOWED:I = 0x10000

.field private static final TRANSFORMATION_REQUIRED:I = 0x20000

.field private static final UNSET:I = -0x1

.field private static final USE_UNLIMITED_SOURCE_GENERATORS_POOL:I = 0x40000

.field private static centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private resourceClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 83
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 85
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 95
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 97
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 99
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 103
    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 107
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 115
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 253
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 255
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 258
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 239
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 241
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 244
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 267
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 269
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 272
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 312
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 131
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 339
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 367
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 357
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 172
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 164
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 225
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 227
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 230
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 321
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 330
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private isSet(I)Z
    .locals 1

    .line 1499
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result p1

    return p1
.end method

.method private static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static noAnimation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 377
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 379
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 382
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 290
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 292
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 295
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1022
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public static overrideOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 209
    invoke-static {p0, p0}, Lcom/bumptech/glide/request/RequestOptions;->overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 199
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 156
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 148
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 140
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1017
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1030
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 1031
    iput-boolean p2, p1, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return-object p1
.end method

.method private selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 1386
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-nez v0, :cond_0

    return-object p0

    .line 1387
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 217
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 123
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    if-eqz p0, :cond_1

    .line 181
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_0

    .line 182
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 184
    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .line 186
    :cond_1
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_2

    .line 187
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 189
    :cond_2
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 347
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 1220
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 1227
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 1230
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1231
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1233
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1234
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 1236
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1237
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1239
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1240
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 1242
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1243
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1245
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1246
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 1248
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1249
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 1251
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1252
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 1253
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 1255
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1256
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1258
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1259
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1261
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1262
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1264
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1265
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 1267
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1268
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1270
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1271
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1273
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1274
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1276
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1277
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1278
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1280
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1281
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 1285
    :cond_13
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-nez v0, :cond_14

    .line 1286
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1287
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x0

    .line 1288
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1289
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x1

    .line 1290
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1293
    :cond_14
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    iget v1, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1294
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object p1, p1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 1296
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 1376
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1380
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    .line 1381
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 896
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 958
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 985
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 720
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 721
    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 722
    iget-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 723
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 724
    iget-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 725
    iput-boolean v1, v0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    .line 726
    iput-boolean v1, v0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 729
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 747
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 751
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 752
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 753
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 840
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 457
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 461
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 463
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 1209
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1214
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1215
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 1184
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1189
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x0

    .line 1190
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1191
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1192
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1193
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1195
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 852
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 774
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 783
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1302
    instance-of v0, p1, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1303
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 1304
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1306
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1308
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1310
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1318
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 1320
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 1321
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1322
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1323
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1324
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 600
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 601
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 603
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 579
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 584
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 586
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 561
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 565
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 566
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 568
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 536
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 540
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 541
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 543
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 928
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 818
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 798
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .line 1429
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .line 1445
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .line 1507
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/Options;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .line 1487
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .line 1479
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .line 1434
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1475
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1413
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/Key;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1466
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .line 1491
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .line 1503
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1331
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(F)I

    move-result v0

    .line 1332
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1333
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1334
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1335
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1336
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1337
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1338
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1339
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1340
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1341
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1342
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1343
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1344
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1345
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1346
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1348
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1349
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1350
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1351
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected isAutoCloneEnabled()Z
    .locals 1

    .line 1393
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .line 1461
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    .line 1470
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isScaleOnlyOrNoTransform()Z
    .locals 1

    .line 1495
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .line 1403
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    .line 761
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .line 1483
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1362
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 431
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 436
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 438
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 882
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 943
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 971
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 912
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1105
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1109
    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1111
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableTransformation;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1112
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1113
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method final optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 993
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 997
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 998
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1136
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1140
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x1

    .line 1144
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1145
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 1148
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1149
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 679
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 658
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 662
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 663
    iput p2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 664
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 666
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 515
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 516
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 518
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 492
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 499
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 474
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 478
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 479
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 481
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 735
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 739
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    .line 742
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 695
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 699
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 700
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 701
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 408
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 409
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 411
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 406
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 637
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 641
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 642
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 644
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 616
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 621
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 623
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 868
    sget-object v0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1052
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1056
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    const/4 p1, 0x1

    .line 1057
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1058
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1059
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method final transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1007
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1011
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1012
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1167
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1171
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    const/4 p1, 0x1

    .line 1172
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1173
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 p2, 0x20000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1174
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1079
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    const/4 p1, 0x1

    .line 1084
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1085
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1086
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 416
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 420
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 421
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 423
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method
