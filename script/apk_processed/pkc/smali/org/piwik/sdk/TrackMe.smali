.class public Lorg/piwik/sdk/TrackMe;
.super Ljava/lang/Object;
.source "TrackMe.java"


# instance fields
.field private final mQueryParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/piwik/sdk/TrackMe;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    .line 27
    iget-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lorg/piwik/sdk/QueryParams;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/piwik/sdk/QueryParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized has(Lorg/piwik/sdk/QueryParams;)Z
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/piwik/sdk/QueryParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 42
    :try_start_0
    iget-object p2, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p0

    .line 41
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lorg/piwik/sdk/QueryParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/TrackMe;->set(Ljava/lang/String;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/piwik/sdk/TrackMe;->mQueryParams:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trySet(Lorg/piwik/sdk/QueryParams;I)Lorg/piwik/sdk/TrackMe;
    .locals 0

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trySet(Lorg/piwik/sdk/QueryParams;J)Lorg/piwik/sdk/TrackMe;
    .locals 0

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/TrackMe;->trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trySet(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/piwik/sdk/TrackMe;->has(Lorg/piwik/sdk/QueryParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method
