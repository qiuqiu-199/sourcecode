.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzl(Ljava/lang/Runnable;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field final synthetic zzars:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzars:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzarm:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzars:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$6;->zzars:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
