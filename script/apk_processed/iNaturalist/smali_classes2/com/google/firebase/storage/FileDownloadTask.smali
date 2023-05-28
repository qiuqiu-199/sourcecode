.class public Lcom/google/firebase/storage/FileDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private mResultCode:I

.field private zzaMd:J

.field private volatile zzbNH:Ljava/lang/Exception;

.field private zzcmG:Lcom/google/firebase/storage/StorageReference;

.field private zzcmI:Lcom/google/android/gms/internal/zzbtv;

.field private final zzcmJ:Landroid/net/Uri;

.field private zzcmK:J

.field private zzcmL:Ljava/lang/String;

.field private zzcmM:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Lcom/google/firebase/storage/StorageReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzaMd:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmJ:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/zzbtv;

    iget-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbtv;-><init>(Lcom/google/firebase/FirebaseApp;J)V

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    return-void
.end method

.method private zza(Ljava/io/InputStream;[B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    :try_start_0
    array-length v3, p2

    if-eq v0, v3, :cond_0

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {p1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbue;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbue;->getStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmJ:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_3

    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    const-string p1, "The file downloading to has been deleted:"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    const-string v0, "FileDownloadTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expected a file to resume from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FileDownloadTask"

    const-string v5, "unable to create file:"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    const/4 v2, 0x1

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    const-string v3, "FileDownloadTask"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Resuming download file "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_2
    const/high16 v1, 0x40000

    :try_start_0
    new-array v1, v1, [B

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/storage/FileDownloadTask;->zza(Ljava/io/InputStream;[B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmK:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmK:J

    iget-object v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    if-eqz v4, :cond_6

    const-string v2, "FileDownloadTask"

    const-string v4, "Exception occurred during file download. Retrying."

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    const/4 v2, 0x0

    :cond_6
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    move v0, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to open Firebase Storage stream."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    :goto_4
    return v0
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

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzaMd:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbtv;->cancel()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    return-void
.end method

.method run()V
    .locals 11

    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmK:J

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbtv;->reset()V

    :try_start_0
    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v6}, Lcom/google/firebase/storage/StorageReference;->zzacy()Lcom/google/android/gms/internal/zzbud;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmG:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v7}, Lcom/google/firebase/storage/StorageReference;->zzacz()Landroid/net/Uri;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/zzbud;->zza(Landroid/net/Uri;J)Lcom/google/android/gms/internal/zzbue;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmI:Lcom/google/android/gms/internal/zzbtv;

    invoke-virtual {v7, v6, v2}, Lcom/google/android/gms/internal/zzbtv;->zza(Lcom/google/android/gms/internal/zzbue;Z)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->getResultCode()I

    move-result v7

    iput v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->getException()Ljava/lang/Exception;

    move-result-object v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    :goto_0
    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    iget v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-direct {p0, v7}, Lcom/google/firebase/storage/FileDownloadTask;->zzqK(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacB()I

    move-result v7

    if-ne v7, v0, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->zzadd()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzaMd:J

    const-string v9, "ETag"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/zzbue;->zzjO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmL:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmL:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v0, "FileDownloadTask"

    const-string v1, "The file at the server has changed.  Restarting from the beginning."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmL:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->zzacW()V

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->schedule()V

    return-void

    :cond_4
    iput-object v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmL:Ljava/lang/String;

    :try_start_1
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/FileDownloadTask;->zza(Lcom/google/android/gms/internal/zzbue;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v9, "FileDownloadTask"

    const-string v10, "Exception occurred during file write.  Aborting."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    :cond_5
    move v5, v7

    :goto_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbue;->zzacW()V

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacB()I

    move-result v5

    if-ne v5, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_7

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    return-void

    :cond_7
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmJ:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    goto :goto_4

    :cond_8
    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    :goto_4
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacB()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacB()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_b

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "FileDownloadTask"

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacB()I

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

    :cond_a
    return-void

    :cond_b
    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmK:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    return-void

    :catch_1
    move-exception v0

    const-string v3, "FileDownloadTask"

    const-string v4, "Unable to create firebase storage network request."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/FileDownloadTask;->zzf(IZ)Z

    return-void
.end method

.method protected schedule()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/storage/zzd;->zzacH()Lcom/google/firebase/storage/zzd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzUL()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/zzd;->zzw(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzacu()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzbNH:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmK:J

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->zzcmM:J

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V

    return-object v0
.end method

.method synthetic zzacv()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->zzacu()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method
