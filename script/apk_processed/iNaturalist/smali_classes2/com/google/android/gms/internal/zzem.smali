.class public Lcom/google/android/gms/internal/zzem;
.super Lcom/google/android/gms/internal/zzex$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private zzrJ:Ljava/lang/Object;

.field private final zzzW:Ljava/util/Random;

.field private zzzX:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzex$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzem;->zzrJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzem;->zzzW:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzem;->zzeV()V

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzem;->zzzX:J

    return-wide v0
.end method

.method public zzeV()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzem;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzem;->zzzW:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0x80000000L

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzem;->zzzX:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzem;->zzzX:J

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
