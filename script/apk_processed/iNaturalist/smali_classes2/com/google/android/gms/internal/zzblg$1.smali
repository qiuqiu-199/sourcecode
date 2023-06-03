.class Lcom/google/android/gms/internal/zzblg$1;
.super Lcom/google/android/gms/internal/zzblh$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbWa:Lcom/google/android/gms/internal/zzblg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzblh$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzblg;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzblg;->zza(Lcom/google/android/gms/internal/zzblg;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzblg;->zza(Lcom/google/android/gms/internal/zzblg;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzblg$1;->zzbWa:Lcom/google/android/gms/internal/zzblg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzblg;->zzbVW:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
