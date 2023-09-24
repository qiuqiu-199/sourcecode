.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private final zzaqV:Landroid/graphics/Paint;

.field private zzaqW:F

.field private final zzarF:I

.field private final zzarG:I

.field private final zzarH:I

.field private zzarI:F

.field private zzarJ:F

.field private zzarK:I

.field private final zzara:Landroid/graphics/Rect;

.field private zzary:F

.field private final zzarz:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzara:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarz:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzary:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarI:F

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarJ:F

    const/16 v0, 0xf4

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarK:I

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzay(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->setColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$color;->cast_libraries_material_featurehighlight_outer_highlight_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_center_threshold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarF:I

    sget v0, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_center_horizontal_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarG:I

    sget v0, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_outer_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarH:I

    return-void
.end method

.method private zza(FFLandroid/graphics/Rect;)F
    .locals 7

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, p3

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzblj;->zza(FFFFFF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private static zzay(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010433

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    const/16 v0, 0xf4

    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    add-float/2addr v2, v1

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqW:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzary:F

    mul-float v1, v1, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->invalidateSelf()V

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarK:I

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->invalidateSelf()V

    return-void
.end method

.method public zzb(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarz:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarF:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarG:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarG:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    :goto_2
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zza(FFLandroid/graphics/Rect;)F

    move-result p1

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zza(FFLandroid/graphics/Rect;)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqW:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->invalidateSelf()V

    return-void
.end method

.method public zzd(FF)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->centerY:F

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzblj;->zzb(FFFF)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzaqW:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public zze(FF)Landroid/animation/Animator;
    .locals 7

    const-string v0, "scale"

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string/jumbo v2, "translationX"

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x0

    const/4 v5, 0x1

    aput p1, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v6, v1, [F

    aput p2, v6, v4

    aput p1, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string p2, "alpha"

    new-array v3, v1, [I

    aput v4, v3, v4

    iget v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzarK:I

    aput v6, v3, v5

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    aput-object p1, v3, v1

    const/4 p1, 0x3

    aput-object p2, v3, p1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUM()Lcom/google/android/gms/internal/zzbll;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public zzf(FF)Landroid/animation/Animator;
    .locals 8

    const-string v0, "scale"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "alpha"

    new-array v5, v1, [I

    aput v4, v5, v4

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v5, "translationX"

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v3, v7, v4

    aput p1, v7, v1

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string/jumbo v5, "translationY"

    new-array v7, v6, [F

    aput v3, v7, v4

    aput p2, v7, v1

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object p1, v3, v1

    aput-object p2, v3, v6

    const/4 p1, 0x3

    aput-object v2, v3, p1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUN()Lcom/google/android/gms/internal/zzbll;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public zztm()Landroid/animation/Animator;
    .locals 5

    const-string v0, "scale"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f900000    # 1.125f

    aput v4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "alpha"

    new-array v4, v1, [I

    aput v3, v4, v3

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v3

    aput-object v2, v4, v1

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUN()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
