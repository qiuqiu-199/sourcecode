.class final Lcom/google/android/gms/wearable/internal/zzbx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzbx$zzb;,
        Lcom/google/android/gms/wearable/internal/zzbx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaWg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcom/google/android/gms/wearable/internal/zzcy<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzcx;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzcy;

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xfa2

    invoke-direct {p1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/internal/zzcy;->clear()V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzbx$zzb;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-direct {v2, v3, p3, p2}, Lcom/google/android/gms/wearable/internal/zzbx$zzb;-><init>(Ljava/util/Map;Ljava/lang/Object;Lcom/google/android/gms/internal/zzaad$zzb;)V

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzck;

    invoke-direct {p2, v1}, Lcom/google/android/gms/wearable/internal/zzck;-><init>(Lcom/google/android/gms/wearable/internal/zzbv;)V

    invoke-interface {p1, v2, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzck;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzcy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzcx;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;TT;",
            "Lcom/google/android/gms/wearable/internal/zzcy<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xfa1

    invoke-direct {p1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzcx;->zzxD()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbw;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzbx$zza;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-direct {v1, v2, p3, p2}, Lcom/google/android/gms/wearable/internal/zzbx$zza;-><init>(Ljava/util/Map;Ljava/lang/Object;Lcom/google/android/gms/internal/zzaad$zzb;)V

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzc;

    invoke-direct {p2, p4}, Lcom/google/android/gms/wearable/internal/zzc;-><init>(Lcom/google/android/gms/wearable/internal/zzcy;)V

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzc;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public zzfE(Landroid/os/IBinder;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbw$zza;->zzfD(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbw;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcw$zzo;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzcw$zzo;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzbx;->zzaWg:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/internal/zzcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Lcom/google/android/gms/wearable/internal/zzc;

    invoke-direct {v5, v4}, Lcom/google/android/gms/wearable/internal/zzc;-><init>(Lcom/google/android/gms/wearable/internal/zzcy;)V

    invoke-interface {p1, v1, v5}, Lcom/google/android/gms/wearable/internal/zzbw;->zza(Lcom/google/android/gms/wearable/internal/zzbu;Lcom/google/android/gms/wearable/internal/zzc;)V

    const-string v5, "WearableClient"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WearableClient"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1b

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "onPostInitHandler: added: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v5, "WearableClient"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x20

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "onPostInitHandler: Didn\'t add: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
