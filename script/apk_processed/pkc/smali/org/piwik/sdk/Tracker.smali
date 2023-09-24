.class public Lorg/piwik/sdk/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# static fields
.field private static final PATTERN_VISITOR_ID:Ljava/util/regex/Pattern;


# instance fields
.field private final mApiUrl:Ljava/net/URL;

.field private mApplicationDomain:Ljava/lang/String;

.field private final mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

.field private final mDispatcher:Lorg/piwik/sdk/dispatcher/Dispatcher;

.field private mLastEvent:Lorg/piwik/sdk/TrackMe;

.field private final mName:Ljava/lang/String;

.field private mOptOut:Z

.field private final mPiwik:Lorg/piwik/sdk/Piwik;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mRandomAntiCachingValue:Ljava/util/Random;

.field private mSessionStartTime:J

.field private mSessionTimeout:J

.field private final mSiteId:I

.field private final mTrackingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9a-f]{16}$"

    .line 346
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/piwik/sdk/Tracker;->PATTERN_VISITOR_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/piwik/sdk/Piwik;Lorg/piwik/sdk/TrackerConfig;)V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/Tracker;->mTrackingLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/piwik/sdk/Tracker;->mRandomAntiCachingValue:Ljava/util/Random;

    .line 69
    new-instance v0, Lorg/piwik/sdk/TrackMe;

    invoke-direct {v0}, Lorg/piwik/sdk/TrackMe;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    const-wide/32 v0, 0x1b7740

    .line 73
    iput-wide v0, p0, Lorg/piwik/sdk/Tracker;->mSessionTimeout:J

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lorg/piwik/sdk/Tracker;->mSessionStartTime:J

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/piwik/sdk/Tracker;->mOptOut:Z

    .line 86
    iput-object p1, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    .line 87
    invoke-virtual {p2}, Lorg/piwik/sdk/TrackerConfig;->getApiUrl()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/piwik/sdk/Tracker;->mApiUrl:Ljava/net/URL;

    .line 88
    invoke-virtual {p2}, Lorg/piwik/sdk/TrackerConfig;->getSiteId()I

    move-result v1

    iput v1, p0, Lorg/piwik/sdk/Tracker;->mSiteId:I

    .line 89
    invoke-virtual {p2}, Lorg/piwik/sdk/TrackerConfig;->getTrackerName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/piwik/sdk/Tracker;->mName:Ljava/lang/String;

    .line 91
    new-instance p2, Lorg/piwik/sdk/LegacySettingsPorter;

    invoke-direct {p2, p1}, Lorg/piwik/sdk/LegacySettingsPorter;-><init>(Lorg/piwik/sdk/Piwik;)V

    invoke-virtual {p2, p0}, Lorg/piwik/sdk/LegacySettingsPorter;->port(Lorg/piwik/sdk/Tracker;)V

    .line 93
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "tracker.optout"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/piwik/sdk/Tracker;->mOptOut:Z

    .line 95
    invoke-virtual {p1}, Lorg/piwik/sdk/Piwik;->getDispatcherFactory()Lorg/piwik/sdk/dispatcher/DispatcherFactory;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/piwik/sdk/dispatcher/DispatcherFactory;->build(Lorg/piwik/sdk/Tracker;)Lorg/piwik/sdk/dispatcher/Dispatcher;

    move-result-object p1

    iput-object p1, p0, Lorg/piwik/sdk/Tracker;->mDispatcher:Lorg/piwik/sdk/dispatcher/Dispatcher;

    .line 96
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "tracker.userid"

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "tracker.userid"

    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    :cond_0
    iget-object p2, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p2, v2, p1}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 103
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object p2, Lorg/piwik/sdk/QueryParams;->SESSION_START:Lorg/piwik/sdk/QueryParams;

    const-string v2, "1"

    invoke-virtual {p1, p2, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    const-string p1, "unknown"

    .line 106
    iget-object p2, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    invoke-virtual {p2}, Lorg/piwik/sdk/Piwik;->getDeviceHelper()Lorg/piwik/sdk/tools/DeviceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/piwik/sdk/tools/DeviceHelper;->getResolution()[I

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p1, "%sx%s"

    const/4 v2, 0x2

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_1
    iget-object p2, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v0, Lorg/piwik/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p2, v0, p1}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 110
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object p2, Lorg/piwik/sdk/QueryParams;->USER_AGENT:Lorg/piwik/sdk/QueryParams;

    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    invoke-virtual {v0}, Lorg/piwik/sdk/Piwik;->getDeviceHelper()Lorg/piwik/sdk/tools/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/piwik/sdk/tools/DeviceHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 111
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object p2, Lorg/piwik/sdk/QueryParams;->LANGUAGE:Lorg/piwik/sdk/QueryParams;

    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    invoke-virtual {v0}, Lorg/piwik/sdk/Piwik;->getDeviceHelper()Lorg/piwik/sdk/tools/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/piwik/sdk/tools/DeviceHelper;->getUserLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 112
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object p2, Lorg/piwik/sdk/QueryParams;->VISITOR_ID:Lorg/piwik/sdk/QueryParams;

    invoke-static {}, Lorg/piwik/sdk/Tracker;->makeRandomVisitorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 113
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object p2, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getApplicationBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/piwik/sdk/Tracker;->fixUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    return-void
.end method

.method private static fixUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "http://"

    .line 445
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "/"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private injectBaseParams(Lorg/piwik/sdk/TrackMe;)V
    .locals 4

    .line 415
    sget-object v0, Lorg/piwik/sdk/QueryParams;->SITE_ID:Lorg/piwik/sdk/QueryParams;

    iget v1, p0, Lorg/piwik/sdk/Tracker;->mSiteId:I

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;I)Lorg/piwik/sdk/TrackMe;

    .line 416
    sget-object v0, Lorg/piwik/sdk/QueryParams;->RECORD:Lorg/piwik/sdk/QueryParams;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 417
    sget-object v0, Lorg/piwik/sdk/QueryParams;->API_VERSION:Lorg/piwik/sdk/QueryParams;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 418
    sget-object v0, Lorg/piwik/sdk/QueryParams;->RANDOM_NUMBER:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mRandomAntiCachingValue:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;I)Lorg/piwik/sdk/TrackMe;

    .line 419
    sget-object v0, Lorg/piwik/sdk/QueryParams;->DATETIME_OF_REQUEST:Lorg/piwik/sdk/QueryParams;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 420
    sget-object v0, Lorg/piwik/sdk/QueryParams;->SEND_IMAGE:Lorg/piwik/sdk/QueryParams;

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 422
    sget-object v0, Lorg/piwik/sdk/QueryParams;->VISITOR_ID:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->VISITOR_ID:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 423
    sget-object v0, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 425
    sget-object v0, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p1, v0}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v1, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v0, v1}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getApplicationBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/piwik/sdk/Tracker;->fixUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 432
    :goto_0
    sget-object v1, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p1, v1, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 434
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mLastEvent:Lorg/piwik/sdk/TrackMe;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {p1, v0}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mLastEvent:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/piwik/sdk/tools/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    :cond_1
    sget-object v0, Lorg/piwik/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 437
    sget-object v0, Lorg/piwik/sdk/QueryParams;->USER_AGENT:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->USER_AGENT:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 438
    sget-object v0, Lorg/piwik/sdk/QueryParams;->LANGUAGE:Lorg/piwik/sdk/QueryParams;

    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v2, Lorg/piwik/sdk/QueryParams;->LANGUAGE:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    :cond_2
    return-void
