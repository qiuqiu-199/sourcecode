.class Lcom/google/android/gms/internal/zzayu$1;
.super Lcom/google/android/gms/internal/zzayu$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayu;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbBv:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayu;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayu$1;->zzbBv:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzayu$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzayt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzayu$zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzayu$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayu$1;->zzbBv:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzayt;->zza(Lcom/google/android/gms/internal/zzays;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
