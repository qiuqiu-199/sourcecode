.class Lcom/google/firebase/storage/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzcmG:Lcom/google/firebase/storage/StorageReference;

.field private zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzcmI:Lcom/google/android/gms/internal/zzbtv;

.field private zzcmT:Lcom/google/firebase/storage/StorageMetadata;


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
            "Lcom/google/firebase/storage/StorageMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/zzb;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Lcom/google/android/gms/internal/zzbtv;

    iget-object p2, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxOperationRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbtv;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/zzb;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzacy()Lcom/google/android/gms/internal/zzbud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzacz()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbud;->zzD(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbtv;->zze(Lcom/google/android/gms/internal/zzbue;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzadc()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzadf()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/zzb;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmT:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "GetMetadataTask"

    const-string v3, "Unable to parse resulting metadata. "

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzacZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/firebase/storage/zzb;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/storage/zzb;->zzcmT:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbue;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_1
    move-exception v0

    const-string v1, "GetMetadataTask"

    const-string v2, "Unable to create firebase storage network request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/firebase/storage/zzb;->zzcmH:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method