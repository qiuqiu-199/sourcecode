.class public Lorg/piwik/sdk/Piwik;
.super Ljava/lang/Object;
.source "Piwik.java"


# static fields
.field private static sInstance:Lorg/piwik/sdk/Piwik;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mBasePreferences:Landroid/content/SharedPreferences;

.field private final mContext:Landroid/content/Context;

.field private mDispatcherFactory:Lorg/piwik/sdk/dispatcher/DispatcherFactory;

.field private final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/piwik/sdk/Tracker;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/Piwik;->mPreferenceMap:Ljava/util/Map;

    .line 38
    new-instance v0, Lorg/piwik/sdk/dispatcher/DefaultDispatcherFactory;

    invoke-direct {v0}, Lorg/piwik/sdk/dispatcher/DefaultDispatcherFactory;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/Piwik;->mDispatcherFactory:Lorg/piwik/sdk/dispatcher/DispatcherFactory;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/piwik/sdk/Piwik;->mContext:Landroid/content/Context;

    const-string v0, "org.piwik.sdk"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/piwik/sdk/Piwik;->mBasePreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/piwik/sdk/Piwik;
    .locals 3

    const-class v0, Lorg/piwik/sdk/Piwik;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lorg/piwik/sdk/Piwik;->sInstance:Lorg/piwik/sdk/Piwik;

    if-nez v1, :cond_1

    .line 42
    const-class v1, Lorg/piwik/sdk/Piwik;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v2, Lorg/piwik/sdk/Piwik;->sInstance:Lorg/piwik/sdk/Piwik;

    if-nez v2, :cond_0

    new-instance v2, Lorg/piwik/sdk/Piwik;

    invoke-direct {v2, p0}, Lorg/piwik/sdk/Piwik;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/piwik/sdk/Piwik;->sInstance:Lorg/piwik/sdk/Piwik;

    .line 44
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lorg/piwik/sdk/Piwik;->sInstance:Lorg/piwik/sdk/Piwik;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 40
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getApplicationDomain()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/piwik/sdk/Piwik;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDeviceHelper()Lorg/piwik/sdk/tools/DeviceHelper;
    .locals 4

    .line 111
    new-instance v0, Lorg/piwik/sdk/tools/DeviceHelper;

    iget-object v1, p0, Lorg/piwik/sdk/Piwik;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/piwik/sdk/tools/PropertySource;

    invoke-direct {v2}, Lorg/piwik/sdk/tools/PropertySource;-><init>()V

    new-instance v3, Lorg/piwik/sdk/tools/BuildInfo;

    invoke-direct {v3}, Lorg/piwik/sdk/tools/BuildInfo;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/piwik/sdk/tools/DeviceHelper;-><init>(Landroid/content/Context;Lorg/piwik/sdk/tools/PropertySource;Lorg/piwik/sdk/tools/BuildInfo;)V

    return-object v0
.end method

.method public getDispatcherFactory()Lorg/piwik/sdk/dispatcher/DispatcherFactory;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/piwik/sdk/Piwik;->mDispatcherFactory:Lorg/piwik/sdk/dispatcher/DispatcherFactory;

    return-object v0
.end method

.method public getPiwikPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/piwik/sdk/Piwik;->mBasePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTrackerPreferences(Lorg/piwik/sdk/Tracker;)Landroid/content/SharedPreferences;
    .locals 4

    .line 82
    iget-object v0, p0, Lorg/piwik/sdk/Piwik;->mPreferenceMap:Ljava/util/Map;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/piwik/sdk/Piwik;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 87
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.piwik.sdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/piwik/sdk/tools/Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "PIWIK"

    .line 89
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.piwik.sdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    invoke-virtual {p0}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lorg/piwik/sdk/Piwik;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized newTracker(Lorg/piwik/sdk/TrackerConfig;)Lorg/piwik/sdk/Tracker;
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v0, Lorg/piwik/sdk/Tracker;

    invoke-direct {v0, p0, p1}, Lorg/piwik/sdk/Tracker;-><init>(Lorg/piwik/sdk/Piwik;Lorg/piwik/sdk/TrackerConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
