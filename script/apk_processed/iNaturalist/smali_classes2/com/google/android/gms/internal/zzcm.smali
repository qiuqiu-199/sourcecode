.class public final Lcom/google/android/gms/internal/zzcm;
.super Lcom/google/android/gms/internal/zzco$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzrO:Lcom/google/android/gms/internal/zzav;

.field private final zzrP:Lcom/google/android/gms/internal/zzaw;

.field private final zzrQ:Lcom/google/android/gms/internal/zzat;

.field private zzrR:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzco$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrR:Z

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzav;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzav;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrO:Lcom/google/android/gms/internal/zzav;

    new-instance p1, Lcom/google/android/gms/internal/zzaw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrO:Lcom/google/android/gms/internal/zzav;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Lcom/google/android/gms/internal/zzar;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzat;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    return-void
.end method

.method private zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/zzaw;->zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzax; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzcm;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrO:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzav;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/dynamic/IObjectWrapper;[B)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrO:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcm;->zzrR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzat;->zza(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzat;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrR:Z

    :cond_0
    return-object v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzcm;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaw;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaw;->zzc(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public zzb(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrQ:Lcom/google/android/gms/internal/zzat;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzat;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcm;->zzrR:Z

    return p1
.end method

.method public zzbt()Ljava/lang/String;
    .locals 1

    const-string v0, "ms"

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcm;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public zzm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcm;->zzrP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaw;->zzm(Ljava/lang/String;)V

    return-void
.end method
