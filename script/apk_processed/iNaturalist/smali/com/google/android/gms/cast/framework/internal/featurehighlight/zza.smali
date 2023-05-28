.class public final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;
    }
.end annotation


# instance fields
.field private targetView:Landroid/view/View;

.field private final zzaqZ:[I

.field private final zzara:Landroid/graphics/Rect;

.field private final zzarb:Landroid/graphics/Rect;

.field private final zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

.field private final zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

.field private zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

.field private zzarf:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzarg:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzarh:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

.field private final zzari:Landroid/support/v4/view/GestureDetectorCompat;

.field private zzarj:Landroid/support/v4/view/GestureDetectorCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzark:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

.field private zzarl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    sget v0, Lcom/google/android/gms/R$id;->cast_featurehighlight_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setWillNotDraw(Z)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarh:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    new-instance v2, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-direct {v2, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzari:Landroid/support/v4/view/GestureDetectorCompat;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzari:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    return-object p0
.end method

.method private zza(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private zza([ILandroid/view/View;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p2, p1, v0

    sub-int/2addr p2, v1

    aput p2, p1, v0

    aget p2, p1, v2

    sub-int/2addr p2, v3

    aput p2, p1, v2

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzc(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzark:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zztl()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private zzc(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarg:Landroid/animation/Animator;

    return-object p0
.end method

.method private zzk(Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->asView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUN()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zztm()Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zztm()Landroid/animation/Animator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    const/4 v0, 0x2

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$5;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method private zzl(Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->asView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUN()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getCenterX()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getCenterY()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v5, v1, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzf(FF)Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zztn()Landroid/animation/Animator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    const/4 v0, 0x2

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method private zztk()Landroid/animation/Animator;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->asView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbli;->zzUM()Lcom/google/android/gms/internal/zzbll;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getCenterX()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zze(FF)Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zztk()Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$4;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private zztl()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->zztl()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v7, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Neither target view nor drawable was set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza([ILandroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza([ILandroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget p2, p2, v1

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget p3, p3, v3

    iget-object p4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget p4, p4, v1

    iget-object p5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzaqZ:[I

    aget p5, p5, v3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarh:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarb:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;->zza(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target view must be set before layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzara:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarl:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarl:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarj:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarj:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzari:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_0
    return v2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbln;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarf:Landroid/view/View;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbln;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzark:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    new-instance p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;)V

    new-instance p1, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarj:Landroid/support/v4/view/GestureDetectorCompat;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarj:Landroid/support/v4/view/GestureDetectorCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbln;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->asView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public zzca(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->setColor(I)V

    return-void
.end method

.method public zzh(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$3;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public zzi(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzl(Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void
.end method

.method public zzj(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzk(Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void
.end method

.method public zztf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zztk()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target view must be set before animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zztg()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method zzth()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzare:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method zzti()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzarc:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    return-object v0
.end method

.method zztj()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzard:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    return-object v0
.end method
