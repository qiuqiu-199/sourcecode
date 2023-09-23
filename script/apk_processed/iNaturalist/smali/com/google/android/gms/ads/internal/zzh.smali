.class public Lcom/google/android/gms/ads/internal/zzh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzrJ:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzrJ:Ljava/lang/Object;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzpd;)Z
    .locals 7
    .param p0    # Lcom/google/android/gms/internal/zzpd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpd;->zzkb()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzEL:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v5, 0x0

    cmp-long v6, v3, v1

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpd;->zzkc()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzh;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzh;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzpd;)V
    .locals 9

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzpd;->zzke()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/zzpd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/zzpd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4}, Lcom/google/android/gms/ads/internal/zzh;->zza(Lcom/google/android/gms/internal/zzpd;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Context not provided to fetch application settings"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "App settings could not be fetched. Required parameters missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/zzpo;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzji;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/zzh$1;

    invoke-direct {v3, p0, p7}, Lcom/google/android/gms/ads/internal/zzh$1;-><init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/Runnable;)V

    sget-object p2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance p4, Lcom/google/android/gms/ads/internal/zzh$2;

    move-object v0, p4

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzh$2;-><init>(Lcom/google/android/gms/ads/internal/zzh;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzid;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
