.class public final Landroid/support/v7/media/MediaRouteDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteDescriptor;)V
    .locals 2

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$000(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 360
    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$100(Landroid/support/v7/media/MediaRouteDescriptor;)V

    .line 361
    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$200(Landroid/support/v7/media/MediaRouteDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$200(Landroid/support/v7/media/MediaRouteDescriptor;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    :cond_0
    return-void

    .line 355
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 345
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 346
    invoke-virtual {p0, p2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    return-void
.end method


# virtual methods
.method public addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 1

    if-eqz p1, :cond_2

    .line 529
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 526
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteDescriptor$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 546
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 548
    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    goto :goto_0

    :cond_0
    return-object p0

    .line 543
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filters must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addGroupMemberId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    .line 389
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "groupMemberId must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addGroupMemberIds(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteDescriptor$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 414
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addGroupMemberId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    goto :goto_0

    :cond_0
    return-object p0

    .line 411
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "groupMemberIds must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Landroid/support/v7/media/MediaRouteDescriptor;
    .locals 4

    .line 636
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlFilters"

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "groupMemberIds"

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mGroupMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 642
    :cond_1
    new-instance v0, Landroid/support/v7/media/MediaRouteDescriptor;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteDescriptor$1;)V

    return-object v0
.end method

.method public setCanDisconnect(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 508
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "canDisconnect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setConnecting(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "connecting"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setConnectionState(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 500
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "connectionState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 442
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDeviceType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 582
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 476
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 628
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "iconUri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 462
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconUri must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 375
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 430
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 570
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackStream"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 562
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 618
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "presentationDisplayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSettingsActivity(Landroid/content/IntentSender;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 517
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "settingsIntent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 590
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 610
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeHandling"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .line 598
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
