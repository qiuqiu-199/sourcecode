.class public Lorg/piwik/sdk/extra/TrackHelper$Screen;
.super Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Screen"
.end annotation


# instance fields
.field private final mCustomDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomVariables:Lorg/piwik/sdk/extra/CustomVariables;

.field private final mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/extra/TrackHelper;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/piwik/sdk/extra/TrackHelper;)V

    .line 116
    new-instance p1, Lorg/piwik/sdk/extra/CustomVariables;

    invoke-direct {p1}, Lorg/piwik/sdk/extra/CustomVariables;-><init>()V

    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/piwik/sdk/extra/CustomVariables;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mCustomDimensions:Ljava/util/Map;

    .line 122
    iput-object p2, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/piwik/sdk/TrackMe;
    .locals 4

    .line 162
    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Screen tracking requires a non-empty path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lorg/piwik/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/piwik/sdk/extra/TrackHelper$Screen;->getBaseTrackMe()Lorg/piwik/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/piwik/sdk/TrackMe;-><init>(Lorg/piwik/sdk/TrackMe;)V

    sget-object v1, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/piwik/sdk/QueryParams;->ACTION_NAME:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mTitle:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/piwik/sdk/extra/CustomVariables;

    invoke-virtual {v1}, Lorg/piwik/sdk/extra/CustomVariables;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 171
    sget-object v1, Lorg/piwik/sdk/QueryParams;->SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/piwik/sdk/extra/CustomVariables;

    invoke-virtual {v2}, Lorg/piwik/sdk/extra/CustomVariables;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    .line 173
    :cond_1
    iget-object v1, p0, Lorg/piwik/sdk/extra/TrackHelper$Screen;->mCustomDimensions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lorg/piwik/sdk/extra/CustomDimension;->setDimension(Lorg/piwik/sdk/TrackMe;ILjava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic with(Lorg/piwik/sdk/Tracker;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/piwik/sdk/Tracker;)V

    return-void
.end method
