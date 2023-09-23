.class public Lorg/piwik/sdk/TrackerConfig;
.super Ljava/lang/Object;
.source "TrackerConfig.java"


# instance fields
.field private final mApiUrl:Ljava/net/URL;

.field private final mSiteId:I

.field private final mTrackerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "piwik.php"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "piwik-proxy.php"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "piwik.php"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    iput p2, p0, Lorg/piwik/sdk/TrackerConfig;->mSiteId:I

    .line 41
    iput-object p3, p0, Lorg/piwik/sdk/TrackerConfig;->mTrackerName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    check-cast p1, Lorg/piwik/sdk/TrackerConfig;

    .line 63
    iget v2, p0, Lorg/piwik/sdk/TrackerConfig;->mSiteId:I

    iget v3, p1, Lorg/piwik/sdk/TrackerConfig;->mSiteId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;

    iget-object v3, p1, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/piwik/sdk/TrackerConfig;->mTrackerName:Ljava/lang/String;

    iget-object p1, p1, Lorg/piwik/sdk/TrackerConfig;->mTrackerName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getApiUrl()Ljava/net/URL;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getSiteId()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/piwik/sdk/TrackerConfig;->mSiteId:I

    return v0
.end method

.method public getTrackerName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/piwik/sdk/TrackerConfig;->mTrackerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/piwik/sdk/TrackerConfig;->mApiUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget v1, p0, Lorg/piwik/sdk/TrackerConfig;->mSiteId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lorg/piwik/sdk/TrackerConfig;->mTrackerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
