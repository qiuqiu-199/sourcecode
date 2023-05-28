.class public Lcom/google/firebase/storage/StreamDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;,
        Lcom/google/firebase/storage/StreamDownloadTask$zza;,
        Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mResultCode:I

.field private zzaMd:J

.field private volatile zzbNH:Ljava/lang/Exception;

.field private zzbUb:Ljava/io/InputStream;

.field private zzcmG:Lcom/google/firebase/storage/StorageReference;

.field private zzcmI:Lcom/google/android/gms/internal/zzbtv;

.field private zzcmK:J

.field private zzcmL:Ljava/lang/String;

.field private zzcnR:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

.field private zzcnS:J

.field private zzcnT:Lcom/google/android/gms/internal/zzbue;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;)V
    .locals 3
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzaMd:J

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    new-instance p1, Lcom/google/android/gms/internal/zzbtv;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbtv;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacI()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private zzacI()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtv;->reset()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzacW()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->zzacy()Lcom/google/android/gms/internal/zzbud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->zzacz()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbud;->zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtv;->zza(Lcom/google/android/gms/internal/zzbue;Z)V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    iget v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    invoke-direct {p0, v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzqK(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbue;->zzjO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmL:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x199

    iput v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The ETag on the server changed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmL:Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzaMd:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzadd()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzaMd:J

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not open resulting stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "StreamDownloadTask"

    const-string v2, "Unable to create firebase storage network request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method static synthetic zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/zzbue;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/storage/StreamDownloadTask;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbUb:Ljava/io/InputStream;

    return-object p0
.end method

.method private zzqK(I)Z
    .locals 1

    const/16 v0, 0x134

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzaMd:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtv;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    return-void
.end method

.method protected onProgress()V
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnS:J

    return-void
.end method

.method public pause()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this operation is not supported on StreamDownloadTask."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method run()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/google/firebase/storage/StreamDownloadTask$zza;

    new-instance v4, Lcom/google/firebase/storage/StreamDownloadTask$1;

    invoke-direct {v4, p0}, Lcom/google/firebase/storage/StreamDownloadTask$1;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;)V

    invoke-direct {v3, v4, p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;-><init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbUb:Ljava/io/InputStream;

    :try_start_0
    invoke-static {v3}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zza(Lcom/google/firebase/storage/StreamDownloadTask$zza;)Z

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnR:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnR:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacD()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v5, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbUb:Ljava/io/InputStream;

    invoke-interface {v3, v4, v5}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;->doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "StreamDownloadTask"

    const-string v5, "Exception occurred calling doInBackground."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "StreamDownloadTask"

    const-string v5, "Initial opening of Stream failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbUb:Ljava/io/InputStream;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbue;->zzacW()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnT:Lcom/google/android/gms/internal/zzbue;

    :cond_3
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result v3

    if-ne v3, v0, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_6

    const/16 v1, 0x100

    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "StreamDownloadTask"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result v1

    const/16 v2, 0x3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to change download task to final state from "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method protected schedule()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/storage/zzd;->zzacH()Lcom/google/firebase/storage/zzd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzUL()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/zzd;->zzw(Ljava/lang/Runnable;)V

    return-void
.end method

.method zza(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnR:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnR:Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;

    return-object p0
.end method

.method zzaX(J)V
    .locals 3

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnS:J

    const-wide/32 v0, 0x40000

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/storage/StreamDownloadTask;->zzf(IZ)Z

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcmK:J

    iput-wide p1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnS:J

    :cond_1
    :goto_0
    return-void
.end method

.method zzacJ()Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzbNH:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->mResultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask;->zzcnS:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/StreamDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method synthetic zzacv()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacJ()Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method
