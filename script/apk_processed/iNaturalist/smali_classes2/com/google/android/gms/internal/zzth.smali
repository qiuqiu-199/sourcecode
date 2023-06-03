.class public final Lcom/google/android/gms/internal/zzth;
.super Ljava/lang/Object;


# static fields
.field static zzabw:Lcom/google/android/gms/internal/zzbay;

.field static zzabx:Ljava/lang/Boolean;

.field static zztX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzth;->zztX:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzak(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsReceiver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zztm;->zza(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsc;->zzan(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p1, "AnalyticsReceiver called with null intent"

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zztd;->zzbS(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Local AnalyticsReceiver got"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zztd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzti;->zzal(Landroid/content/Context;)Z

    move-result p2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/internal/zzth;->zztX:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p2, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/zzbay;

    const/4 v1, 0x1

    const-string v3, "Analytics WakeLock"

    invoke-direct {p2, p1, v1, v3}, Lcom/google/android/gms/internal/zzbay;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object p2, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    sget-object p1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbay;->setReferenceCounted(Z)V

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/zzbay;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zztd;->zzbS(Ljava/lang/String;)V

    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
