.class public Lorg/piwik/sdk/dispatcher/PacketFactory;
.super Ljava/lang/Object;
.source "PacketFactory.java"


# instance fields
.field private final mApiUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/piwik/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/net/URL;

    return-void
.end method

.method private buildPacketForGet(Lorg/piwik/sdk/dispatcher/Event;)Lorg/piwik/sdk/dispatcher/Packet;
    .locals 5

    .line 83
    invoke-virtual {p1}, Lorg/piwik/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Lorg/piwik/sdk/dispatcher/Packet;

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/piwik/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/piwik/sdk/dispatcher/Packet;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "PIWIK:PacketFactory"

    .line 87
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private buildPacketForPost(Ljava/util/List;)Lorg/piwik/sdk/dispatcher/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)",
            "Lorg/piwik/sdk/dispatcher/Packet;"
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/piwik/sdk/dispatcher/Event;

    invoke-virtual {v4}, Lorg/piwik/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v3, "requests"

    .line 72
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance v2, Lorg/piwik/sdk/dispatcher/Packet;

    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/net/URL;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lorg/piwik/sdk/dispatcher/Packet;-><init>(Ljava/net/URL;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "PIWIK:PacketFactory"

    .line 75
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Cannot create json object:\n%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ", "

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public buildPackets(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 43
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/piwik/sdk/dispatcher/Event;

    invoke-direct {p0, p1}, Lorg/piwik/sdk/dispatcher/PacketFactory;->buildPacketForGet(Lorg/piwik/sdk/dispatcher/Event;)Lorg/piwik/sdk/dispatcher/Packet;

    move-result-object p1

    if-nez p1, :cond_1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 48
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    add-int/lit8 v4, v0, 0x14

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p1, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/piwik/sdk/dispatcher/Event;

    invoke-direct {p0, v0}, Lorg/piwik/sdk/dispatcher/PacketFactory;->buildPacketForGet(Lorg/piwik/sdk/dispatcher/Event;)Lorg/piwik/sdk/dispatcher/Packet;

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_3
    invoke-direct {p0, v0}, Lorg/piwik/sdk/dispatcher/PacketFactory;->buildPacketForPost(Ljava/util/List;)Lorg/piwik/sdk/dispatcher/Packet;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 55
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    return-object v3
.end method
