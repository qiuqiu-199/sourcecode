.class public Lorg/piwik/sdk/extra/DownloadTracker;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/piwik/sdk/extra/DownloadTracker$Extra;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInternalTracking:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private final mPkgInfo:Landroid/content/pm/PackageInfo;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mTrackOnceLock:Ljava/lang/Object;

.field private final mTracker:Lorg/piwik/sdk/Tracker;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/piwik/sdk/Tracker;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object v0

    invoke-virtual {v0}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/piwik/sdk/extra/DownloadTracker;->getOurPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/piwik/sdk/extra/DownloadTracker;-><init>(Lorg/piwik/sdk/Tracker;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/piwik/sdk/Tracker;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mTrackOnceLock:Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mTracker:Lorg/piwik/sdk/Tracker;

    .line 132
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object v0

    invoke-virtual {v0}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    .line 134
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object p1

    invoke-virtual {p1}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    .line 135
    iput-object p2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 136
    iget-object p1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mInternalTracking:Z

    return-void
.end method

.method private static getOurPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PIWIK:DownloadTrackingHelper"

    .line 125
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private trackNewAppDownloadInternal(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V
    .locals 5

    const-string v0, "PIWIK:DownloadTrackingHelper"

    .line 174
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v1, "Tracking app download..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/piwik/sdk/extra/DownloadTracker;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p2}, Lorg/piwik/sdk/extra/DownloadTracker$Extra;->buildExtraIdentifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "/"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    iget-object p2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "com.android.vending"

    .line 187
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mTracker:Lorg/piwik/sdk/Tracker;

    invoke-virtual {v1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object v1

    invoke-virtual {v1}, Lorg/piwik/sdk/Piwik;->getPiwikPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "referrer.extras"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/?"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 195
    :cond_3
    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mTracker:Lorg/piwik/sdk/Tracker;

    sget-object v3, Lorg/piwik/sdk/QueryParams;->EVENT_CATEGORY:Lorg/piwik/sdk/QueryParams;

    const-string v4, "Application"

    .line 196
    invoke-virtual {p1, v3, v4}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    sget-object v3, Lorg/piwik/sdk/QueryParams;->EVENT_ACTION:Lorg/piwik/sdk/QueryParams;

    const-string v4, "downloaded"

    .line 197
    invoke-virtual {p1, v3, v4}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    sget-object v3, Lorg/piwik/sdk/QueryParams;->ACTION_NAME:Lorg/piwik/sdk/QueryParams;

    const-string v4, "application/downloaded"

    .line 198
    invoke-virtual {p1, v3, v4}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    sget-object v3, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    const-string v4, "/application/downloaded"

    .line 199
    invoke-virtual {p1, v3, v4}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    sget-object v3, Lorg/piwik/sdk/QueryParams;->DOWNLOAD:Lorg/piwik/sdk/QueryParams;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    sget-object v0, Lorg/piwik/sdk/QueryParams;->REFERRER:Lorg/piwik/sdk/QueryParams;

    .line 201
    invoke-virtual {p1, v0, p2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Lorg/piwik/sdk/Tracker;->track(Lorg/piwik/sdk/TrackMe;)Lorg/piwik/sdk/Tracker;

    const-string p1, "PIWIK:DownloadTrackingHelper"

    .line 203
    invoke-static {p1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const-string p2, "... app download tracked."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mVersion:Ljava/lang/String;

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$trackNewAppDownload$0$DownloadTracker(ZLorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xbb8

    .line 166
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ContentValues"

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 167
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lorg/piwik/sdk/extra/DownloadTracker;->trackNewAppDownloadInternal(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public trackNewAppDownload(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V
    .locals 4

    .line 160
    iget-boolean v0, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mInternalTracking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    iget-object v2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "PIWIK:DownloadTrackingHelper"

    .line 163
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Google Play is install source, deferring tracking."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/piwik/sdk/extra/DownloadTracker$$Lambda$0;-><init>(Lorg/piwik/sdk/extra/DownloadTracker;ZLorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    if-nez v0, :cond_2

    .line 169
    invoke-interface {p2}, Lorg/piwik/sdk/extra/DownloadTracker$Extra;->isIntensiveWork()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method public trackOnce(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/piwik/sdk/extra/DownloadTracker;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mTrackOnceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lorg/piwik/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/extra/DownloadTracker;->trackNewAppDownload(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    .line 155
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
