.class public Lcom/google/android/gms/analytics/Tracker;
.super Lcom/google/android/gms/internal/zzsa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Tracker$zza;
    }
.end annotation


# instance fields
.field private final zzFP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzacs:Z

.field private final zzact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzacu:Lcom/google/android/gms/internal/zztb;

.field private final zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

.field private zzacw:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private zzacx:Lcom/google/android/gms/internal/zztl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsc;Ljava/lang/String;Lcom/google/android/gms/internal/zztb;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string/jumbo v0, "useSecure"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string v0, "&a"

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zztb;

    const-string/jumbo p3, "tracking"

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/zztb;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzacu:Lcom/google/android/gms/internal/zztb;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzacu:Lcom/google/android/gms/internal/zztb;

    :goto_0
    new-instance p2, Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;-><init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/internal/zzsc;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

    return-object p0
.end method

.method private static zza(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzrx;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznY()Lcom/google/android/gms/internal/zzrx;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzb(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzsh;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzb(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzss;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzoa()Lcom/google/android/gms/internal/zzss;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzss;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzoa()Lcom/google/android/gms/internal/zzss;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zztb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacu:Lcom/google/android/gms/internal/zztb;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zztd;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zztd;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzry;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zzry;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/zztl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    return-object p0
.end method

.method private zzmT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacw:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static zzq(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacs:Z

    return-void
.end method

.method public enableAutoActivityTracking(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;->enableAutoActivityTracking(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmT()Z

    move-result v0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacw:Lcom/google/android/gms/analytics/ExceptionReporter;

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacw:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will be reported to Google Analytics"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->zzbP(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacw:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/ExceptionReporter;->zzmv()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will not be reported to Google Analytics"

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzob()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "&ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zztm;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "&cid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznX()Lcom/google/android/gms/internal/zzsk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsk;->zzoQ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "&sr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzoa()Lcom/google/android/gms/internal/zzss;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzss;->zzpC()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "&aid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh;->zzoy()Lcom/google/android/gms/internal/zzrk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrk;->zzke()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "&an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh;->zzoy()Lcom/google/android/gms/internal/zzrk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrk;->zzmY()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "&av"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh;->zzoy()Lcom/google/android/gms/internal/zzrk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrk;->zzmZ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "&aiid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsh;->zzoy()Lcom/google/android/gms/internal/zzrk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrk;->zzna()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1
.end method

.method public send(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmu()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppOptOut is set to true. Not sending Google Analytics hit"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->zzbQ(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmu()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->zzb(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p1, v3}, Lcom/google/android/gms/analytics/Tracker;->zzb(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string/jumbo v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztm;->zzg(Ljava/lang/String;Z)Z

    move-result v9

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    invoke-static {p1, v3}, Lcom/google/android/gms/analytics/Tracker;->zzc(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const-string p1, "t"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object p1

    const-string v0, "Missing hit type parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/zztd;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo p1, "tid"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object p1

    const-string v0, "Missing tracking id parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/zztd;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmU()Z

    move-result v4

    monitor-enter p0

    :try_start_0
    const-string p1, "screenview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "pageview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "appview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string v1, "&a"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    const v1, 0x7fffffff

    if-lt p1, v1, :cond_4

    const/4 p1, 0x1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    const-string v1, "&a"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/Tracker$1;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/analytics/Tracker$1;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzFP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 1

    const-string v0, "&aip"

    invoke-static {p1}, Lcom/google/android/gms/internal/zztm;->zzX(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aiid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&an"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&av"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCampaignParamsOnNextHit(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http://hostname/?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "utm_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&ci"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "anid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&anid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string/jumbo v0, "utm_campaign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&cn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string/jumbo v0, "utm_content"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&cc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v0, "utm_medium"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&cm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string/jumbo v0, "utm_source"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&cs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string/jumbo v0, "utm_term"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&ck"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "dclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&dclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "gclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v2, "&gclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "aclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzact:Ljava/util/Map;

    const-string v1, "&aclid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_1
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&de"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dh"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&ul"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dl"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dr"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .locals 1

    const-string v0, "&sf"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&sd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const-string p1, "Invalid width or height. The values should be non-negative."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->zzbS(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "&sr"

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/Tracker$zza;->setSessionTimeout(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dt"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .locals 1

    const-string/jumbo v0, "useSecure"

    invoke-static {p1}, Lcom/google/android/gms/internal/zztm;->zzX(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&vp"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zztl;)V
    .locals 2

    const-string v0, "Loading Tracker config values"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->zzbP(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqs()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->getTrackingId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "&tid"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "trackingId loaded"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqu()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&sf"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sample frequency loaded"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqv()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->getSessionTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    const-string v0, "Session timeout loaded"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqw()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqx()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    const-string v0, "Auto activity tracking loaded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqy()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqz()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "Anonymize ip loaded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzacx:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztl;->zzqA()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method

.method protected zzmS()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacv:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$zza;->initialize()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmB()Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzmY()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "&an"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->zzmB()Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzmZ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "&av"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method zzmU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzacs:Z

    return v0
.end method
