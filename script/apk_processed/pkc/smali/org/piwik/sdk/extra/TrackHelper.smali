.class public Lorg/piwik/sdk/extra/TrackHelper;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;,
        Lorg/piwik/sdk/extra/TrackHelper$Download;,
        Lorg/piwik/sdk/extra/TrackHelper$Screen;,
        Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;
    }
.end annotation


# instance fields
.field protected final mBaseTrackMe:Lorg/piwik/sdk/TrackMe;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lorg/piwik/sdk/extra/TrackHelper;-><init>(Lorg/piwik/sdk/TrackMe;)V

    return-void
.end method

.method private constructor <init>(Lorg/piwik/sdk/TrackMe;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lorg/piwik/sdk/TrackMe;

    invoke-direct {p1}, Lorg/piwik/sdk/TrackMe;-><init>()V

    .line 34
    :cond_0
    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/piwik/sdk/TrackMe;

    return-void
.end method

.method public static track()Lorg/piwik/sdk/extra/TrackHelper;
    .locals 1

    .line 38
    new-instance v0, Lorg/piwik/sdk/extra/TrackHelper;

    invoke-direct {v0}, Lorg/piwik/sdk/extra/TrackHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public download()Lorg/piwik/sdk/extra/TrackHelper$Download;
    .locals 2

    .line 397
    new-instance v0, Lorg/piwik/sdk/extra/TrackHelper$Download;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/piwik/sdk/extra/TrackHelper$Download;-><init>(Lorg/piwik/sdk/extra/DownloadTracker;Lorg/piwik/sdk/extra/TrackHelper;)V

    return-object v0
.end method

.method public interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;
    .locals 1

    .line 510
    new-instance v0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;

    invoke-direct {v0, p0, p1, p2}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;-><init>(Lorg/piwik/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public screen(Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$Screen;
    .locals 1

    .line 100
    new-instance v0, Lorg/piwik/sdk/extra/TrackHelper$Screen;

    invoke-direct {v0, p0, p1}, Lorg/piwik/sdk/extra/TrackHelper$Screen;-><init>(Lorg/piwik/sdk/extra/TrackHelper;Ljava/lang/String;)V

    return-object v0
.end method
