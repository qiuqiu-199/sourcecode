.class public Lcom/google/android/gms/internal/zzoe;
.super Lcom/google/android/gms/internal/zzpj;

# interfaces
.implements Lcom/google/android/gms/internal/zzog;
.implements Lcom/google/android/gms/internal/zzoj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzKW:Ljava/lang/String;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private zzPY:I

.field private final zzVr:Lcom/google/android/gms/internal/zzol;

.field private final zzVs:Lcom/google/android/gms/internal/zzoj;

.field private final zzVt:Ljava/lang/String;

.field private final zzVu:Lcom/google/android/gms/internal/zzjq;

.field private final zzVv:J

.field private zzVw:I

.field private zzVx:Lcom/google/android/gms/internal/zzof;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzol;Lcom/google/android/gms/internal/zzoj;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoe;->zzVt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzoe;->zzVu:Lcom/google/android/gms/internal/zzjq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzoe;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzoe;->zzVs:Lcom/google/android/gms/internal/zzoj;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzoe;->zzVv:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoe;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzoe;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzkb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjO()Lcom/google/android/gms/internal/zzoi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzoi;->zza(Lcom/google/android/gms/internal/zzoj;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzVu:Lcom/google/android/gms/internal/zzjq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjq;->zzKn:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVt:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzkb;->zzd(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzoe;->zza(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoe;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzkb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzoe;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzkb;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzoe;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzoe;->zzVt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzoe;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    return-object p0
.end method

.method private zzk(J)V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzof$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzof$zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzof$zza;->zzl(J)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    const/4 p2, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    if-ne p2, v1, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzof$zza;->zzae(I)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzof$zza;->zzaP(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzVu:Lcom/google/android/gms/internal/zzjq;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzjq;->zzKq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzof$zza;->zzaQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzjK()Lcom/google/android/gms/internal/zzof;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzVx:Lcom/google/android/gms/internal/zzof;

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzoe;->zzf(J)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzof$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzof$zza;-><init>()V

    iget v2, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzof$zza;->zzae(I)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzof$zza;->zzl(J)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzof$zza;->zzaP(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzVu:Lcom/google/android/gms/internal/zzjq;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzjq;->zzKq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzof$zza;->zzaQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzjK()Lcom/google/android/gms/internal/zzof;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzVx:Lcom/google/android/gms/internal/zzof;

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zza(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    iput p2, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public zzaO(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzad(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzoe;->zza(Ljava/lang/String;I)V

    return-void
.end method

.method public zzco()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjO()Lcom/google/android/gms/internal/zzoi;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjO()Lcom/google/android/gms/internal/zzoi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzoi;->zza(Lcom/google/android/gms/internal/zzoj;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzoi;->zza(Lcom/google/android/gms/internal/zzog;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoe;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzkb;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzoe$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/zzoe$1;-><init>(Lcom/google/android/gms/internal/zzoe;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzkb;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzoe$2;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/zzoe$2;-><init>(Lcom/google/android/gms/internal/zzoe;Lcom/google/android/gms/internal/zzkb;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzoi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzoe;->zza(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzoe;->zzk(J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzoi;->zza(Lcom/google/android/gms/internal/zzoj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzoi;->zza(Lcom/google/android/gms/internal/zzog;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVs:Lcom/google/android/gms/internal/zzoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzoj;->zzaO(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVs:Lcom/google/android/gms/internal/zzoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzKW:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzoj;->zza(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected zzf(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVv:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/zzoe;->zzPY:I

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const/4 p2, 0x5

    goto :goto_0
.end method

.method public zzjH()Lcom/google/android/gms/internal/zzof;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzVx:Lcom/google/android/gms/internal/zzof;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzjI()Lcom/google/android/gms/internal/zzjq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzVu:Lcom/google/android/gms/internal/zzjq;

    return-object v0
.end method

.method public zzjJ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoe;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoe;->zzVr:Lcom/google/android/gms/internal/zzol;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzoe;->zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzkb;)V

    return-void
.end method
