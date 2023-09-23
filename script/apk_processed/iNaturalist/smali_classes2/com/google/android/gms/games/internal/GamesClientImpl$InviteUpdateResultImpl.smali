.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/social/Social$InviteUpdateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InviteUpdateResultImpl"
.end annotation


# instance fields
.field private final zzaZX:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/games/social/SocialInviteEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/social/SocialInviteEntity;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;->zzaZX:Lcom/google/android/gms/games/social/SocialInvite;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;->zzaZX:Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw p1
.end method
