.class public Lcom/google/android/gms/ads/internal/overlay/zzz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzNU:Lcom/google/android/gms/internal/zzgl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzNY:Z

.field private final zzOV:Ljava/lang/String;

.field private final zzOW:Lcom/google/android/gms/internal/zzgj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzOX:Lcom/google/android/gms/internal/zzpu;

.field private final zzOY:[J

.field private final zzOZ:[Ljava/lang/String;

.field private zzPa:Z

.field private zzPb:Z

.field private zzPc:Z

.field private zzPd:Z

.field private zzPe:Lcom/google/android/gms/ads/internal/overlay/zzj;

.field private zzPf:Z

.field private zzPg:Z

.field private zzPh:J

.field private final zzuc:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;)V
    .locals 14
    .param p4    # Lcom/google/android/gms/internal/zzgl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/zzgj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzpu$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzpu$zzb;-><init>()V

    const-string v3, "min_1"

    const-wide/16 v4, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v8

    const-string v9, "1_5"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v2

    const-string v3, "5_10"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v8

    const-string v9, "10_20"

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v2

    const-string v3, "20_30"

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v8

    const-string v9, "30_max"

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzpu$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzpu$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpu$zzb;->zzla()Lcom/google/android/gms/internal/zzpu;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOX:Lcom/google/android/gms/internal/zzpu;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPa:Z

    iput-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPb:Z

    iput-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPc:Z

    iput-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPd:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPh:J

    move-object v4, p1

    iput-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzuc:Lcom/google/android/gms/internal/zzqh;

    move-object/from16 v4, p3

    iput-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOV:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    move-object/from16 v4, p5

    iput-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOW:Lcom/google/android/gms/internal/zzgj;

    sget-object v4, Lcom/google/android/gms/internal/zzgd;->zzBE:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    return-void

    :cond_0
    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    array-length v5, v4

    new-array v5, v5, [J

    iput-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "Unable to parse frame hash target time number."

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    aput-wide v2, v0, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzc(Lcom/google/android/gms/ads/internal/overlay/zzj;)V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBF:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzj;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    aget-wide v6, v5, v4

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zza(Landroid/view/TextureView;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private zziw()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOW:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vff2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPd:Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNY:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPg:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPh:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPh:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOX:Lcom/google/android/gms/internal/zzpu;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzpu;->zza(D)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNY:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPg:Z

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPh:J

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBD:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPf:Z

    if-nez v0, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOV:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPe:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzhy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOX:Lcom/google/android/gms/internal/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpu;->getBuckets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpu$zza;

    const-string v2, "fps_c_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzpu$zza;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    iget v3, v1, Lcom/google/android/gms/internal/zzpu$zza;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fps_p_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzpu$zza;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzpu$zza;->zzYi:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOZ:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    const-string v2, "fh_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOY:[J

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzuc:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPf:Z

    :cond_5
    return-void
.end method

.method zza(Landroid/view/TextureView;)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v0, 0x8

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v0}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x3f

    move-wide v8, v5

    const/4 v5, 0x0

    move-wide v6, v2

    :goto_0
    if-ge v5, v0, :cond_2

    move-wide v9, v8

    move-wide v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_1

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v12, v11

    const/16 v11, 0x80

    const-wide/16 v13, 0x1

    if-le v12, v11, :cond_0

    move-wide v11, v13

    goto :goto_2

    :cond_0
    move-wide v11, v2

    :goto_2
    long-to-int v15, v9

    shl-long/2addr v11, v15

    or-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    sub-long/2addr v9, v13

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-wide v6, v7

    move-wide v8, v9

    goto :goto_0

    :cond_2
    const-string v0, "%016X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzj;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOW:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v4, "vpc2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPa:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    const-string/jumbo v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzhy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgl;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPe:Lcom/google/android/gms/ads/internal/overlay/zzj;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zziw()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzj;)V

    return-void
.end method

.method public zzhU()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPa:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPb:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOW:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vfr2"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPb:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public zzix()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNY:Z

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPb:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPc:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNU:Lcom/google/android/gms/internal/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzOW:Lcom/google/android/gms/internal/zzgj;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vfp2"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzgh;->zza(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzPc:Z

    :cond_0
    return-void
.end method

.method public zziy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzz;->zzNY:Z

    return-void
.end method
