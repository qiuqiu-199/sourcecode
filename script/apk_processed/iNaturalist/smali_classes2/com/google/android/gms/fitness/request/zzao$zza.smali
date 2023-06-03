.class public Lcom/google/android/gms/fitness/request/zzao$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/zzao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static final zzaWf:Lcom/google/android/gms/fitness/request/zzao$zza;


# instance fields
.field private final zzaWg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/fitness/request/OnDataPointListener;",
            "Lcom/google/android/gms/fitness/request/zzao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzao$zza;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzao$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWf:Lcom/google/android/gms/fitness/request/zzao$zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    return-void
.end method

.method public static zzDa()Lcom/google/android/gms/fitness/request/zzao$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWf:Lcom/google/android/gms/fitness/request/zzao$zza;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/request/zzao;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/request/zzao;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/fitness/request/zzao;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/fitness/request/zzao;-><init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;Lcom/google/android/gms/fitness/request/zzao$1;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/request/zzao;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzao;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/fitness/request/OnDataPointListener;)Lcom/google/android/gms/fitness/request/zzao;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzao$zza;->zzaWg:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/request/zzao;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/fitness/request/zzao;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/fitness/request/zzao;-><init>(Lcom/google/android/gms/fitness/request/OnDataPointListener;Lcom/google/android/gms/fitness/request/zzao$1;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
