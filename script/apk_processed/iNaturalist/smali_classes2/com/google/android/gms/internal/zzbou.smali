.class public Lcom/google/android/gms/internal/zzbou;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbou$zza;
    }
.end annotation


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcat:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcdp:J

.field private final zzcdq:J

.field private final zzcdr:D

.field private final zzcds:D

.field private final zzcdt:Ljava/util/Random;

.field private zzcdu:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzcdv:J

.field private zzcdw:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbrn;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdt:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdw:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbou;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbou;->zzcdp:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzbou;->zzcdq:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzbou;->zzcds:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzbou;->zzcdr:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbrn;JJDDLcom/google/android/gms/internal/zzbou$1;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/zzbou;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbrn;JJDD)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbou;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Cancelling existing retry attempt"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "No existing retry attempt to cancel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    return-void
.end method

.method public zzVU()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdw:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    return-void
.end method

.method public zzYh()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdq:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    return-void
.end method

.method public zzr(Ljava/lang/Runnable;)V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzbou$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbou$1;-><init>(Lcom/google/android/gms/internal/zzbou;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Cancelling previous scheduled retry"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdw:Z

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbou;->zzcdp:J

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcds:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcdq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcdr:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbou;->zzcdr:D

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzbou;->zzcdv:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdt:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdw:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v4, "Scheduling retry in %dms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzcdu:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
