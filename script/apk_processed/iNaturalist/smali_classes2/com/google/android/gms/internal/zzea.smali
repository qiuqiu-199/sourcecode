.class public final Lcom/google/android/gms/internal/zzea;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf<",
        "Lcom/google/android/gms/internal/zzes;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;)Lcom/google/android/gms/internal/zzer;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzea;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzes;

    const v1, 0x9d2290

    invoke-interface {p1, v0, p2, p3, v1}, Lcom/google/android/gms/internal/zzes;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;I)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzer$zza;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Could not create remote builder for AdLoader."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzea;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzes;

    move-result-object p1

    return-object p1
.end method

.method protected zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzes;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzes$zza;->zzp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzes;

    move-result-object p1

    return-object p1
.end method
