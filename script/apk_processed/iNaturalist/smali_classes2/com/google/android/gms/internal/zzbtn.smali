.class public Lcom/google/android/gms/internal/zzbtn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final zzclY:Lcom/google/android/gms/internal/zzbtr;

.field public final zzcmg:Lcom/google/android/gms/internal/zzbto;

.field public final zzcmh:Lcom/google/android/gms/internal/zzbto;

.field public final zzcmi:Lcom/google/android/gms/internal/zzbto;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbto;Lcom/google/android/gms/internal/zzbto;Lcom/google/android/gms/internal/zzbto;Lcom/google/android/gms/internal/zzbtr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmg:Lcom/google/android/gms/internal/zzbto;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmh:Lcom/google/android/gms/internal/zzbto;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmi:Lcom/google/android/gms/internal/zzbto;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbto;)Lcom/google/android/gms/internal/zzbts$zza;
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zza;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbto;->zzacf()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbto;->zzacf()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/internal/zzbts$zzb;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzbts$zzb;-><init>()V

    iput-object v8, v9, Lcom/google/android/gms/internal/zzbts$zzb;->zzaB:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, v9, Lcom/google/android/gms/internal/zzbts$zzb;->zzcmt:[B

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzbts$zzd;-><init>()V

    iput-object v4, v6, Lcom/google/android/gms/internal/zzbts$zzd;->zzaGP:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzbts$zzb;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzbts$zzb;

    iput-object v4, v6, Lcom/google/android/gms/internal/zzbts$zzd;->zzcmy:[Lcom/google/android/gms/internal/zzbts$zzb;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbts$zzd;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzbts$zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmq:[Lcom/google/android/gms/internal/zzbts$zzd;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbto;->zzzE()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbto;->zzzE()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zza;->zzcmr:[[B

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbto;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzbts$zza;->timestamp:J

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzbts$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbts$zze;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmg:Lcom/google/android/gms/internal/zzbto;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmg:Lcom/google/android/gms/internal/zzbto;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbtn;->zza(Lcom/google/android/gms/internal/zzbto;)Lcom/google/android/gms/internal/zzbts$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmz:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmh:Lcom/google/android/gms/internal/zzbto;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmh:Lcom/google/android/gms/internal/zzbto;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbtn;->zza(Lcom/google/android/gms/internal/zzbto;)Lcom/google/android/gms/internal/zzbts$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmA:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmi:Lcom/google/android/gms/internal/zzbto;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzcmi:Lcom/google/android/gms/internal/zzbto;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbtn;->zza(Lcom/google/android/gms/internal/zzbto;)Lcom/google/android/gms/internal/zzbts$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmB:Lcom/google/android/gms/internal/zzbts$zza;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzbts$zzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbts$zzc;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtr;->getLastFetchStatus()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmu:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtr;->isDeveloperModeEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmv:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtr;->zzack()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzbts$zzc;->zzcmw:J

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmC:Lcom/google/android/gms/internal/zzbts$zzc;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbtr;->zzaci()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtn;->zzclY:Lcom/google/android/gms/internal/zzbtr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtr;->zzaci()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v5, Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzbts$zzf;-><init>()V

    iput-object v4, v5, Lcom/google/android/gms/internal/zzbts$zzf;->zzaGP:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbtl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbtl;->zzace()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/internal/zzbts$zzf;->zzcmF:J

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbtl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbtl;->zzacd()I

    move-result v4

    iput v4, v5, Lcom/google/android/gms/internal/zzbts$zzf;->resourceId:I

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbts$zzf;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzbts$zzf;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbts$zze;->zzcmD:[Lcom/google/android/gms/internal/zzbts$zzf;

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtn;->mContext:Landroid/content/Context;

    const-string v2, "persisted_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AsyncPersisterTask"

    const-string v2, "Could not persist config."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
