.class public Lcom/google/android/gms/internal/zzado;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzadh;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/internal/zzzy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzzy;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabs;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzadi$zza;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzadi$zza;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/internal/zzadi$zzb;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzadh;->zzaIB:Lcom/google/android/gms/internal/zzadi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzado;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzadi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzadi$zza;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    return-object p1
.end method
