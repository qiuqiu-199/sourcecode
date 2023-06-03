.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# instance fields
.field private final zzbdS:I

.field private final zzbdT:I

.field private final zzbdU:Z

.field private final zzbdV:J

.field private final zzbdW:Ljava/lang/String;

.field private final zzbdX:J

.field private final zzbdY:Ljava/lang/String;

.field private final zzbdZ:Ljava/lang/String;

.field private final zzbea:J

.field private final zzbeb:Ljava/lang/String;

.field private final zzbec:Ljava/lang/String;

.field private final zzbed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdS:I

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdT:I

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdU:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdV:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdW:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdX:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdY:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdZ:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbea:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbeb:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbec:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbed:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGq()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGs()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGr()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGs()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGr()Ljava/lang/String;

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

.method static zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TimeSpan"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/TimeSpan;->zziL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Collection"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/LeaderboardCollection;->zziL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "RawPlayerScore"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "none"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayPlayerScore"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "none"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PlayerRank"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "none"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayPlayerRank"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, "none"

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NumScores"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TopPageNextToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "WindowPageNextToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "WindowPagePrevToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzGr()Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzGt()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    move-result-object v0

    return-object v0
.end method

.method public getCollection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdT:I

    return v0
.end method

.method public getDisplayPlayerRank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdY:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdW:Ljava/lang/String;

    return-object v0
.end method

.method public getNumScores()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbea:J

    return-wide v0
.end method

.method public getPlayerRank()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdX:J

    return-wide v0
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdZ:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPlayerScore()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdV:J

    return-wide v0
.end method

.method public getTimeSpan()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdS:I

    return v0
.end method

.method public hasPlayerInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdU:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzGq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbeb:Ljava/lang/String;

    return-object v0
.end method

.method public zzGr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbec:Ljava/lang/String;

    return-object v0
.end method

.method public zzGs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbed:Ljava/lang/String;

    return-object v0
.end method

.method public zzGt()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
    .locals 0

    return-object p0
.end method
