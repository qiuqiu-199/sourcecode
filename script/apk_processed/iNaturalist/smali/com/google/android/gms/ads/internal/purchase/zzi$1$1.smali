.class Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/zzi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/zzi$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance p1, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzV(Landroid/os/IBinder;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "inapp"

    const/4 v2, 0x3

    invoke-virtual {p1, v2, p2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzI(Z)V

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;->zzPO:Lcom/google/android/gms/ads/internal/purchase/zzi$1;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
