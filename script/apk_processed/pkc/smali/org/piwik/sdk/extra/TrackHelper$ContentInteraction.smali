.class public Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;
.super Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInteraction"
.end annotation


# instance fields
.field private final mContentName:Ljava/lang/String;

.field private mContentPiece:Ljava/lang/String;

.field private mContentTarget:Ljava/lang/String;

.field private final mInteraction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/piwik/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/piwik/sdk/extra/TrackHelper;)V

    .line 521
    iput-object p2, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    .line 522
    iput-object p3, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/piwik/sdk/TrackMe;
    .locals 3

    .line 543
    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    new-instance v0, Lorg/piwik/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->getBaseTrackMe()Lorg/piwik/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/piwik/sdk/TrackMe;-><init>(Lorg/piwik/sdk/TrackMe;)V

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_NAME:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    .line 551
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_PIECE:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentPiece:Ljava/lang/String;

    .line 552
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_TARGET:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentTarget:Ljava/lang/String;

    .line 553
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_INTERACTION:Lorg/piwik/sdk/QueryParams;

    iget-object v2, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    .line 554
    invoke-virtual {v0, v1, v2}, Lorg/piwik/sdk/TrackMe;->set(Lorg/piwik/sdk/QueryParams;Ljava/lang/String;)Lorg/piwik/sdk/TrackMe;

    move-result-object v0

    return-object v0

    .line 547
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interaction name needs to be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content name needs to be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public piece(Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/piwik/sdk/extra/TrackHelper$ContentInteraction;->mContentPiece:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic with(Lorg/piwik/sdk/Tracker;)V
    .locals 0

    .line 513
    invoke-super {p0, p1}, Lorg/piwik/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/piwik/sdk/Tracker;)V

    return-void
.end method
