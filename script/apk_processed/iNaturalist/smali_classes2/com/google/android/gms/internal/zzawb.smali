.class public final Lcom/google/android/gms/internal/zzawb;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzawb$zze;,
        Lcom/google/android/gms/internal/zzawb$zzc;,
        Lcom/google/android/gms/internal/zzawb$zzb;,
        Lcom/google/android/gms/internal/zzawb$zzd;,
        Lcom/google/android/gms/internal/zzawb$zza;,
        Lcom/google/android/gms/internal/zzawb$zzh;,
        Lcom/google/android/gms/internal/zzawb$zzg;,
        Lcom/google/android/gms/internal/zzawb$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/internal/zzawk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbyr:J

.field private final zzbys:Lcom/google/android/gms/internal/zzaxh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance p1, Lcom/google/android/gms/internal/zzaxh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaxh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawb;->zzbys:Lcom/google/android/gms/internal/zzaxh;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzawb;->zzbyr:J

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzavz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzavz;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzavz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb;->zzbys:Lcom/google/android/gms/internal/zzaxh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxh;->shutdown()V

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    return-void
.end method

.method public zzOh()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzawb;->zzbyr:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzawk;->zzaw(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzOi()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawk;->zzOi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzOj()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzaxv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaxv;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxv;)V

    return-void
.end method

.method public zzOk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzaxx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaxx;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxx;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;Lcom/google/android/gms/internal/zzabh;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/zze;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v8, Lcom/google/android/gms/internal/zzaxt;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzawb$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawb$zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance p1, Lcom/google/android/gms/internal/zzawb$zzd;

    invoke-direct {p1, p6}, Lcom/google/android/gms/internal/zzawb$zzd;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzawb$zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v1, v8

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaxt;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxt;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;Lcom/google/android/gms/internal/zzabh;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/zza;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v9, Lcom/google/android/gms/internal/zzaxr;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzh;

    move-object v2, p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzawb$zzh;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawb$zzh;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zza;

    move-object/from16 v3, p7

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzawb$zza;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawb$zza;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v1, v9

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzaxr;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zza;)V

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxr;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;Lcom/google/android/gms/internal/zzabh;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v8, Lcom/google/android/gms/internal/zzaxn;

    new-instance v1, Lcom/google/android/gms/internal/zzawb$zzf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzawb$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzawb$zzf;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance p1, Lcom/google/android/gms/internal/zzawb$zzb;

    invoke-direct {p1, p6}, Lcom/google/android/gms/internal/zzawb$zzb;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzawb$zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance p1, Lcom/google/android/gms/internal/zzawb$zzc;

    invoke-direct {p1, p5}, Lcom/google/android/gms/internal/zzawb$zzc;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzawb$zzc;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v1, v8

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzaxn;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxn;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;[BLcom/google/android/gms/internal/zzabh;)V
    .locals 3
    .param p3    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/internal/zzabh<",
            "Lcom/google/android/gms/nearby/connection/Connections$zza;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzavx;

    new-instance v2, Lcom/google/android/gms/internal/zzawb$zzf;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzawb$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawb$zzf;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/zzawb$zzb;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzawb$zzb;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawb$zzb;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzavx;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzavx;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zzb;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/zzg;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzaxk;->zza(Lcom/google/android/gms/nearby/connection/zzg;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzawk;

    new-instance v2, Lcom/google/android/gms/internal/zzaxp;

    new-instance v3, Lcom/google/android/gms/internal/zzawb$zzf;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzawb$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzawb$zzf;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/zzaxi;

    invoke-direct {v2, p1, p2, v3, p4}, Lcom/google/android/gms/internal/zzaxp;-><init>(Landroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/internal/zzaxi;Z)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxp;)V

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawb;->zzbys:Lcom/google/android/gms/internal/zzaxh;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/zzg;->zzNX()Lcom/google/android/gms/nearby/connection/zzg$zzb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/connection/zzg$zzb;->zzOa()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/zzg;->getId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaxh;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V

    :cond_0
    return-void

    :catch_0
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x1f4d

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected zzeA(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawk;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawk$zza;->zzeG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawk;

    move-result-object p1

    return-object p1
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method public zzgl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzawd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzawd;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzawd;)V

    return-void
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawb;->zzeA(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawk;

    move-result-object p1

    return-object p1
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clientId"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzawb;->zzbyr:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public zzsL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzaxz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaxz;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxz;)V

    return-void
.end method

.method public zzt(Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawb;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    new-instance v1, Lcom/google/android/gms/internal/zzaxl;

    new-instance v2, Lcom/google/android/gms/internal/zzawb$zzf;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzawb$zzf;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawb$zzf;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzaxl;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzawk;->zza(Lcom/google/android/gms/internal/zzaxl;)V

    return-void
.end method
