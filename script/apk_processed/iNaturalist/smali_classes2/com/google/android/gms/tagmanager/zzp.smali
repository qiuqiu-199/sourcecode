.class public Lcom/google/android/gms/tagmanager/zzp;
.super Lcom/google/android/gms/internal/zzaaf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzp$zzd;,
        Lcom/google/android/gms/tagmanager/zzp$zzc;,
        Lcom/google/android/gms/tagmanager/zzp$zzb;,
        Lcom/google/android/gms/tagmanager/zzp$zza;,
        Lcom/google/android/gms/tagmanager/zzp$zze;,
        Lcom/google/android/gms/tagmanager/zzp$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaaf<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEU:Ljava/lang/String;

.field private zzbEZ:J

.field private final zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

.field private final zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

.field private final zzbFl:I

.field private final zzbFm:Lcom/google/android/gms/tagmanager/zzq;

.field private zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

.field private zzbFo:Lcom/google/android/gms/internal/zzbje;

.field private volatile zzbFp:Lcom/google/android/gms/tagmanager/zzo;

.field private volatile zzbFq:Z

.field private zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

.field private zzbFs:Ljava/lang/String;

.field private zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

.field private zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

.field private final zzrs:Landroid/os/Looper;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbje;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V
    .locals 1

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaaf;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFo:Lcom/google/android/gms/internal/zzbje;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzp$zzd;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/tagmanager/zzp$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    new-instance p1, Lcom/google/android/gms/internal/zzaj$zzj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaj$zzj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    iput-object p11, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzRg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzgW(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)V
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    new-instance v6, Lcom/google/android/gms/tagmanager/zzcv;

    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/tagmanager/zzcu;

    move-object/from16 v12, p6

    invoke-direct {v7, v1, v4, v12}, Lcom/google/android/gms/tagmanager/zzcu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;)V

    new-instance v8, Lcom/google/android/gms/internal/zzbje;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/zzbje;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/tagmanager/zzbm;

    const-string v20, "refreshing"

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v21

    const/4 v14, 0x1

    const/4 v15, 0x5

    const-wide/32 v16, 0xdbba0

    const-wide/16 v18, 0x1388

    move-object v13, v10

    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/tagmanager/zzbm;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V

    new-instance v11, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v11, v1, v4}, Lcom/google/android/gms/tagmanager/zzq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/tagmanager/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbje;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V

    iget-object v1, v0, Lcom/google/android/gms/tagmanager/zzp;->zzbFo:Lcom/google/android/gms/internal/zzbje;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzt;->zzQv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbje;->zzig(Ljava/lang/String;)V

    return-void
.end method

.method private zzQn()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHi:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzcl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    return-object p0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaj$zzj;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbjd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjd$zza;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNe:J

    new-instance v1, Lcom/google/android/gms/internal/zzaj$zzf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaj$zzf;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNf:Lcom/google/android/gms/internal/zzaj$zzj;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzb(Lcom/google/android/gms/internal/zzbjd$zza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaj$zzj;JZ)V
    .locals 9

    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    iget-boolean p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFq:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    invoke-virtual {p4}, Lcom/google/android/gms/tagmanager/zzq;->zzQq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    const/4 p4, 0x0

    add-long/2addr v4, v0

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    const/4 p4, 0x0

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzay(J)V

    new-instance p4, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    move-object v2, p4

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzaj$zzj;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/Container;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-interface {p1, p4}, Lcom/google/android/gms/tagmanager/zzp$zza;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzp;->zzay(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaj$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaj$zzj;JZ)V

    return-void
.end method

.method private zzaR(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zznz(I)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    new-instance v10, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbjf$zzc;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzp$3;-><init>(Lcom/google/android/gms/tagmanager/zzp;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    const-wide/16 v0, 0x0

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzQp()V

    :goto_0
    return-void
.end method

.method private declared-synchronized zzay(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-nez v0, :cond_0

    const-string p1, "Refresh requested, but no network load scheduler."

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzls:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFq:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzp;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/tagmanager/zzp;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result p0

    return p0
.end method


# virtual methods
.method declared-synchronized zzQh()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzQk()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zznz(I)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    new-instance v1, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbjf$zzc;)V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    new-instance v5, Lcom/google/android/gms/tagmanager/zzp$2;

    invoke-direct {v5, p0}, Lcom/google/android/gms/tagmanager/zzp$2;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_0
    const-string v1, "Default was requested, but no default container was found"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    return-void
.end method

.method public zzQl()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaR(Z)V

    return-void
.end method

.method public zzQm()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaR(Z)V

    return-void
.end method

.method protected zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized zzgW(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzgZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
