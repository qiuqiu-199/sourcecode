.class public Lcom/google/android/gms/internal/zznr;
.super Lcom/google/android/gms/internal/zznu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzVj:Lcom/google/android/gms/internal/zzns;

.field private final zzrJ:Ljava/lang/Object;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzns;

    invoke-static {}, Lcom/google/android/gms/internal/zzeg;->zzeE()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzns;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V

    invoke-direct {p0, p1, p4, v6}, Lcom/google/android/gms/internal/zznr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzns;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznu$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zznr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznr;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzns;->isLoaded()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznr;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    const-string p1, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzns;->zzjF()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zznw;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzoa;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->pause()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzns;->onContextChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to extract updated context."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->resume()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zznr;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznr;->zzVj:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->destroy()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
