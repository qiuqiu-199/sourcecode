.class public final Lcom/google/android/gms/games/quest/MilestoneEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/quest/MilestoneEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mState:I

.field private final zzaZp:Ljava/lang/String;

.field private final zzbaF:Ljava/lang/String;

.field private final zzbeS:J

.field private final zzbeT:J

.field private final zzbeU:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/quest/MilestoneEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/quest/Milestone;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbaF:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeS:J

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeT:J

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaZp:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeU:[B

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeU:[B

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeU:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJ[BILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbaF:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeS:J

    iput-wide p4, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeT:J

    iput-object p6, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeU:[B

    iput p7, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    iput-object p8, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaZp:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/quest/Milestone;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/games/quest/Milestone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/quest/Milestone;

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

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

.method static zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "MilestoneId"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CurrentProgress"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCurrentProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TargetProgress"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getTargetProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "State"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CompletionRewardData"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getCompletionRewardData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "EventId"

    invoke-interface {p0}, Lcom/google/android/gms/games/quest/Milestone;->getEventId()Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Milestone;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    return-object v0
.end method

.method public getCompletionRewardData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeU:[B

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeS:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzaZp:Ljava/lang/String;

    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbaF:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->mState:I

    return v0
.end method

.method public getTargetProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzbeT:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntityCreator;->zza(Lcom/google/android/gms/games/quest/MilestoneEntity;Landroid/os/Parcel;I)V

    return-void
.end method
