.class Lcom/google/android/gms/internal/zzapo$2;
.super Lcom/google/android/gms/internal/zzaoi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzapo;->listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaoi$zza<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaUS:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapo$2;->zzaUS:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaoi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzaoi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$2;->zza(Lcom/google/android/gms/internal/zzaoi;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaoi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapo$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzapo$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapo$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaoi;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaox;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzam;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapo$2;->zzaUS:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzam;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzapa;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaox;->zza(Lcom/google/android/gms/fitness/request/zzam;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapo$2;->zzZ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object p1

    return-object p1
.end method