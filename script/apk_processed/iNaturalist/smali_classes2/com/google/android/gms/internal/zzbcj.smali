.class public final Lcom/google/android/gms/internal/zzbcj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbcj$zza;,
        Lcom/google/android/gms/internal/zzbcj$zzb;,
        Lcom/google/android/gms/internal/zzbcj$zzc;
    }
.end annotation


# static fields
.field private static final zzbKC:Ljava/util/regex/Pattern;

.field private static volatile zzbKD:Lcom/google/android/gms/internal/zzbcj;

.field private static zzbKM:Lcom/google/android/gms/internal/zzbcj$zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbEU:Ljava/lang/String;

.field private final zzbJj:Ljava/util/concurrent/ExecutorService;

.field private final zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJu:Lcom/google/android/gms/tagmanager/zzay;

.field private final zzbKE:Lcom/google/android/gms/internal/zzbcm;

.field private final zzbKF:Lcom/google/android/gms/internal/zzbbz;

.field private final zzbKG:Lcom/google/android/gms/internal/zzbcj$zza;

.field private final zzbKH:Ljava/lang/Object;

.field private zzbKI:Ljava/lang/String;

.field private zzbKJ:I

.field private final zzbKK:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbKL:Z

.field private volatile zztZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKC:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/zzbcj$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbcj$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKM:Lcom/google/android/gms/internal/zzbcj$zzc;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzbcm;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbbz;Lcom/google/android/gms/internal/zzbcj$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKH:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKJ:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKK:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKL:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJu:Lcom/google/android/gms/tagmanager/zzay;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKE:Lcom/google/android/gms/internal/zzbcm;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJj:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKF:Lcom/google/android/gms/internal/zzbbz;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKG:Lcom/google/android/gms/internal/zzbcj$zza;

    return-void
.end method

.method private zzRE()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcj$6;-><init>(Lcom/google/android/gms/internal/zzbcj;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private zzSt()Lcom/google/android/gms/internal/zzbcj$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKG:Lcom/google/android/gms/internal/zzbcj$zza;

    return-object v0
.end method

.method private zzSu()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcj$2;-><init>(Lcom/google/android/gms/internal/zzbcj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Lcom/google/android/gms/tagmanager/zzba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcj$3;-><init>(Lcom/google/android/gms/internal/zzbcj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Lcom/google/android/gms/tagmanager/zzaz;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcj;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKJ:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcj;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKJ:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcj;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcj;->zzj([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzbcj;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKD:Lcom/google/android/gms/internal/zzbcj;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzbcj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKD:Lcom/google/android/gms/internal/zzbcj;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKM:Lcom/google/android/gms/internal/zzbcj$zzc;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbcj$zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)Lcom/google/android/gms/internal/zzbcj;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzbcj;->zzbKD:Lcom/google/android/gms/internal/zzbcj;

    move-object v0, p0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbcj;)Lcom/google/android/gms/internal/zzbcm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKE:Lcom/google/android/gms/internal/zzbcm;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbcj;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbcj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbcj;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKK:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbcj;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJj:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbcj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKH:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbcj;)Lcom/google/android/gms/internal/zzbbz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKF:Lcom/google/android/gms/internal/zzbbz;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbcj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    return p0
.end method

.method private zzj([Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Looking up container asset."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKI:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKI:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcj;->zzSt()Lcom/google/android/gms/internal/zzbcj$zza;

    move-result-object p1

    const-string v3, "containers"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbcj$zza;->zzhN(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_6

    sget-object v5, Lcom/google/android/gms/internal/zzbcj;->zzbKC:Ljava/util/regex/Pattern;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    const-string v4, "containers"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKI:Ljava/lang/String;

    const-string v4, "Asset found for container "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const-string v5, "Extra container asset found, will not be loaded: "

    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_3

    :cond_5
    const-string v5, "Ignoring container asset %s (does not match %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, p1, v3

    aput-object v7, v6, v1

    sget-object v7, Lcom/google/android/gms/internal/zzbcj;->zzbKC:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    if-nez v4, :cond_b

    const-string p1, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcj;->zzSt()Lcom/google/android/gms/internal/zzbcj$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbcj$zza;->zzSv()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzbcj;->zzbKC:Ljava/util/regex/Pattern;

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v4, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKI:Ljava/lang/String;

    const-string v0, "Asset found for container "

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    const-string v0, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const-string v0, "Extra container asset found, will not be loaded: "

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v1, "Failed to enumerate assets."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcj;->zzbEU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKI:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    const-string v3, "Failed to enumerate assets in folder %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "containers"

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public initialize()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbcj;->zzi([Ljava/lang/String;)V

    return-void
.end method

.method public zzal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbcj;->zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzi([Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKH:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbcj;->mContext:Landroid/content/Context;

    const-class v5, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzbcj;->zzb(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcj;->zzj([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    const-string v5, "Loading container "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/zzbcj;->zzal(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKL:Z

    if-nez p1, :cond_4

    const-string p1, "Installing Tag Manager event handler."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj;->zzbKL:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcj;->zzSu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcj;->zzRE()V

    const-string p1, "Tag Manager event handler installed."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    :try_start_4
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 p1, 0x35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Tag Manager initilization took "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzbcj;->zztZ:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbcj$4;-><init>(Lcom/google/android/gms/internal/zzbcj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/zzbcj$5;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzbcj$5;-><init>(Lcom/google/android/gms/internal/zzbcj;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method zzx(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbcj$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbcj$7;-><init>(Lcom/google/android/gms/internal/zzbcj;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
