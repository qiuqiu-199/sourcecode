.class public final Lcom/google/android/gms/internal/zznc;
.super Lcom/google/android/gms/internal/zzmt$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static zzTv:Lcom/google/android/gms/internal/zznc;

.field private static final zztX:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzTw:Lcom/google/android/gms/internal/zznb;

.field private final zzTx:Lcom/google/android/gms/internal/zzfw;

.field private final zzTy:Lcom/google/android/gms/internal/zzji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zznc;->zztX:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmt$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc;->zzTw:Lcom/google/android/gms/internal/zznb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc;->zzTx:Lcom/google/android/gms/internal/zzfw;

    new-instance p3, Lcom/google/android/gms/internal/zzji;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    move-object v1, p1

    invoke-static {}, Lcom/google/android/gms/internal/zzqh;->zzlk()Lcom/google/android/gms/internal/zzqh;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfw;->zzfq()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zznc$4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zznc$4;-><init>(Lcom/google/android/gms/internal/zznc;)V

    new-instance v5, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzji;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/internal/zzpt;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc;->zzTy:Lcom/google/android/gms/internal/zzji;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v0, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzgd;->initialize(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/zzgl;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBZ:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "load_ad"

    iget-object v2, v11, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-direct {v12, v0, v1, v2}, Lcom/google/android/gms/internal/zzgl;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v0, v11, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-wide v0, v11, Lcom/google/android/gms/internal/zzmk;->zzRO:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, v11, Lcom/google/android/gms/internal/zzmk;->zzRO:J

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/zzgl;->zzc(J)Lcom/google/android/gms/internal/zzgj;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "cts"

    aput-object v2, v1, v14

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v15

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTt:Lcom/google/android/gms/internal/zzlc;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/zzlc;->zzt(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTs:Lcom/google/android/gms/internal/zznm;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/zznm;->zzB(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTn:Lcom/google/android/gms/internal/zzox;

    iget-object v3, v11, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzox;->zzaS(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTu:Lcom/google/android/gms/internal/zzpa;

    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/zzpa;->zzg(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcV()Lcom/google/android/gms/internal/zznj;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zznj;->zzA(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    iget-object v6, v11, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    const-string v8, "_ad"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-boolean v8, v11, Lcom/google/android/gms/internal/zzmk;->zzRV:Z

    if-eqz v8, :cond_2

    if-nez v6, :cond_2

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTq:Lcom/google/android/gms/internal/zzjn;

    iget-object v6, v11, Lcom/google/android/gms/internal/zzmk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/zzjn;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    :cond_2
    move-object v6, v0

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lcom/google/android/gms/internal/zzgd;->zzCS:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTu:Lcom/google/android/gms/internal/zzpa;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/zzpa;->zzG(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    :cond_3
    move-object v8, v0

    iget v0, v11, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v7, 0x4

    if-lt v0, v7, :cond_4

    iget-object v0, v11, Lcom/google/android/gms/internal/zzmk;->zzRF:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v7, v11, Lcom/google/android/gms/internal/zzmk;->zzRF:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCp:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/google/android/gms/internal/zznb;->zzTl:Lcom/google/android/gms/internal/zzng;

    if-eqz v0, :cond_6

    if-nez v7, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCq:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :cond_5
    if-eqz v7, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zznc$1;

    invoke-direct {v0, v10, v9, v11, v7}, Lcom/google/android/gms/internal/zznc$1;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v12

    const-string v12, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v13, v9, v14, v12}, Lcom/google/android/gms/internal/zzpo;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "connectivity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    if-nez v12, :cond_7

    const-string v12, "Device is offline."

    invoke-static {v12}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :cond_7
    iget v12, v11, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v13, 0x7

    if-lt v12, v13, :cond_8

    iget-object v12, v11, Lcom/google/android/gms/internal/zzmk;->zzRL:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/zzne;

    iget-object v13, v11, Lcom/google/android/gms/internal/zzmk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v12, v13}, Lcom/google/android/gms/internal/zzne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v11, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v13, :cond_9

    iget-object v13, v11, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v14

    const-string v14, "_ad"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v9, v11, v13}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    return-object v0

    :cond_9
    move-object/from16 v18, v14

    :cond_a
    iget-object v13, v10, Lcom/google/android/gms/internal/zznb;->zzTo:Lcom/google/android/gms/internal/zzfy;

    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/zzfy;->zza(Lcom/google/android/gms/internal/zzmk;)Ljava/util/List;

    move-result-object v13

    if-eqz v0, :cond_b

    :try_start_0
    const-string v14, "Waiting for app index fetching task."

    invoke-static {v14}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    sget-object v14, Lcom/google/android/gms/internal/zzgd;->zzCr:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v15

    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v20, v12

    :try_start_2
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v14, v15, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v0, "App index fetching task completed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-object/from16 v20, v12

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_5

    :catch_3
    move-object/from16 v20, v12

    move-object/from16 v19, v15

    :catch_4
    :goto_4
    const-string v0, "Timed out waiting for app index fetching task"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v19, v15

    :goto_5
    const-string v12, "Failed to fetch app index signal"

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    move-object/from16 v20, v12

    move-object/from16 v19, v15

    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEX:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDH:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/zznm$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEF:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/Location;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCT:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v0

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v4

    const-string v12, "AdRequestServiceImpl.loadAdAsync.qs"

    invoke-virtual {v4, v0, v12}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v4, "Error fetching qs signals. Continuing."

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_7
    :try_start_4
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v3

    const-string v12, "AdRequestServiceImpl.loadAdAsync.ds"

    invoke-virtual {v3, v0, v12}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, "Error fetching drt signals. Continuing."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_8
    :try_start_5
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzni;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    new-instance v5, Lcom/google/android/gms/internal/zzna;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzna;-><init>()V

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/zzna;->zzf(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzna;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/internal/zzni;)Lcom/google/android/gms/internal/zzna;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzna;->zza(Lcom/google/android/gms/internal/zznm$zza;)Lcom/google/android/gms/internal/zzna;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzna;->zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zzna;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzna;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzna;->zzaK(Ljava/lang/String;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/zzna;->zzb(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/zzna;->zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/zzna;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzna;->zzaL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/internal/zznb;->zzTm:Lcom/google/android/gms/internal/zzdu;

    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/zzdu;->zzj(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzna;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzna;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    return-object v0

    :cond_c
    iget v2, v11, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_d

    :try_start_6
    const-string v2, "request_id"

    move-object/from16 v12, v20

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "arc"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    move-object/from16 v12, v17

    move-object/from16 v13, v19

    invoke-virtual {v12, v13, v2}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/zznc$2;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zznc$2;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/zzne;->zzjw()Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/zznh;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v6, :cond_e

    :try_start_8
    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zznc$3;

    move-object/from16 v14, v18

    invoke-direct {v2, v10, v9, v14, v11}, Lcom/google/android/gms/internal/zznc$3;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_e
    move-object/from16 v14, v18

    :try_start_9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->getErrorCode()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zznc$3;

    invoke-direct {v2, v10, v9, v14, v11}, Lcom/google/android/gms/internal/zznc$3;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_f
    :try_start_a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzgl;->zzfF()Lcom/google/android/gms/internal/zzgj;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzgl;->zzfF()Lcom/google/android/gms/internal/zzgj;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "rur"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v12, v1, v3}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    :cond_10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->zzjB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->zzjB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_9

    :cond_11
    const/16 v16, 0x0

    :goto_9
    if-nez v16, :cond_12

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v11, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zznh;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    move-object v5, v0

    move-object v7, v12

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v16

    :cond_12
    if-nez v16, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto :goto_a

    :cond_13
    move-object/from16 v0, v16

    :goto_a
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tts"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v12, v13, v1}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzgl;->zzfD()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmn;->zzSA:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zznc$3;

    invoke-direct {v2, v10, v9, v14, v11}, Lcom/google/android/gms/internal/zznc$3;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v14, v18

    goto :goto_b

    :catch_9
    move-object/from16 v14, v18

    :try_start_b
    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zznc$3;

    invoke-direct {v2, v10, v9, v14, v11}, Lcom/google/android/gms/internal/zznc$3;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :catchall_1
    move-exception v0

    :goto_b
    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zznc$3;

    invoke-direct {v2, v10, v9, v14, v11}, Lcom/google/android/gms/internal/zznc$3;-><init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0

    :catch_a
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync.di"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Error fetching device info. This is not recoverable."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmn;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/zznf;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zznh;->zzjy()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/zznf;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)V

    const-string v5, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    move-object/from16 v6, p3

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13, v8, v10}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zznh;->zzjA()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "x-afma-drt-cookie"

    move-object/from16 v14, p4

    invoke-virtual {v10, v11, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v14, p4

    :goto_3
    iget-object v11, v0, Lcom/google/android/gms/internal/zzmk;->zzRW:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "Sending webview cookie in ad request header."

    invoke-static {v15}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    const-string v15, "Cookie"

    invoke-virtual {v10, v15, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v11, 0x1

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zznh;->zzjz()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zznh;->zzjz()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v8, v2

    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v8}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    const/16 v17, 0x0

    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    :goto_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    const/16 v11, 0xc8

    const/16 v0, 0x12c

    if-lt v2, v11, :cond_6

    if-ge v2, v0, :cond_6

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/zzpo;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    invoke-static {v0, v8, v9, v2}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/android/gms/internal/zznf;->zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ufe"

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zznf;->zzj(J)Lcom/google/android/gms/internal/zzmn;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_6

    :catchall_3
    move-exception v0

    const/16 v17, 0x0

    :goto_6
    :try_start_9
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/zzp;->zzb(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-static {v5, v8, v11, v2}, Lcom/google/android/gms/internal/zznc;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v2, v0, :cond_9

    const/16 v0, 0x190

    if-ge v2, v0, :cond_9

    const-string v0, "Location"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :cond_7
    :try_start_b
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/2addr v9, v0

    const/4 v0, 0x5

    if-le v9, v0, :cond_8

    const-string v0, "Too many redirects."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    return-object v0

    :cond_8
    :try_start_d
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/zznf;->zzk(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v0, p0

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0x2e

    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received error HTTP response code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_4
    move-exception v0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error while connecting to ad server: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zznc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zznc;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zznc;->zzTv:Lcom/google/android/gms/internal/zznc;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zznc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zznc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;)V

    sput-object v1, Lcom/google/android/gms/internal/zznc;->zzTv:Lcom/google/android/gms/internal/zznc;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zznc;->zzTv:Lcom/google/android/gms/internal/zznc;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zza(Ljava/util/concurrent/Future;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Exception caught while resolving future"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "InterruptedException caught while resolving future."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "      "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    move p0, v0

    goto :goto_2

    :cond_3
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_4
    const/16 p0, 0x22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "  Response Code:\n    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmu;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpe;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)V

    new-instance v0, Lcom/google/android/gms/internal/zznc$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zznc$5;-><init>(Lcom/google/android/gms/internal/zznc;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmu;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzqm;

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc;->zzTy:Lcom/google/android/gms/internal/zzji;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc;->zzTx:Lcom/google/android/gms/internal/zzfw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zznc;->zzTw:Lcom/google/android/gms/internal/zznb;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zznc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;

    move-result-object p1

    return-object p1
.end method