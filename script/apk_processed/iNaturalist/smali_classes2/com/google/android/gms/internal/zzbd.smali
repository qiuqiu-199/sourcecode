.class public Lcom/google/android/gms/internal/zzbd;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzbd"

.field protected static final zzqC:Ljava/lang/Object;

.field private static zzqE:Lcom/google/android/gms/common/zze;

.field protected static final zzqy:Ljava/lang/Object;


# instance fields
.field private volatile zzpU:Z

.field private zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected zzqB:Z

.field protected zzqD:Z

.field protected zzqF:Z

.field private zzqG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzbz;",
            ">;"
        }
    .end annotation
.end field

.field protected zzqn:Landroid/content/Context;

.field protected zzqo:Landroid/content/Context;

.field private zzqp:Ljava/util/concurrent/ExecutorService;

.field private zzqq:Ldalvik/system/DexClassLoader;

.field private zzqr:Lcom/google/android/gms/internal/zzay;

.field private zzqs:[B

.field private volatile zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzqu:Ljava/util/concurrent/Future;

.field private volatile zzqv:Lcom/google/android/gms/internal/zzag$zza;

.field private zzqw:Ljava/util/concurrent/Future;

.field private volatile zzqx:Z

.field private zzqz:Lcom/google/android/gms/internal/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzqy:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzqC:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzqE:Lcom/google/android/gms/common/zze;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzpU:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqv:Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqw:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqx:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqB:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqo:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqG:Ljava/util/Map;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbd;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbd;->zzb(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzba; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzay$zza;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.jar"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbd;->zzqs:[B

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzay;->zzc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-object v0
.end method

.method private zza(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->TAG:Ljava/lang/String;

    const-string v1, "File %s not found. No need for deletion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private zza(Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.tmp"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "%s/%s.dex"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-gtz p1, :cond_2

    return-void

    :cond_2
    long-to-int p1, v2

    new-array p1, p1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v5, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    return-void

    :cond_3
    :try_start_3
    new-instance v5, Lcom/google/android/gms/internal/zzag$zzd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzag$zzd;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v5, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbd;->zzqs:[B

    invoke-virtual {p2, v6, p1}, Lcom/google/android/gms/internal/zzay;->zzd([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzao;->zzh([B)[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_0

    :catch_2
    move-object v2, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    throw p2

    :catch_5
    move-object v3, v2

    :catch_6
    :goto_1
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_6
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_7
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqx:Z

    return p1
.end method

.method private zzaT()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqo:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqo:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    :cond_0
    :goto_0
    return-void
.end method

.method private zzaU()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDV:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbd;->zzaV()V

    return-void
.end method

.method private zzaW()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqD:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzaqg;->zzq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqv:Lcom/google/android/gms/internal/zzag$zza;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private zzaX()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqp:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbd$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbd$3;-><init>(Lcom/google/android/gms/internal/zzbd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zze;->zzuY()Lcom/google/android/gms/common/zze;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbd;->zzqE:Lcom/google/android/gms/common/zze;

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzqE:Lcom/google/android/gms/common/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zze;->zzaC(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqB:Z

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzqE:Lcom/google/android/gms/common/zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqD:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/zzzk;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbd;->zzaT()V

    return-void
.end method

.method private zzb(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.tmp"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "%s/%s.dex"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    return v4

    :cond_2
    long-to-int v2, v2

    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/zzbd;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v4

    :cond_3
    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzag$zzd;->zze([B)Lcom/google/android/gms/internal/zzag$zzd;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzag$zzd;->zzcw:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v2, Lcom/google/android/gms/internal/zzag$zzd;->zzcv:[B

    iget-object v6, v2, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    invoke-static {v6}, Lcom/google/android/gms/internal/zzao;->zzh([B)[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v2, Lcom/google/android/gms/internal/zzag$zzd;->zzcx:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqs:[B

    new-instance v6, Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzag$zzd;->data:[B

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/zzay;->zzc([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    array-length p1, p2

    invoke-virtual {v0, p2, v4, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return v5

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_3
    move-object p1, v0

    goto :goto_2

    :cond_5
    :goto_0
    :try_start_7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return v4

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_6
    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_7
    throw p2

    :catch_7
    move-object v3, p1

    :catch_8
    :goto_2
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_8
    if-eqz p1, :cond_9

    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_9
    return v4
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzba;
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqp:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbd;->zzc(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbd;->zzaX()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbd;->zzaU()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbf;->zzbc()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/gms/internal/zzgd;->zzDT:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbd;->zzo(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbd;->zzp(Ljava/lang/String;)Z

    new-instance p1, Lcom/google/android/gms/internal/zzaq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzaq;-><init>(Lcom/google/android/gms/internal/zzbd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqz:Lcom/google/android/gms/internal/zzaq;

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbd;->zzaW()V

    return-void
.end method

.method private zzc(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbd;->zzpU:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqp:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzbd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbd$1;-><init>(Lcom/google/android/gms/internal/zzbd;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;

    return-void
.end method

.method private zzo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzba;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzay;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzay;->zzn(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd;->zzqs:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private zzp(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzba;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzba;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzba;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzU()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbd;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzbd;->zzqq:Ldalvik/system/DexClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "%s/%s.dex"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbd;->zzq(Ljava/lang/String;)V

    return v4

    :catchall_0
    move-exception v5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "%s/%s.dex"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbd;->zzq(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/internal/zzay$zza; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private zzq(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->zza(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqo:Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqn:Landroid/content/Context;

    return-object v0
.end method

.method public zzQ()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbd;->zzaP()Lcom/google/android/gms/internal/zzaq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaq;->zzQ()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqG:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqG:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbz;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbz;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzaI()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqp:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public zzaJ()Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqq:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public zzaK()Lcom/google/android/gms/internal/zzay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqr:Lcom/google/android/gms/internal/zzay;

    return-object v0
.end method

.method public zzaL()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqs:[B

    return-object v0
.end method

.method public zzaM()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public zzaN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqB:Z

    return v0
.end method

.method public zzaO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    return v0
.end method

.method public zzaP()Lcom/google/android/gms/internal/zzaq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqz:Lcom/google/android/gms/internal/zzaq;

    return-object v0
.end method

.method public zzaQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqD:Z

    return v0
.end method

.method public zzaR()Lcom/google/android/gms/internal/zzag$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqv:Lcom/google/android/gms/internal/zzag$zza;

    return-object v0
.end method

.method public zzaS()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqw:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public zzaV()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzqy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqx:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqp:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzbd$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbd$2;-><init>(Lcom/google/android/gms/internal/zzbd;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqw:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqx:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzaY()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbd;->zzpU:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqu:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqt:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method public zzaZ()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzqC:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public zzba()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbd;->zzqC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbd;->zzqF:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzqG:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbz;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbz;->zzbm()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
