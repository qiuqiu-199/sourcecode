.class final Lcom/google/android/gms/ads/internal/zzp$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzp;->zza(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/internal/zzkf;Lcom/google/android/gms/ads/internal/zzg$zza;)Lcom/google/android/gms/internal/zzid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztU:Lcom/google/android/gms/internal/zzke;

.field final synthetic zztV:Lcom/google/android/gms/ads/internal/zzg$zza;

.field final synthetic zztW:Lcom/google/android/gms/internal/zzkf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzke;Lcom/google/android/gms/ads/internal/zzg$zza;Lcom/google/android/gms/internal/zzkf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztU:Lcom/google/android/gms/internal/zzke;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztV:Lcom/google/android/gms/ads/internal/zzg$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztW:Lcom/google/android/gms/internal/zzkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztU:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztU:Lcom/google/android/gms/internal/zzke;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzke;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztU:Lcom/google/android/gms/internal/zzke;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzke;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztV:Lcom/google/android/gms/ads/internal/zzg$zza;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzg$zza;->onClick()V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzp;->zzb(Lcom/google/android/gms/internal/zzqw;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztW:Lcom/google/android/gms/internal/zzkf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztW:Lcom/google/android/gms/internal/zzkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkf;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztW:Lcom/google/android/gms/internal/zzkf;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzkf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzp$5;->zztV:Lcom/google/android/gms/ads/internal/zzg$zza;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to call handleClick on mapper"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
