.class public Lcom/google/android/gms/games/social/SocialInviteEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/social/SocialInvite;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/social/SocialInviteEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaYM:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzakD:I

.field private final zzbfB:Ljava/lang/String;

.field private final zzbfC:I

.field private final zzbft:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/social/SocialInviteEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->zzGA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfB:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYM:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzakD:I

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfC:I

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbft:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IIJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfB:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYM:Lcom/google/android/gms/games/PlayerEntity;

    iput p3, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzakD:I

    iput p4, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfC:I

    iput-wide p5, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbft:J

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/social/SocialInvite;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzGA()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/social/SocialInvite;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/games/social/SocialInvite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->zzGA()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzGA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static zzb(Lcom/google/android/gms/games/social/SocialInvite;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Social Invite ID"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->zzGA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Direction"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getDirection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Last Modified Timestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/social/SocialInvite;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zza(Lcom/google/android/gms/games/social/SocialInvite;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzGB()Lcom/google/android/gms/games/social/SocialInvite;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfC:I

    return v0
.end method

.method public getLastModifiedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbft:J

    return-wide v0
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzaYM:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzakD:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zza(Lcom/google/android/gms/games/social/SocialInvite;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzb(Lcom/google/android/gms/games/social/SocialInvite;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/social/SocialInviteEntityCreator;->zza(Lcom/google/android/gms/games/social/SocialInviteEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/social/SocialInviteEntity;->zzbfB:Ljava/lang/String;

    return-object v0
.end method

.method public zzGB()Lcom/google/android/gms/games/social/SocialInvite;
    .locals 0

    return-object p0
.end method
