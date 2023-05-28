.class Lcom/google/android/gms/internal/zzahy$1;
.super Lcom/google/android/gms/internal/zzahv$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahy;->reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaNh:Lcom/google/android/gms/internal/zzahy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahy;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahy$1;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahv$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahy$1;->zza(Lcom/google/android/gms/internal/zzahx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahx;->zzAX()Lcom/google/android/gms/internal/zzaix;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzakj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahy$1;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzahy;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahy$1;->zzaNh:Lcom/google/android/gms/internal/zzahy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahy;->zza(Lcom/google/android/gms/internal/zzahy;)Lcom/google/android/gms/drive/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzakj;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/zzakl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzakl;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzaix;->zza(Lcom/google/android/gms/internal/zzakj;Lcom/google/android/gms/internal/zzaiy;)Lcom/google/android/gms/internal/zzaig;

    return-void
.end method
