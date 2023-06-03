.class Lcom/google/android/gms/tagmanager/zzcj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcj$zza;
    }
.end annotation


# static fields
.field private static zzbHd:Lcom/google/android/gms/tagmanager/zzcj;


# instance fields
.field private volatile zzbEU:Ljava/lang/String;

.field private volatile zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

.field private volatile zzbHf:Ljava/lang/String;

.field private volatile zzbHg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcj;->clear()V

    return-void
.end method

.method static zzRe()Lcom/google/android/gms/tagmanager/zzcj;
    .locals 2

    const-class v0, Lcom/google/android/gms/tagmanager/zzcj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcj;->zzbHd:Lcom/google/android/gms/tagmanager/zzcj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcj;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzcj;-><init>()V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzcj;->zzbHd:Lcom/google/android/gms/tagmanager/zzcj;

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcj;->zzbHd:Lcom/google/android/gms/tagmanager/zzcj;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private zzhn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method private zzw(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, "&gtm_debug=x"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method clear()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHh:Lcom/google/android/gms/tagmanager/zzcj$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbEU:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHg:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbEU:Ljava/lang/String;

    return-object v0
.end method

.method zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    return-object v0
.end method

.method zzRg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHf:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized zzv(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const-string v0, "Container preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const-string v0, ".*?&gtm_debug=x$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHi:Lcom/google/android/gms/tagmanager/zzcj$zza;

    goto :goto_1

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzw(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHg:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHi:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-ne p1, v0, :cond_4

    :cond_2
    const-string p1, "/r?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHf:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbEU:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_5
    :try_start_2
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbEU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Exit preview mode for container: "

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHh:Lcom/google/android/gms/tagmanager/zzcj$zza;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHe:Lcom/google/android/gms/tagmanager/zzcj$zza;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcj;->zzbHf:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_7
    monitor-exit p0

    return v0

    :cond_8
    :try_start_3
    const-string p1, "Invalid preview uri: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    monitor-exit p0

    return v0
.end method
