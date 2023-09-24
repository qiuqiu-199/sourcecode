.class Lcom/google/android/gms/internal/zzbot;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbot$zzc;,
        Lcom/google/android/gms/internal/zzbot$zzb;,
        Lcom/google/android/gms/internal/zzbot$zza;
    }
.end annotation


# static fields
.field private static zzccJ:J


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcat:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

.field private zzccL:Z

.field private zzccM:Z

.field private zzccN:J

.field private zzccO:Lcom/google/android/gms/internal/zzbov;

.field private zzccP:Lcom/google/android/gms/internal/zzbot$zza;

.field private zzccQ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzccR:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzccS:Lcom/google/android/gms/internal/zzbol;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzbot$zza;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccS:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbot;->zzccP:Lcom/google/android/gms/internal/zzbot$zza;

    sget-wide v0, Lcom/google/android/gms/internal/zzbot;->zzccJ:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzbot;->zzccJ:J

    new-instance p4, Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object p1

    const-string v2, "WebSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ws_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p1, v2, v0}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p0, p2, p3, p5}, Lcom/google/android/gms/internal/zzbot;->zza(Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbot$zzb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    return-void
.end method

.method private isBuffering()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccP:Lcom/google/android/gms/internal/zzbot$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccL:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbot$zza;->zzba(Z)V

    return-void
.end method

.method private static zzF(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private zzXZ()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/16 v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Reset keepAlive. Remaining: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Reset keepAlive"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzYa()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private zzYa()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbot$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbot$2;-><init>(Lcom/google/android/gms/internal/zzbot;)V

    return-object v0
.end method

.method private zzYb()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "closing itself"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private zzYc()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccL:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "timed out on connect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbot$zzb;->close()V

    :cond_1
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbot$zzb;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbon;->getHost()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbon;->isSecure()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbon;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1, p3}, Lcom/google/android/gms/internal/zzbon;->zza(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "User-Agent"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccS:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbol;->zzkn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/zzbsm;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, p2}, Lcom/google/android/gms/internal/zzbsm;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbot$zzc;

    invoke-direct {p1, p0, p3, v0}, Lcom/google/android/gms/internal/zzbot$zzc;-><init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/internal/zzbsm;Lcom/google/android/gms/internal/zzbot$1;)V

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbot;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbot;->zzccR:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbot;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbot;->zziR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccL:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbrn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbot;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzXZ()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbot;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbot;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbot;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzYb()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbot;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzYc()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbot;)Lcom/google/android/gms/internal/zzbot$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    return-object p0
.end method

.method private zziP(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbov;->zziT(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbov;->zzYj()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbov;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsv;->zzje(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "handleIncomingFrame complete frame: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccP:Lcom/google/android/gms/internal/zzbot$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbot$zza;->zzat(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Error parsing frame (cast error): "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbov;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Error parsing frame: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbov;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbot;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->shutdown()V

    :cond_3
    :goto_3
    return-void
.end method

.method private zziQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbot;->zzqw(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbot;->zzqw(I)V

    return-object p1
.end method

.method private zziR(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzXZ()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbot;->zziP(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbot;->zziQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private zzqw(I)V
    .locals 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    new-instance p1, Lcom/google/android/gms/internal/zzbov;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbov;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzccO:Lcom/google/android/gms/internal/zzbov;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccN:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HandleNewFrameCount: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "websocket is being closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccM:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbot$zzb;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccR:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccR:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccQ:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public open()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbot$zzb;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbot$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbot$1;-><init>(Lcom/google/android/gms/internal/zzbot;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbot;->zzccR:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->zzXZ()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsv;->zzaF(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbot;->zzF(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    array-length v2, v0

    const/16 v3, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbot$zzb;->zziS(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbot;->zzccK:Lcom/google/android/gms/internal/zzbot$zzb;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzbot$zzb;->zziS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbot;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to serialize message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbot;->shutdown()V

    :cond_2
    return-void
.end method
