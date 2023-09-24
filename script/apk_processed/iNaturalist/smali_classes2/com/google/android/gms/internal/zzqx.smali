.class public Lcom/google/android/gms/internal/zzqx;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqx$zzd;,
        Lcom/google/android/gms/internal/zzqx$zze;,
        Lcom/google/android/gms/internal/zzqx$zzc;,
        Lcom/google/android/gms/internal/zzqx$zzb;,
        Lcom/google/android/gms/internal/zzqx$zza;
    }
.end annotation


# static fields
.field private static final zzZv:[Ljava/lang/String;

.field private static final zzZw:[Ljava/lang/String;


# instance fields
.field private zzHC:Lcom/google/android/gms/internal/zzhz;

.field private zzIm:Lcom/google/android/gms/internal/zzih;

.field private zzIo:Lcom/google/android/gms/ads/internal/zzf;

.field private zzIp:Lcom/google/android/gms/internal/zzkr;

.field private zzIr:Lcom/google/android/gms/internal/zzif;

.field protected zzIs:Lcom/google/android/gms/internal/zzqw;

.field private zzMh:Lcom/google/android/gms/internal/zzkx;

.field private zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

.field private zzZB:Lcom/google/android/gms/internal/zzqx$zzc;

.field private zzZC:Z

.field private zzZD:Z

.field private zzZE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzZF:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzZG:Z

.field private zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private final zzZI:Lcom/google/android/gms/internal/zzkv;

.field private zzZJ:Lcom/google/android/gms/internal/zzqx$zze;

.field protected zzZK:Lcom/google/android/gms/internal/zzot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzZL:Z

.field private zzZM:Z

.field private zzZN:Z

.field private zzZO:I

.field private final zzZx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzid;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field private zzZz:Lcom/google/android/gms/internal/zzqx$zza;

.field private final zzrJ:Ljava/lang/Object;

.field private zzwe:Z

.field private zzyR:Lcom/google/android/gms/internal/zzdx;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HOST_LOOKUP"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "AUTHENTICATION"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "PROXY_AUTHENTICATION"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "CONNECT"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "IO"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "TIMEOUT"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "REDIRECT_LOOP"

    const/16 v9, 0x8

    aput-object v1, v0, v9

    const-string v1, "UNSUPPORTED_SCHEME"

    const/16 v9, 0x9

    aput-object v1, v0, v9

    const-string v1, "FAILED_SSL_HANDSHAKE"

    const/16 v9, 0xa

    aput-object v1, v0, v9

    const-string v1, "BAD_URL"

    const/16 v9, 0xb

    aput-object v1, v0, v9

    const-string v1, "FILE"

    const/16 v9, 0xc

    aput-object v1, v0, v9

    const-string v1, "FILE_NOT_FOUND"

    const/16 v9, 0xd

    aput-object v1, v0, v9

    const-string v1, "TOO_MANY_REQUESTS"

    const/16 v9, 0xe

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gms/internal/zzqx;->zzZv:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v2

    const-string v1, "EXPIRED"

    aput-object v1, v0, v3

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v4

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v5

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v6

    const-string v1, "INVALID"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/zzqx;->zzZw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzqw;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzkv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzls()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzfv;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzkv;-><init>(Lcom/google/android/gms/internal/zzqw;Landroid/content/Context;Lcom/google/android/gms/internal/zzfv;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzqx;-><init>(Lcom/google/android/gms/internal/zzqw;ZLcom/google/android/gms/internal/zzkv;Lcom/google/android/gms/internal/zzkr;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzqw;ZLcom/google/android/gms/internal/zzkv;Lcom/google/android/gms/internal/zzkr;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZC:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzqx;->zzwe:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqx;->zzZI:Lcom/google/android/gms/internal/zzkv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqx;)Lcom/google/android/gms/internal/zzqx$zzc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzqx;->zzZB:Lcom/google/android/gms/internal/zzqx$zzc;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/internal/zzqx$zzc;)Lcom/google/android/gms/internal/zzqx$zzc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZB:Lcom/google/android/gms/internal/zzqx$zzc;

    return-object p1
.end method

.method private zzbk(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDy:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "host"

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/zzqx;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private static zzi(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private zzlX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqx$zzb;->zzk(Lcom/google/android/gms/internal/zzqw;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "gmsg"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mobileads.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqx;->zzj(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzqx;->zzZL:Z

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzqw;->zzlA()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZM:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqx;->zzlX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzlY()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/zzqx;->zzZv:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzqx;->zzZv:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/zzqx;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzqx;->zzZw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzqx;->zzZw:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzqx;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public final reset()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZz:Lcom/google/android/gms/internal/zzqx$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzHC:Lcom/google/android/gms/internal/zzhz;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZC:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzqx;->zzwe:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZD:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZG:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIr:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZB:Lcom/google/android/gms/internal/zzqx$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkr;->zzs(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzds;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzds;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcR()Lcom/google/android/gms/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdp;->zzew()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdp;->zzex()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    :goto_0
    return-object p1

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v0

    const-string v1, "AdWebViewClient.shouldInterceptRequest"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqx;->zzj(Landroid/net/Uri;)V

    goto/16 :goto_5

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZC:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqx;->zzi(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCw:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->onAdClicked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_8

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzlx()Lcom/google/android/gms/internal/zzaw;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaw;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzax; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzf;->zzcd()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzf;->zzx(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_5

    :cond_8
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :goto_5
    const/4 p1, 0x1

    return p1
.end method

.method public zzO(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZC:Z

    return-void
.end method

.method public zza(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZI:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzkv;->zzf(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzkr;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZD:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlI()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqx;->zzZF:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzhm()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcK()Lcom/google/android/gms/ads/internal/overlay/zzf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlz()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;Lcom/google/android/gms/internal/zzot;)V
    .locals 2
    .param p7    # Lcom/google/android/gms/internal/zzih;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/internal/zzot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p8, v0}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzkr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/zzkr;-><init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzkx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    const-string p10, "/appEvent"

    new-instance v0, Lcom/google/android/gms/internal/zzhy;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzhy;-><init>(Lcom/google/android/gms/internal/zzhz;)V

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/backButton"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHO:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/refresh"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHP:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/canOpenURLs"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHE:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/canOpenIntents"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHF:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/click"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHG:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/close"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHH:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/customClose"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHJ:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/instrument"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHU:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/delayPageLoaded"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHW:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/delayPageClosed"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHX:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/getLocationInfo"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHY:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/httpTrack"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHK:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/log"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHL:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/mraid"

    new-instance v0, Lcom/google/android/gms/internal/zzik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-direct {v0, p8, v1}, Lcom/google/android/gms/internal/zzik;-><init>(Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkr;)V

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/mraidLoaded"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZI:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/open"

    new-instance v0, Lcom/google/android/gms/internal/zzil;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-direct {v0, p6, p8, v1}, Lcom/google/android/gms/internal/zzil;-><init>(Lcom/google/android/gms/internal/zzif;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkr;)V

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/precache"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHT:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/touch"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHN:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/video"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHQ:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/videoMeta"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHR:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string p10, "/appStreaming"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHI:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object p10

    invoke-virtual {p10}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result p10

    if-eqz p10, :cond_1

    const-string p10, "/logScionEvent"

    sget-object v0, Lcom/google/android/gms/internal/zzic;->zzHS:Lcom/google/android/gms/internal/zzid;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_1
    if-eqz p7, :cond_2

    const-string p10, "/setInterstitialProperties"

    new-instance v0, Lcom/google/android/gms/internal/zzig;

    invoke-direct {v0, p7}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzih;)V

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqx;->zzHC:Lcom/google/android/gms/internal/zzhz;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqx;->zzIr:Lcom/google/android/gms/internal/zzif;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzqx;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzqx;->zzMh:Lcom/google/android/gms/internal/zzkx;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqx;->zzIm:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/zzqx;->zzO(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqx$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZz:Lcom/google/android/gms/internal/zzqx$zza;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqx$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZA:Lcom/google/android/gms/internal/zzqx$zzb;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqx$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZB:Lcom/google/android/gms/internal/zzqx$zzc;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqx$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzZJ:Lcom/google/android/gms/internal/zzqx$zze;

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(ZI)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlz()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlz()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzqx$zzd;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/zzqx$zzd;-><init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/zzqx;->zzHC:Lcom/google/android/gms/internal/zzhz;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/zzqx;->zzIr:Lcom/google/android/gms/internal/zzif;

    move-object v2, v13

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILjava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzif;)V

    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlz()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/zzqx;->zzyR:Lcom/google/android/gms/internal/zzdx;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzqx$zzd;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzqx;->zzZy:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/zzqx$zzd;-><init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/zzqx;->zzHC:Lcom/google/android/gms/internal/zzhz;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzqx;->zzZH:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzly()Lcom/google/android/gms/internal/zzqh;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/internal/zzqx;->zzIr:Lcom/google/android/gms/internal/zzif;

    move-object v2, v14

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzif;)V

    invoke-virtual {p0, v14}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzdD()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzwe:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zze(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIp:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzkr;->zze(II)V

    :cond_0
    return-void
.end method

.method public final zzhG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZC:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzwe:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzqx$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzqx$2;-><init>(Lcom/google/android/gms/internal/zzqx;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzj(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZx:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzpo;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzid;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public zzlN()Lcom/google/android/gms/ads/internal/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIo:Lcom/google/android/gms/ads/internal/zzf;

    return-object v0
.end method

.method public zzlO()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZD:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzlP()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzlQ()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZF:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzlR()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZG:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzlS()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Loading blank page in WebView, 2..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZL:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    const-string v2, "about:blank"

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzqw;->zzbi(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzlT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzqx$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzqx$1;-><init>(Lcom/google/android/gms/internal/zzqx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public zzlU()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqx;->zzZG:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZO:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZO:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzlY()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public zzlV()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZO:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZO:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzlY()V

    return-void
.end method

.method public zzlW()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZN:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzlY()V

    return-void
.end method

.method public final zzlY()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZz:Lcom/google/android/gms/internal/zzqx$zza;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZM:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZO:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZN:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZz:Lcom/google/android/gms/internal/zzqx$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqx;->zzZN:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx$zza;->zza(Lcom/google/android/gms/internal/zzqw;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZz:Lcom/google/android/gms/internal/zzqx$zza;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlJ()V

    return-void
.end method

.method public zzlZ()Lcom/google/android/gms/internal/zzqx$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzZJ:Lcom/google/android/gms/internal/zzqx$zze;

    return-object v0
.end method

.method public zzo(Lcom/google/android/gms/internal/zzqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    return-void
.end method
