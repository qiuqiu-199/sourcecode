.class public Lorg/piwik/sdk/extra/TrackHelper$Download;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Download"
.end annotation


# instance fields
.field private final mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

.field private mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

.field private mExtra:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

.field private mForced:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/extra/DownloadTracker;Lorg/piwik/sdk/extra/TrackHelper;)V
    .locals 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Lorg/piwik/sdk/extra/DownloadTracker$Extra$None;

    invoke-direct {v0}, Lorg/piwik/sdk/extra/DownloadTracker$Extra$None;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mExtra:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mForced:Z

    .line 408
    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    .line 409
    iput-object p2, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

    return-void
.end method


# virtual methods
.method public identifier(Lorg/piwik/sdk/extra/DownloadTracker$Extra;)Lorg/piwik/sdk/extra/TrackHelper$Download;
    .locals 0

    .line 419
    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mExtra:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    return-object p0
.end method

.method public with(Lorg/piwik/sdk/Tracker;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    if-nez v0, :cond_0

    new-instance v0, Lorg/piwik/sdk/extra/DownloadTracker;

    invoke-direct {v0, p1}, Lorg/piwik/sdk/extra/DownloadTracker;-><init>(Lorg/piwik/sdk/Tracker;)V

    iput-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    .line 448
    :cond_0
    iget-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/piwik/sdk/extra/DownloadTracker;->setVersion(Ljava/lang/String;)V

    .line 449
    :cond_1
    iget-boolean p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mForced:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/piwik/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/piwik/sdk/TrackMe;

    iget-object v1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mExtra:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/extra/DownloadTracker;->trackNewAppDownload(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    goto :goto_0

    .line 450
    :cond_2
    iget-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/piwik/sdk/extra/DownloadTracker;

    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/piwik/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/piwik/sdk/TrackMe;

    iget-object v1, p0, Lorg/piwik/sdk/extra/TrackHelper$Download;->mExtra:Lorg/piwik/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {p1, v0, v1}, Lorg/piwik/sdk/extra/DownloadTracker;->trackOnce(Lorg/piwik/sdk/TrackMe;Lorg/piwik/sdk/extra/DownloadTracker$Extra;)V

    :goto_0
    return-void
.end method
