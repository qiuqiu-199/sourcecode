.class public Lcom/google/android/gms/ads/internal/overlay/zzo;
.super Lcom/google/android/gms/ads/internal/overlay/zzk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqw;IZLcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/ads/internal/overlay/zzj;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzs(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzh(Lcom/google/android/gms/internal/zzqw;)Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/zzz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzlE()Lcom/google/android/gms/internal/zzgj;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/zzz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;)V

    invoke-direct {p3, p1, p4, v0, v7}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzz;)V

    return-object p3
.end method
