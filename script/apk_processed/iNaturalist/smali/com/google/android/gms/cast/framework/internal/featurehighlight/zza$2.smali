.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarn:Landroid/view/View;

.field final synthetic zzaro:Z

.field final synthetic zzarp:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzarn:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzaro:Z

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzarp:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzarn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzarn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzaro:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$2;->zzarp:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;

    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;->zztc()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
