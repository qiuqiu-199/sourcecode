.class public Lcom/google/android/gms/internal/zzbbg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbbm;


# static fields
.field private static final zzbEI:Ljava/lang/Object;

.field private static zzbJw:Lcom/google/android/gms/internal/zzbbg;

.field private static final zzbJz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbJx:Lcom/google/android/gms/internal/zzbca;

.field private zzbJy:Lcom/google/android/gms/internal/zzbbn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbEI:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HEAD"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "POST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "PUT"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbJz:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbo;->zzcf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbbo;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzbce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbce;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbbg;-><init>(Lcom/google/android/gms/internal/zzbbn;Lcom/google/android/gms/internal/zzbca;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbbn;Lcom/google/android/gms/internal/zzbca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJy:Lcom/google/android/gms/internal/zzbbn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJx:Lcom/google/android/gms/internal/zzbca;

    return-void
.end method

.method public static zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbbm;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbbg;->zzbEI:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbbg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbbg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzbbg;->zzbJw:Lcom/google/android/gms/internal/zzbbg;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzSr()Lcom/google/android/gms/internal/zzbcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcg;->dispatch()V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzbbg;->zzbJz:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Unsupport http method %s. Drop the hit."

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbbz;->zzSg()Lcom/google/android/gms/internal/zzbbz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbbz;->isPreview()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJx:Lcom/google/android/gms/internal/zzbca;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbca;->zzpV()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Too many hits sent too quickly (rate throttled)."

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbg;->zzbJy:Lcom/google/android/gms/internal/zzbbn;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbbn;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return v0
.end method

.method public zzak(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbbg;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public zzhf(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbbg;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