.end method

.method private injectInitialParams(Lorg/piwik/sdk/TrackMe;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 381
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    monitor-enter v3

    const-wide/16 v4, 0x1

    .line 382
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "tracker.visitcount"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v8, 0x0

    add-long v8, v6, v4

    .line 383
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "tracker.visitcount"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 386
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    monitor-enter v4

    .line 387
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "tracker.firstvisit"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v3, v10, v6

    const-wide/16 v12, 0x3e8

    if-nez v3, :cond_0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v12

    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "tracker.firstvisit"

    invoke-interface {v3, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    monitor-enter v3

    .line 395
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "tracker.previousvisit"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "tracker.previousvisit"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v12, v16, v12

    invoke-interface {v14, v15, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    iget-object v3, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v12, Lorg/piwik/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v3, v12, v10, v11}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;J)Lorg/piwik/sdk/TrackMe;

    .line 401
    iget-object v3, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v10, Lorg/piwik/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v3, v10, v8, v9}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;J)Lorg/piwik/sdk/TrackMe;

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 403
    iget-object v3, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v6, Lorg/piwik/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v3, v6, v4, v5}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;J)Lorg/piwik/sdk/TrackMe;

    .line 405
    :cond_1
    sget-object v3, Lorg/piwik/sdk/QueryParams;->SESSION_START:Lorg/piwik/sdk/QueryParams;

    iget-object v4, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v5, Lorg/piwik/sdk/QueryParams;->SESSION_START:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 406
    sget-object v3, Lorg/piwik/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    iget-object v4, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v5, Lorg/piwik/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 407
    sget-object v3, Lorg/piwik/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

    iget-object v4, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v5, Lorg/piwik/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 408
    sget-object v3, Lorg/piwik/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    iget-object v4, v1, Lorg/piwik/sdk/Tracker;->mDefaultTrackMe:Lorg/piwik/sdk/TrackMe;

    sget-object v5, Lorg/piwik/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v4, v5}, Lorg/piwik/sdk/TrackMe;->get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 397
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 392
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 384
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public static makeRandomVisitorId()Ljava/lang/String;
    .locals 3

    .line 476
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 490
    :cond_1
    check-cast p1, Lorg/piwik/sdk/Tracker;

    .line 492
    iget v1, p0, Lorg/piwik/sdk/Tracker;->mSiteId:I

    iget v2, p1, Lorg/piwik/sdk/Tracker;->mSiteId:I

    if-eq v1, v2, :cond_2

    return v0

    .line 493
    :cond_2
    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mApiUrl:Ljava/net/URL;

    iget-object v2, p1, Lorg/piwik/sdk/Tracker;->mApiUrl:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 494
    :cond_3
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mName:Ljava/lang/String;

    iget-object p1, p1, Lorg/piwik/sdk/Tracker;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getAPIUrl()Ljava/net/URL;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mApiUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getApplicationBaseURL()Ljava/lang/String;
    .locals 4

    const-string v0, "http://%s"

    const/4 v1, 0x1

    .line 507
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getApplicationDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationDomain()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mApplicationDomain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mApplicationDomain:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    invoke-virtual {v0}, Lorg/piwik/sdk/Piwik;->getApplicationDomain()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineCacheAge()J
    .locals 4

    .line 254
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tracker.cache.age"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOfflineCacheSize()J
    .locals 4

    .line 278
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tracker.cache.size"

    const-wide/32 v2, 0x400000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPiwik()Lorg/piwik/sdk/Piwik;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPiwik:Lorg/piwik/sdk/Piwik;

    invoke-virtual {v0, p0}, Lorg/piwik/sdk/Piwik;->getTrackerPreferences(Lorg/piwik/sdk/Tracker;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/piwik/sdk/Tracker;->mPreferences:Landroid/content/SharedPreferences;

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mApiUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget v1, p0, Lorg/piwik/sdk/Tracker;->mSiteId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget-object v1, p0, Lorg/piwik/sdk/Tracker;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDispatchInterval(J)Lorg/piwik/sdk/Tracker;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mDispatcher:Lorg/piwik/sdk/dispatcher/Dispatcher;

    invoke-interface {v0, p1, p2}, Lorg/piwik/sdk/dispatcher/Dispatcher;->setDispatchInterval(J)V

    return-object p0
.end method

.method public setOptOut(Z)V
    .locals 2

    .line 123
    iput-boolean p1, p0, Lorg/piwik/sdk/Tracker;->mOptOut:Z

    .line 124
    invoke-virtual {p0}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tracker.optout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    iget-object p1, p0, Lorg/piwik/sdk/Tracker;->mDispatcher:Lorg/piwik/sdk/dispatcher/Dispatcher;

    invoke-interface {p1}, Lorg/piwik/sdk/dispatcher/Dispatcher;->clear()V

    return-void
.end method

.method public track(Lorg/piwik/sdk/TrackMe;)Lorg/piwik/sdk/Tracker;
    .locals 7

    .line 453
    iget-object v0, p0, Lorg/piwik/sdk/Tracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/piwik/sdk/Tracker;->mSessionStartTime:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-wide v1, p0, Lorg/piwik/sdk/Tracker;->mSessionTimeout:J

    cmp-long v3, v5, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/piwik/sdk/Tracker;->mSessionStartTime:J

    .line 458
    invoke-direct {p0, p1}, Lorg/piwik/sdk/Tracker;->injectInitialParams(Lorg/piwik/sdk/TrackMe;)V

    .line 461
    :cond_1
    invoke-direct {p0, p1}, Lorg/piwik/sdk/Tracker;->injectBaseParams(Lorg/piwik/sdk/TrackMe;)V

    .line 463
    iput-object p1, p0, Lorg/piwik/sdk/Tracker;->mLastEvent:Lorg/piwik/sdk/TrackMe;

    .line 464
    iget-boolean v3, p0, Lorg/piwik/sdk/Tracker;->mOptOut:Z

    if-nez v3, :cond_2

    .line 465
    iget-object v3, p0, Lorg/piwik/sdk/Tracker;->mDispatcher:Lorg/piwik/sdk/dispatcher/Dispatcher;

    invoke-interface {v3, p1}, Lorg/piwik/sdk/dispatcher/Dispatcher;->submit(Lorg/piwik/sdk/TrackMe;)V

    const-string v3, "PIWIK:Tracker"

    .line 466
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Event added to the queue: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v3, "PIWIK:Tracker"

    .line 468
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Event omitted due to opt out: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 472
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
