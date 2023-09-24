.class abstract Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEvent"
.end annotation


# instance fields
.field private final mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/extra/TrackHelper;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;->mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

    return-void
.end method


# virtual methods
.method public abstract build()Lorg/piwik/sdk/TrackMe;
.end method

.method getBaseTrackMe()Lorg/piwik/sdk/TrackMe;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;->mBaseBuilder:Lorg/piwik/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/piwik/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/piwik/sdk/TrackMe;

    return-object v0
.end method

.method public with(Lorg/piwik/sdk/Tracker;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;->build()Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lorg/piwik/sdk/Tracker;->track(Lorg/piwik/sdk/TrackMe;)Lorg/piwik/sdk/Tracker;

    return-void
.end method
