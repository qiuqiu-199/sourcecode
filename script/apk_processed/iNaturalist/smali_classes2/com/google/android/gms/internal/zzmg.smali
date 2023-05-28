.class public Lcom/google/android/gms/internal/zzmg;
.super Lcom/google/android/gms/internal/zzpj;

# interfaces
.implements Lcom/google/android/gms/internal/zzmh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmg$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field zzKY:Lcom/google/android/gms/internal/zzjr;

.field private zzLo:Lcom/google/android/gms/internal/zzmk;

.field zzPS:Lcom/google/android/gms/internal/zzmn;

.field private zzPT:Ljava/lang/Runnable;

.field private final zzPU:Ljava/lang/Object;

.field private final zzRl:Lcom/google/android/gms/internal/zzmf$zza;

.field private final zzRm:Lcom/google/android/gms/internal/zzmk$zza;

.field zzRn:Lcom/google/android/gms/internal/zzpq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$zza;Lcom/google/android/gms/internal/zzmf$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPU:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmg;->zzRl:Lcom/google/android/gms/internal/zzmf$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmg;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmg;->zzPU:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmg;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzmg;->zzd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmg;)Lcom/google/android/gms/internal/zzmk$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzmg;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzmg;->zzPT:Ljava/lang/Runnable;

    return-object p0
.end method

.method private zzd(ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzmn;-><init>(IJ)V

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    :goto_4
    move-object v2, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzmk;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$zza;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    new-instance v12, Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmg;->zzKY:Lcom/google/android/gms/internal/zzjr;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    const/4 v11, 0x0

    move-object v1, v12

    move v6, p1

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzpb$zza;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmg;->zzRl:Lcom/google/android/gms/internal/zzmf$zza;

    invoke-interface {v1, v12}, Lcom/google/android/gms/internal/zzmf$zza;->zza(Lcom/google/android/gms/internal/zzpb$zza;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPU:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzRn:Lcom/google/android/gms/internal/zzpq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzRn:Lcom/google/android/gms/internal/zzpq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzpq;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zza(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqh;",
            "Lcom/google/android/gms/internal/zzqp<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;)",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/internal/zzmh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)Lcom/google/android/gms/internal/zzpq;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzmn;)V
    .locals 11
    .param p1    # Lcom/google/android/gms/internal/zzmn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPU:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzRn:Lcom/google/android/gms/internal/zzpq;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->zzRV:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object p1, Lcom/google/android/gms/internal/zzgd;->zzDc:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzmn;->zzSh:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzvl:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzvl:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget p1, p1, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    const/4 v1, -0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget p1, p1, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    const/4 v1, -0x3

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzmg$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v1, v1, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmg;->zzjm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmg;->zzb(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzeg;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzmg$zza; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, p1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSx:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpe;->zzF(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSK:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpe;->zzG(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, p1

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Error parsing the JSON for Active View."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v10, v0

    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmg;->zzKY:Lcom/google/android/gms/internal/zzjr;

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzpb$zza;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzRl:Lcom/google/android/gms/internal/zzmf$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmf$zza;->zza(Lcom/google/android/gms/internal/zzpb$zza;)V

    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPT:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmg$zza;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmg$zza;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzmg;->zzd(ILjava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzeg;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzmg$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzzC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-boolean v5, v4, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, v4, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzmg$zza;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/zzeg;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    iget v8, v6, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_3

    :cond_4
    iget v8, v6, Lcom/google/android/gms/internal/zzeg;->width:I

    :goto_3
    iget v9, v6, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    iget v9, v6, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_4

    :cond_5
    iget v7, v6, Lcom/google/android/gms/internal/zzeg;->height:I

    :goto_4
    if-ne v2, v8, :cond_6

    if-ne v0, v7, :cond_6

    iget-boolean v7, v6, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-nez v7, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V

    return-object v0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/zzmg$zza;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_5
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    nop

    new-instance p1, Lcom/google/android/gms/internal/zzmg$zza;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_6
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/zzmg$zza;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public zzco()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmg$1;-><init>(Lcom/google/android/gms/internal/zzmg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPT:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPT:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzDL:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDK:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk$zza;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$zza;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmg;->zza(Lcom/google/android/gms/internal/zzmn;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqq;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzmg$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzmg$2;-><init>(Lcom/google/android/gms/internal/zzmg;Lcom/google/android/gms/internal/zzqp;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzqm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzow;->zzD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzow;->zzE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzow;->zzF(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/zzow;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzRm:Lcom/google/android/gms/internal/zzmk$zza;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzmk;-><init>(Lcom/google/android/gms/internal/zzmk$zza;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzLo:Lcom/google/android/gms/internal/zzmk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqp;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method protected zzjm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzmg$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v0, v0, Lcom/google/android/gms/internal/zzmn;->errorCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->zzRG:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzjr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzKY:Lcom/google/android/gms/internal/zzjr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzjr;->zzKJ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzH(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmg$zza;

    const-string v1, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzmn;->zzKJ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpe;->zzH(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmn;->zzRW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFb:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmg;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzX(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "googleads.g.doubleclick.net"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmg;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzRW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzmg$zza;

    const/4 v1, 0x3

    const-string v2, "No fill from ad server."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzmg$zza;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
