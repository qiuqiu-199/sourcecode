.class public final Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaiI:I

.field private final zzbcD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/InvitationEntity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzFU()V

    return-void
.end method

.method private zzFU()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzaw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "All the invitations must be from the same inviter"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzc;->zza(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    iget-object v2, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/multiplayer/Invitation;

    iget-object v5, p1, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->freeze()Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableAutoMatchSlots()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvitationType()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInviter()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on a cluster"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;->zza(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFV()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/multiplayer/Invitation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->zzbcD:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
