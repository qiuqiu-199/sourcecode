.class Lcom/google/android/gms/internal/zzbab$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# static fields
.field private static final zzbDM:[Ljava/lang/String;


# instance fields
.field private final zzahj:Ljava/lang/String;

.field private final zzbDJ:Ljava/lang/String;

.field private final zzbDN:Landroid/net/Uri;

.field private final zzbDO:Ljava/net/URI;

.field private final zzbDP:Ljava/lang/Boolean;

.field private final zzbDQ:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "https"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ftp"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDM:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDN:Landroid/net/Uri;

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDO:Ljava/net/URI;

    throw v0

    :catch_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDO:Ljava/net/URI;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDJ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->zzPD()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDP:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->zzPC()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDQ:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbab$zza;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getPort()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getScheme()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDJ:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDN:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDN:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab$zza;->zzgL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzahj:Ljava/lang/String;

    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v0, "http"

    :cond_3
    if-eqz v0, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private zzPC()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDQ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDN:Landroid/net/Uri;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDN:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private zzPD()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDP:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab$zza;->zzbDJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbab$zza;->zzgL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbab$zza;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->zzPD()Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbab$zza;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbab$zza;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab$zza;->getPort()I

    move-result p0

    return p0
.end method

.method private static zzgL(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/zzbab$zza;->zzbDM:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/zzbab$zza;->zzbDM:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
