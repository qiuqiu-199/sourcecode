.class Lcom/google/android/gms/internal/zzapq$1;
.super Lcom/google/android/gms/internal/zzaok$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapq;->startSession(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaVh:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapq;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapq$1;->zzaVh:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaok$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaok;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapq$1;->zza(Lcom/google/android/gms/internal/zzaok;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaok;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaok;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaoz;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapq$1;->zzaVh:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzbd;-><init>(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/internal/zzapf;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaoz;->zza(Lcom/google/android/gms/fitness/request/zzbd;)V

    return-void
.end method
