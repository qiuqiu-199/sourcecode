.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaWA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private zzaWB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private zzaWC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private zzaWz:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWA:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWB:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWC:Ljava/util/List;

    return-void
.end method

.method private zzDj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Lcom/google/android/gms/fitness/data/Session;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWA:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWB:Ljava/util/List;

    return-object p0
.end method

.method private zzg(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzi(Lcom/google/android/gms/fitness/data/DataPoint;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzh(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method private zzh(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-object v4, v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v11, v8, v4

    if-lez v11, :cond_0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v11, v10}, Lcom/google/android/gms/internal/zzant;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    :cond_0
    const/4 v12, 0x0

    cmp-long v13, v6, v2

    if-ltz v13, :cond_1

    cmp-long v13, v8, v4

    if-gtz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    const-string v14, "Data point %s has start and end times outside session interval [%d, %d]"

    const/4 v15, 0x3

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v1, v11, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v11, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v11, v3

    invoke-static {v13, v14, v11}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v2, v8, v4

    if-eqz v2, :cond_2

    const-string v2, "Fitness"

    const-string v4, "Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    new-array v5, v15, [Ljava/lang/Object;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v5, v12

    aput-object v10, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v8

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_2
    return-void
.end method

.method private zzi(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    cmp-long v7, v4, v0

    if-ltz v7, :cond_0

    cmp-long v7, v4, v2

    if-lez v7, :cond_1

    :cond_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v7, v6}, Lcom/google/android/gms/internal/zzant;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v0

    if-ltz v9, :cond_2

    cmp-long v9, v4, v2

    if-gtz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    const-string v10, "Data point %s has time stamp outside session interval [%d, %d]"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    aput-object p1, v12, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v12, v1

    invoke-static {v9, v10, v12}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const-string v0, "Fitness"

    const-string v2, "Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    new-array v3, v11, [Ljava/lang/Object;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v7

    aput-object v6, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_3
    return-void
.end method


# virtual methods
.method public addAggregateDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Must specify a valid aggregate data point."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWC:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "Data set/Aggregate data point for this data source %s is already added."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->zze(Lcom/google/android/gms/fitness/data/DataPoint;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWC:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Must specify a valid data set."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWC:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "Data set for this data source %s is already added."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "No data points specified in the input data set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWC:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/request/SessionInsertRequest;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must specify a valid session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Must specify a valid end time, cannot insert a continuing session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzDj()V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;Lcom/google/android/gms/fitness/request/SessionInsertRequest$1;)V

    return-object v0
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzaWz:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
