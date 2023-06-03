.class public Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaSt:J

.field private zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

.field private zzafe:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzCY()V
    .locals 12

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    const-string v2, "Must set a non-zero value for startTimeMillis/startTime"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(JLjava/lang/Object;)J

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    const-string v2, "Must set a non-zero value for endTimeMillis/endTime"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(JLjava/lang/Object;)J

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    const-string v1, "Must set the data set"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gtz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-eqz v9, :cond_0

    iget-wide v9, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    cmp-long v11, v2, v9

    if-ltz v11, :cond_3

    :cond_0
    cmp-long v9, v2, v7

    if-eqz v9, :cond_1

    iget-wide v7, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    cmp-long v9, v2, v7

    if-gtz v9, :cond_3

    :cond_1
    iget-wide v7, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    cmp-long v9, v4, v7

    if-gtz v9, :cond_3

    iget-wide v7, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    cmp-long v9, v4, v7

    if-gez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    xor-int/2addr v7, v6

    const-string v8, "Data Point\'s startTimeMillis %d, endTimeMillis %d should lie between timeRange provided in the request. StartTimeMillis %d, EndTimeMillis: %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v6

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzCY()V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;-><init>(Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;Lcom/google/android/gms/fitness/request/DataUpdateRequest$1;)V

    return-object v0
.end method

.method public setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 1

    const-string v0, "Must set the data set"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaUn:Lcom/google/android/gms/fitness/data/DataSet;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid start time :%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v2, p3, p1

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Invalid end time :%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzafe:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzaSt:J

    return-object p0
.end method
