.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommitSnapshotResultImpl"
.end annotation


# instance fields
.field private final zzaZR:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->zzaZR:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->zzaZR:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    throw p1
.end method


# virtual methods
.method public getSnapshotMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->zzaZR:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    return-object v0
.end method
