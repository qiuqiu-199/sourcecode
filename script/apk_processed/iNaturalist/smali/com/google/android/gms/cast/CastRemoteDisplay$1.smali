.class final Lcom/google/android/gms/cast/CastRemoteDisplay$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastRemoteDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza<",
        "Lcom/google/android/gms/internal/zzzg;",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 0

    check-cast p4, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/cast/CastRemoteDisplay$1;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzzg;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/zzzg;
    .locals 10

    move-object v0, p4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "configuration"

    iget v2, v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzanx:I

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Lcom/google/android/gms/internal/zzzg;

    iget-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzanf:Lcom/google/android/gms/cast/CastDevice;

    iget-object v6, v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzanw:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzzg;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/cast/CastDevice;Landroid/os/Bundle;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v9
.end method
