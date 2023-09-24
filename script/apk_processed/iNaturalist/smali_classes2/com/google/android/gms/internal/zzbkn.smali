.class public Lcom/google/android/gms/internal/zzbkn;
.super Lcom/google/android/gms/internal/zzbjz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbjz<",
        "Lcom/google/android/gms/internal/zzbkf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbPu:Lcom/google/android/gms/internal/zzbko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbko;)V
    .locals 1

    const-string v0, "TextNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbjz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkn;->zzbPu:Lcom/google/android/gms/internal/zzbko;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTS()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected zzTP()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTS()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbkf;->zzTW()V

    return-void
.end method

.method public zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/internal/zzbkh;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTS()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbkf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "TextNativeHandle"

    const-string p3, "Error calling native text recognizer"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/internal/zzbkh;

    return-object p1
.end method

.method protected synthetic zzb(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkn;->zzd(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbkf;

    move-result-object p1

    return-object p1
.end method

.method protected zzd(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbkf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkg$zza;->zzfs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkg;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkn;->zzbPu:Lcom/google/android/gms/internal/zzbko;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzbkg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbko;)Lcom/google/android/gms/internal/zzbkf;

    move-result-object p1

    return-object p1
.end method
