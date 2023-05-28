.class Lcom/google/android/gms/tagmanager/zzbm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcl;


# instance fields
.field private final zzadb:Ljava/lang/String;

.field private final zzagm:J

.field private final zzagn:I

.field private zzago:D

.field private zzagp:J

.field private final zzagq:Ljava/lang/Object;

.field private final zzbGH:J

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagq:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagn:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagm:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzbGH:J

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzadb:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public zzpV()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagp:J

    const/4 v5, 0x0

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzbGH:J

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-gez v8, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzadb:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    monitor-exit v0

    return v7

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    iget v5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagn:I

    int-to-double v5, v5

    cmpg-double v8, v3, v5

    if-gez v8, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagp:J

    const/4 v5, 0x0

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagm:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v8, v3, v5

    if-lez v8, :cond_1

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagn:I

    int-to-double v5, v5

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    const/4 v10, 0x0

    add-double/2addr v8, v3

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzagp:J

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    const/4 v5, 0x0

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzago:D

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzadb:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    monitor-exit v0

    return v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
