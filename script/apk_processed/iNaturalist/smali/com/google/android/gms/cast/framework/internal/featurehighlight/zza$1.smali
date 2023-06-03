.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;->zzd(FF)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$1;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzb(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
