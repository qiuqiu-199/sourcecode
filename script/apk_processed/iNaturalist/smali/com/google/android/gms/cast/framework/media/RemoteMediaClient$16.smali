.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueMoveItemToNewIndex(IILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapn:Lorg/json/JSONObject;

.field final synthetic zzapx:I

.field final synthetic zzapy:I

.field final synthetic zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;IILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapx:I

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapn:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzyq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zza(Lcom/google/android/gms/internal/zzyq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzyq;)V
    .locals 7

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapx:I

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzb(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit p1

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    const/4 v3, 0x1

    if-gez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Invalid request: Invalid newIndex %d."

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzb(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit p1

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzb(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit p1

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    if-le v1, v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapy:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzza;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapH:Lcom/google/android/gms/internal/zzzc;

    new-array v3, v3, [I

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapx:I

    aput v5, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzapn:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/google/android/gms/internal/zzza;->zza(Lcom/google/android/gms/internal/zzzc;[IILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/zzza$zzb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$16;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
