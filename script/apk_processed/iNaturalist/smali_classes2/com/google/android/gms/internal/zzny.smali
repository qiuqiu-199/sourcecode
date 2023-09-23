.class public Lcom/google/android/gms/internal/zzny;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf<",
        "Lcom/google/android/gms/internal/zznv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzak(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznv;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zznv$zza;->zzai(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznv;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zznu;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzny;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zznv;

    const v1, 0x9d2290

    invoke-interface {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zznv;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzka;I)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zznu$zza;->zzah(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznu;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Could not get remote RewardedVideoAd."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzny;->zzak(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznv;

    move-result-object p1

    return-object p1
.end method
