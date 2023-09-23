.class public Lcom/google/android/gms/internal/zzbil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbLR:Lcom/google/android/gms/internal/zzbie;

.field private final zzbMr:Lcom/google/android/gms/internal/zzbia;

.field private final zzbMs:Lcom/google/android/gms/internal/zzbik;

.field private final zzbMt:Lcom/google/android/gms/internal/zzbih;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/zzbik;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzbik;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzbih;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzbih;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbil;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;Lcom/google/android/gms/internal/zzbik;Lcom/google/android/gms/internal/zzbih;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbia;Lcom/google/android/gms/internal/zzbik;Lcom/google/android/gms/internal/zzbih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbia;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbil;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbil;->zzbMs:Lcom/google/android/gms/internal/zzbik;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbil;->zzbMt:Lcom/google/android/gms/internal/zzbih;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbil;->zzib()V

    return-void
.end method

.method zzST()Z
    .locals 3

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbil;->zzbW(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbil;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v0, "No network connectivity - Offline"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    return v1
.end method

.method zzbW(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method zzib()V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbil;->zzST()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V

    return-void

    :cond_0
    const-string v0, "Starting to load resource from Network."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbil;->zzbMs:Lcom/google/android/gms/internal/zzbik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbik;->zzSS()Lcom/google/android/gms/internal/zzbij;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbil;->zzbMt:Lcom/google/android/gms/internal/zzbih;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbil;->zzbLR:Lcom/google/android/gms/internal/zzbie;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbih;->zzb(Lcom/google/android/gms/internal/zzbhx;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Loading resource from "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzbij;->zzhX(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/zzbin; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x36

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "NetworkLoader: Error when loading resource from url: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbij;->close()V

    return-void

    :catch_1
    :try_start_3
    const-string v5, "NetworkLoader: Error when loading resource for url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v5}, Lcom/google/android/gms/common/util/zzp;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzbia;->zzN([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbij;->close()V

    return-void

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x42

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "NetworkLoader: Error when parsing downloaded resources from url: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbij;->close()V

    return-void

    :catch_3
    :try_start_6
    const-string v2, "NetworkLoader: No data was retrieved from the given url: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbil;->zzbMr:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/zzbia;->zzA(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbij;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbij;->close()V

    throw v1
.end method
