.class public final Lcom/google/android/gms/internal/zzlk;
.super Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzf<",
        "Lcom/google/android/gms/internal/zzlg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zzac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzlg;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlg$zza;->zzZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzlg;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlk;->zzac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzlg;

    move-result-object p1

    return-object p1
.end method

.method public zzg(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzlf;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlk;->zzbl(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzlg;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzlg;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlf$zza;->zzY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzlf;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzf$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Could not create remote InAppPurchaseManager."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzqf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
