.class Lcom/google/android/gms/ads/internal/zzv$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzv;->zzcz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzuy:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$2;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$2;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zzb(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzck;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzv$2;->zzuy:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzv;->zzb(Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzck;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzck;->zza(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to process ad data"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
