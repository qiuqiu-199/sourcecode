.class public Lorg/piwik/sdk/dispatcher/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field private final mEventCount:I

.field private final mPostData:Lorg/json/JSONObject;

.field private final mTargetURL:Ljava/net/URL;

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lorg/piwik/sdk/dispatcher/Packet;-><init>(Ljava/net/URL;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lorg/json/JSONObject;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/piwik/sdk/dispatcher/Packet;->mTargetURL:Ljava/net/URL;

    .line 40
    iput-object p2, p0, Lorg/piwik/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    .line 41
    iput p3, p0, Lorg/piwik/sdk/dispatcher/Packet;->mEventCount:I

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/piwik/sdk/dispatcher/Packet;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getEventCount()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/piwik/sdk/dispatcher/Packet;->mEventCount:I

    return v0
.end method

.method public getPostData()Lorg/json/JSONObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/Packet;->mPostData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/Packet;->mTargetURL:Ljava/net/URL;

    return-object v0
.end method
