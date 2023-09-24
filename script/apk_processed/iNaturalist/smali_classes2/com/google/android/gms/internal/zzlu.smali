.class public Lcom/google/android/gms/internal/zzlu;
.super Lcom/google/android/gms/internal/zzlp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzIs:Lcom/google/android/gms/internal/zzqw;

.field private zzKY:Lcom/google/android/gms/internal/zzjr;

.field zzQe:Lcom/google/android/gms/internal/zzjp;

.field protected zzQf:Lcom/google/android/gms/internal/zzjv;

.field private zzQg:Z

.field private final zzsn:Lcom/google/android/gms/internal/zzgl;

.field private zzsz:Lcom/google/android/gms/internal/zzka;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzlp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlu;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzpb$zza;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlu;->zzsn:Lcom/google/android/gms/internal/zzgl;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlu;->zzIs:Lcom/google/android/gms/internal/zzqw;

    return-void
.end method

.method private static zzT(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlu;)Lcom/google/android/gms/internal/zzqw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlu;->zzIs:Lcom/google/android/gms/internal/zzqw;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzjv;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjq;->zzKq:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzjv;->zzLh:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlu;->zzT(I)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjv;->zzLn:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQg:Z

    return p1
.end method

.method private static zzg(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjv;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjq;->zzKq:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzjv;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zziS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzlp$zza;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzlu$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzlu$1;-><init>(Lcom/google/android/gms/internal/zzlu;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu;->zzPU:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlu;->zzQg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzlp$zza;

    const-string v2, "Assets not loaded, web view is destroyed"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzlp$zza;

    const-string v2, "View could not be prepared"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzlp$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Interrupted while waiting for latch : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu;->zzPU:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzlp;->onStop()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjp;->cancel()V

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

.method protected zzR(I)Lcom/google/android/gms/internal/zzpb;
    .locals 54

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    new-instance v39, Lcom/google/android/gms/internal/zzpb;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzlu;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v9, v2, Lcom/google/android/gms/internal/zzmn;->orientation:I

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v2, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    iget-object v12, v1, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    move-object v14, v1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    move-object v15, v1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjv;->zzLk:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_2
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzjv;->zzLl:Lcom/google/android/gms/internal/zzjt;

    move-object/from16 v18, v6

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    :goto_4
    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v40, v14

    move-object/from16 v41, v15

    iget-wide v14, v6, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    move-wide/from16 v42, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    move-wide/from16 v44, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    move-wide/from16 v46, v14

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v48, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    const/16 v30, 0x0

    move-object/from16 v49, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v50, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    move-object/from16 v51, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    move-object/from16 v52, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzjr;->zzKQ:Z

    move/from16 v34, v2

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    const/16 v34, 0x0

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v53, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->zzgU()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlu;->zzg(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_6

    :cond_5
    const/16 v36, 0x0

    :goto_6
    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzKI:Ljava/util/List;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    move-object/from16 v38, v2

    move-object/from16 v28, v48

    move-object/from16 v29, v49

    move-object/from16 v31, v50

    move-object/from16 v32, v51

    move-object/from16 v33, v52

    move-object/from16 v35, v53

    move-object/from16 v2, v39

    move-object/from16 v21, v6

    move/from16 v6, p1

    move-wide/from16 v26, v14

    move-wide/from16 v19, v42

    move-wide/from16 v22, v44

    move-wide/from16 v24, v46

    move-object/from16 v14, v40

    move-object/from16 v15, v41

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v39
.end method

.method protected zzh(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzlp$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlu;->zzPU:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlu;->zzi(J)Lcom/google/android/gms/internal/zzjp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzjr;->zzKD:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v2, "_skipMediation"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzjq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjq;->zzKp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzlu;->zzQe:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzjp;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzjv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget p1, p1, Lcom/google/android/gms/internal/zzjv;->zzLh:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/internal/zzlp$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget p2, p2, Lcom/google/android/gms/internal/zzjv;->zzLh:I

    const/16 v0, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected mediation result: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/zzlp$zza;

    const/4 p2, 0x3

    const-string v0, "No fill from any mediation ad networks."

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Ljava/lang/String;I)V

    throw p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlu;->zzQf:Lcom/google/android/gms/internal/zzjv;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjq;->zzKy:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlu;->zziS()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zzi(J)Lcom/google/android/gms/internal/zzjp;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget v1, v1, Lcom/google/android/gms/internal/zzjr;->zzKO:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzjx;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzlu;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v8, v2, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v9, v2, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzDM:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x2

    move-object v3, v1

    move-wide/from16 v10, p1

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/zzjx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzjr;ZZJJI)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzjy;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzlu;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzlu;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzlu;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzlu;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/zzlu;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    sget-object v8, Lcom/google/android/gms/internal/zzgd;->zzDM:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    iget-object v8, v0, Lcom/google/android/gms/internal/zzlu;->zzsn:Lcom/google/android/gms/internal/zzgl;

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-wide/from16 v22, p1

    move-object/from16 v26, v8

    invoke-direct/range {v15 .. v26}, Lcom/google/android/gms/internal/zzjy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzjr;ZZJJLcom/google/android/gms/internal/zzgl;)V

    return-object v1
.end method
