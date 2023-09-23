.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedBinderCallback"
.end annotation


# virtual methods
.method public zzab(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw p1
.end method

.method public zzac(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw p1
.end method
