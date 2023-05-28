.class Lcom/google/android/gms/internal/zzapl$1;
.super Lcom/google/android/gms/internal/zzaof$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapl;->readCurrentGoals(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaof$zza<",
        "Lcom/google/android/gms/fitness/result/GoalsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUJ:Lcom/google/android/gms/fitness/request/GoalsReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapl$1;->zzaUJ:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaof$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/GoalsResult;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/GoalsResult;->zzag(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/GoalsResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaof;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapl$1;->zza(Lcom/google/android/gms/internal/zzaof;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaof;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapl$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapl$1$1;-><init>(Lcom/google/android/gms/internal/zzapl$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaof;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    new-instance v1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapl$1;->zzaUJ:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest;Lcom/google/android/gms/internal/zzaor;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapl$1;->zzW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/GoalsResult;

    move-result-object p1

    return-object p1
.end method
