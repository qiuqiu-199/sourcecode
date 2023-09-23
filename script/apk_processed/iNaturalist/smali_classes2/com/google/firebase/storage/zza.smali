.class Lcom/google/firebase/storage/zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzcmG:Lcom/google/firebase/storage/StorageReference;

.field private zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzcmI:Lcom/google/android/gms/internal/zzbtv;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/storage/zza;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/zza;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Lcom/google/android/gms/internal/zzbtv;

    iget-object p2, p0, Lcom/google/firebase/storage/zza;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/zza;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbtv;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/zza;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/zza;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzacy()Lcom/google/android/gms/internal/zzbud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zza;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzacz()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbud;->zzC(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/firebase/storage/zza;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbtv;->zze(Lcom/google/android/gms/internal/zzbue;)V

    iget-object v1, p0, Lcom/google/firebase/storage/zza;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbue;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DeleteStorageTask"

    const-string v2, "Unable to create Firebase Storage network request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/firebase/storage/zza;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
