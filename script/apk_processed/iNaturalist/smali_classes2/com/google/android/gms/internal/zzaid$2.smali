.class Lcom/google/android/gms/internal/zzaid$2;
.super Lcom/google/android/gms/internal/zzahw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaid;->setFileUploadPreferences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/FileUploadPreferences;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNy:Lcom/google/android/gms/internal/zzail;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzail;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaid$2;->zzaNy:Lcom/google/android/gms/internal/zzail;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahw$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzahx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaid$2;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzakw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaid$2;->zzaNy:Lcom/google/android/gms/internal/zzail;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzakw;-><init>(Lcom/google/android/gms/internal/zzail;)V

    new-instance v1, Lcom/google/android/gms/internal/zzalc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzalc;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzakw;Lcom/google/android/gms/internal/zzaiy;)V

    return-void
.end method
