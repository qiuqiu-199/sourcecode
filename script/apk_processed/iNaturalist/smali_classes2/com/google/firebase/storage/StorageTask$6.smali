.class Lcom/google/firebase/storage/StorageTask$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/StorageTask;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzcnB:Lcom/google/firebase/storage/StorageTask;

.field final synthetic zzcnC:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$6;->zzcnB:Lcom/google/firebase/storage/StorageTask;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$6;->zzcnC:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/storage/StorageTask$6;->zzcnC:Lcom/google/android/gms/tasks/Continuation;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzcnB:Lcom/google/firebase/storage/StorageTask;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$6;->zzaGy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    goto :goto_0

    :goto_1
    return-void
.end method
