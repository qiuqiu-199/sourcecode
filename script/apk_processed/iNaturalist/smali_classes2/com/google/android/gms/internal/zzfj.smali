.class public Lcom/google/android/gms/internal/zzfj;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf<",
        "Lcom/google/android/gms/internal/zzez;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzez;

    move-result-object p1

    return-object p1
.end method

.method public zzm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfj;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzez;

    const v2, 0x9d2290

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzez;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzey$zza;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzey;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Could not get remote MobileAdsSettingManager."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzez;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzez$zza;->zzv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzez;

    move-result-object p1

    return-object p1
.end method
