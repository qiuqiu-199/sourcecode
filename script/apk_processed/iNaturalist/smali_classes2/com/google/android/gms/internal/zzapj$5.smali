.class Lcom/google/android/gms/internal/zzapj$5;
.super Lcom/google/android/gms/internal/zzaod$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapj;->unclaimBleDevice(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapj;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapj$5;->zzaUF:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaod$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaod;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapj$5;->zza(Lcom/google/android/gms/internal/zzaod;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaod;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaos;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzbo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapj$5;->zzaUF:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzbo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaos;->zza(Lcom/google/android/gms/fitness/request/zzbo;)V

    return-void
.end method