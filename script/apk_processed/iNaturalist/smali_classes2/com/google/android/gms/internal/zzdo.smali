.class public Lcom/google/android/gms/internal/zzdo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;

.field private final zzyG:Ljava/lang/Runnable;

.field private zzyH:Lcom/google/android/gms/internal/zzdr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzyI:Lcom/google/android/gms/internal/zzdv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdo$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdo$1;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    return-void
.end method

.method private connect()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzdo$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdo$3;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdo$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdo$4;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)Lcom/google/android/gms/internal/zzdr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdr;->zzxz()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdr;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdr;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdr;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpw;->zzlc()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzdr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/internal/zzdv;)Lcom/google/android/gms/internal/zzdv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdo;)Lcom/google/android/gms/internal/zzdr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdo;->zzyH:Lcom/google/android/gms/internal/zzdr;

    return-object p0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzFf:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzFe:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzdo$2;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzdo$2;-><init>(Lcom/google/android/gms/internal/zzdo;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdd$zzb;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->zzyI:Lcom/google/android/gms/internal/zzdv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected zza(Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)Lcom/google/android/gms/internal/zzdr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdo;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdc()Lcom/google/android/gms/internal/zzpw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpw;->zzlb()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzdr;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;)V

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzdd$zzb;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcP()Lcom/google/android/gms/internal/zzdd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdd;->zza(Lcom/google/android/gms/internal/zzdd$zzb;)V

    return-void
.end method

.method public zzev()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdo;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdo;->zzyG:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/zzgd;->zzFh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
