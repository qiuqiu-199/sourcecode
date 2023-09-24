.class Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/StorageTask$ProvideError;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnapshotBase"
.end annotation


# instance fields
.field final synthetic zzcnB:Lcom/google/firebase/storage/StorageTask;

.field private final zzcnE:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcnB:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcnE:Ljava/lang/Exception;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->zzacB()I

    move-result p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzazz:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcnE:Ljava/lang/Exception;

    :goto_2
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcnE:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/storage/StorageTask<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcnB:Lcom/google/firebase/storage/StorageTask;

    return-object v0
.end method
