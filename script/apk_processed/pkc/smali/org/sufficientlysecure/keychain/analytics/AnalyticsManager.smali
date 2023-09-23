.class public Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private piwikTracker:Lorg/piwik/sdk/Tracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->refreshSettings(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)Lorg/piwik/sdk/Tracker;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;
    .locals 4

    move-object/16 v1, p0

    .line 28
    new-instance v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;-><init>(Landroid/content/Context;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private shouldEnableAnalytics(Landroid/content/Context;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 177
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->isAnalyticsHasConsent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getUseTorProxy()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->shouldEnableAnalytics(Landroid/content/Context;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public initialize(Landroid/app/Application;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 36
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/piwik/sdk/extra/TrackHelper;->download()Lorg/piwik/sdk/extra/TrackHelper$Download;

    move-result-object v0

    new-instance v1, Lorg/piwik/sdk/extra/DownloadTracker$Extra$ApkChecksum;

    invoke-direct {v1, v3}, Lorg/piwik/sdk/extra/DownloadTracker$Extra$ApkChecksum;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/piwik/sdk/extra/TrackHelper$Download;->identifier(Lorg/piwik/sdk/extra/DownloadTracker$Extra;)Lorg/piwik/sdk/extra/TrackHelper$Download;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v0, v1}, Lorg/piwik/sdk/extra/TrackHelper$Download;->with(Lorg/piwik/sdk/Tracker;)V

    .line 40
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;-><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->initialize(Landroid/app/Application;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 86
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "keyServers"

    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "Tracking pref %s"

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "keyServers"

    const-string v0, "hkps://keyserver.ubuntu.com,hkps://hkps.pool.sks-keyservers.net;hkp://jirk5u4osbsr34t5.onion,hkps://pgp.mit.edu"

    .line 93
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyserver.ubuntu.com"

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "ubuntu"

    goto :goto_0

    :cond_1
    const-string v5, "pgp.mit.edu"

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "mit"

    goto :goto_0

    :cond_2
    const-string v5, "pool.sks-keyservers.net"

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "pool"

    goto :goto_0

    :cond_3
    const-string v4, "custom"

    .line 106
    :goto_0
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v5

    const-string v0, "pref_keyServers"

    invoke-virtual {v5, v0, v4}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v4

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    :cond_4
    const-string v0, "theme"

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v5, "theme"

    const-string v0, "empty"

    .line 111
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v5

    const-string v0, "pref_theme"

    invoke-virtual {v5, v0, v4}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v4

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    .line 116
    :cond_5
    sget-object v0, Lorg/sufficientlysecure/keychain/Constants$Pref;->ANALYTICS_PREFS:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Tracking pref %s"

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "empty"

    invoke-virtual {v4, v5, v0}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v4

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    .line 122
    :cond_6
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 123
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    const-string v4, "true"

    goto :goto_1

    :cond_7
    const-string v4, "false"

    :goto_1
    invoke-virtual {v0, v5, v4}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v4

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    :cond_8
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public declared-synchronized refreshSettings(Landroid/content/Context;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    monitor-enter v5

    .line 156
    :try_start_0
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->shouldEnableAnalytics(Landroid/content/Context;)Z

    move-result v0

    .line 157
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Lorg/piwik/sdk/TrackerConfig;

    const-string v1, "https://piwik.openkeychain.org/"

    const/4 v3, 0x2

    const-string v4, "OpenKeychain"

    invoke-direct {v0, v1, v3, v4}, Lorg/piwik/sdk/TrackerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    invoke-static {v6}, Lorg/piwik/sdk/Piwik;->getInstance(Landroid/content/Context;)Lorg/piwik/sdk/Piwik;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/piwik/sdk/Piwik;->newTracker(Lorg/piwik/sdk/TrackerConfig;)Lorg/piwik/sdk/Tracker;

    move-result-object v6

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    .line 167
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    const-wide/32 v0, 0xea60

    invoke-virtual {v6, v0, v1}, Lorg/piwik/sdk/Tracker;->setDispatchInterval(J)Lorg/piwik/sdk/Tracker;

    .line 168
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v6, v2}, Lorg/piwik/sdk/Tracker;->setOptOut(Z)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v6, v3}, Lorg/piwik/sdk/Tracker;->setOptOut(Z)V

    const/4 v6, 0x0

    .line 171
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_2
    :goto_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v6

    .line 155
    monitor-exit v5

    throw v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->refreshSettings(Landroid/content/Context;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public trackApiServiceCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 145
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    const-string v1, "externalApiCall"

    .line 150
    invoke-virtual {v0, v1, v3}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v3

    const-string v0, "."

    const-string v1, "/"

    .line 151
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->piece(Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v3

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    .line 152
    invoke-virtual {v3, v4}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->trackApiServiceCall(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public trackFragmentImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 128
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/piwik/sdk/extra/TrackHelper;->screen(Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$Screen;

    move-result-object v3

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v3, v4}, Lorg/piwik/sdk/extra/TrackHelper$Screen;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->trackFragmentImpression(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public trackInternalServiceCall(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 136
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    const-string v1, "internalApiCall"

    .line 140
    invoke-virtual {v0, v1, v3}, Lorg/piwik/sdk/extra/TrackHelper;->interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->piwikTracker:Lorg/piwik/sdk/Tracker;

    .line 141
    invoke-virtual {v3, v0}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;--->trackInternalServiceCall(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
