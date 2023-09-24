.class public Lcom/google/android/gms/internal/zzahz;
.super Lcom/google/android/gms/internal/zzaie;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzahz$zza;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaie;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzahz$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzabh;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzahz$zza;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x10000000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x20000000

    if-eq p2, v0, :cond_1

    const/high16 v0, 0x30000000

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mode provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzahz;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/zzahz$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzahz$1;-><init>(Lcom/google/android/gms/internal/zzahz;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    return-object p1
.end method
