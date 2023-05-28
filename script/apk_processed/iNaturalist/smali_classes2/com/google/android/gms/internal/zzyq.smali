.class public Lcom/google/android/gms/internal/zzyq;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzyq$zzb;,
        Lcom/google/android/gms/internal/zzyq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl<",
        "Lcom/google/android/gms/internal/zzyw;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzanA:Lcom/google/android/gms/internal/zzyz;

.field private static final zzawl:Ljava/lang/Object;

.field private static final zzawm:Ljava/lang/Object;


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final zzanj:Lcom/google/android/gms/cast/Cast$Listener;

.field private zzaoN:D

.field private zzaoO:Z

.field private final zzaqp:Lcom/google/android/gms/cast/CastDevice;

.field private zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final zzavV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzavW:J

.field private zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

.field private zzavY:Ljava/lang/String;

.field private zzavZ:Z

.field private zzawa:Z

.field private zzawb:Z

.field private zzawc:I

.field private zzawd:I

.field private final zzawe:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzawf:Ljava/lang/String;

.field private zzawg:Ljava/lang/String;

.field private zzawh:Landroid/os/Bundle;

.field private final zzawi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzawj:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzawk:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzyq;->zzawl:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzyq;->zzawm:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 8

    move-object v7, p0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object v0, p4

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->zzaqp:Lcom/google/android/gms/cast/CastDevice;

    move-object v0, p7

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    move-wide v0, p5

    iput-wide v0, v7, Lcom/google/android/gms/internal/zzyq;->zzavW:J

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->mExtras:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->zzawe:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/google/android/gms/internal/zzyq;->zzawi:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyq;->zzuB()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzaad$zzb;)Lcom/google/android/gms/internal/zzaad$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawj:Lcom/google/android/gms/internal/zzaad$zzb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawf:Ljava/lang/String;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzawl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawj:Lcom/google/android/gms/internal/zzaad$zzb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawj:Lcom/google/android/gms/internal/zzaad$zzb;

    new-instance v2, Lcom/google/android/gms/internal/zzyq$zza;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzyq$zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawj:Lcom/google/android/gms/internal/zzaad$zzb;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzyl;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzyl;->zzuy()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavY:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzavY:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzyq;->zzavZ:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzyq;->zzavZ:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzyq;->zzavZ:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzyl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyq;->zza(Lcom/google/android/gms/internal/zzyl;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzys;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyq;->zza(Lcom/google/android/gms/internal/zzys;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzys;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzys;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzys;->getVolume()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzys;->zzuK()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    if-eq v1, v2, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    const/4 v0, 0x1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzys;->getActiveInputState()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawc:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawc:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    iget v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawc:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onActiveInputStateChanged(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzys;->getStandbyState()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawd:I

    if-eq p1, v0, :cond_8

    iput p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawd:I

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    iget v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawd:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/Cast$Listener;->onStandbyStateChanged(I)V

    :cond_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzaad$zzb;)Lcom/google/android/gms/internal/zzaad$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawk:Lcom/google/android/gms/internal/zzaad$zzb;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzyq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzyq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyq;->zzuB()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzyq;)Lcom/google/android/gms/internal/zzaad$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzawj:Lcom/google/android/gms/internal/zzaad$zzb;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzyq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzavY:Ljava/lang/String;

    return-object p1
.end method

.method private zzc(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzawm:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawk:Lcom/google/android/gms/internal/zzaad$zzb;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawk:Lcom/google/android/gms/internal/zzaad$zzb;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzyq;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzyq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzyq;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzaqp:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzyq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzawi:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzyq;)Lcom/google/android/gms/internal/zzaad$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyq;->zzawk:Lcom/google/android/gms/internal/zzaad$zzb;

    return-object p0
.end method

.method private zzuB()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawb:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawc:I

    iput v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawd:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavY:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    return-void
.end method

.method private zzuE()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "removing all MessageReceivedCallbacks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zzuG()Lcom/google/android/gms/internal/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    return-object v0
.end method

.method static synthetic zzuH()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzawl:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzuI()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzawm:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "disconnect(); ServiceListener=%s, isConnected=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyq$zzb;->zzuJ()Lcom/google/android/gms/internal/zzyq;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyq;->zzuE()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzyw;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Error while disconnecting the controller interface: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->disconnect()V

    throw v0

    :cond_1
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "already disposed, so short-circuiting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getActiveInputState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawc:I

    return v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavU:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavY:Ljava/lang/String;

    return-object v0
.end method

.method public getStandbyState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawd:I

    return v0
.end method

.method public getVolume()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    return-wide v0
.end method

.method public isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    return v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzl;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyq;->zzuE()V

    return-void
.end method

.method public removeMessageReceivedCallbacks(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzyw;->zzcU(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Error unregistering namespace (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzyw;->requestStatus()V

    return-void
.end method

.method public setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyr;->zzcQ(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyq;->removeMessageReceivedCallbacks(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavV:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzyw;->zzcT(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setMute(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzyw;->zza(ZDZ)V

    return-void
.end method

.method public setVolume(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzyq;->zzaoN:D

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzyq;->zzaoO:Z

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzyw;->zza(DDZ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v1, "in onPostInitHandler; statusCode=%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e9

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzyq;->zzawb:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzyq;->zzawb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzyq;->zzavZ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzyq;->zzawa:Z

    :goto_1
    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawh:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzawh:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzl;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzyq;->zza(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zzyw;->zzb(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzyq;->zzc(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzyw;->zzcK(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/zzf;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/zzyq;->zza(Lcom/google/android/gms/internal/zzaad$zzb;)V

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/gms/cast/zzf;

    invoke-direct {p3}, Lcom/google/android/gms/cast/zzf;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/zzyw;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzf;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyr;->zzcQ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawe:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzyq;->zzawi:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p3

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzyw;->zzb(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzyq;->zzawi:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Ljava/lang/String;ZLcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/zzyq;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyq;->zzc(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyq;->zzuD()Lcom/google/android/gms/internal/zzyw;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzyw;->zzuL()V

    return-void
.end method

.method protected zzbg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzyw;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyw$zza;->zzbh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzyw;

    move-result-object p1

    return-object p1
.end method

.method protected zzeA()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method protected zzez()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzyq;->zzbg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzyw;

    move-result-object p1

    return-object p1
.end method

.method protected zzqL()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzyq;->zzanA:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyq;->zzawf:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyq;->zzawg:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzaqp:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzyq;->zzavW:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzyq$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzyq$zzb;-><init>(Lcom/google/android/gms/internal/zzyq;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    const-string v1, "listener"

    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzyq$zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawf:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "last_application_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyq;->zzawf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawg:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "last_session_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyq;->zzawg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public zzuC()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawh:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawh:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzawh:Landroid/os/Bundle;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->zzuC()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method zzuD()Lcom/google/android/gms/internal/zzyw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzl;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzyw;

    return-object v0
.end method

.method zzuF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyq;->zzawb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzavX:Lcom/google/android/gms/internal/zzyq$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyq$zzb;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to a device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
