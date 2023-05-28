.class Lcom/google/firebase/storage/StreamDownloadTask$zza;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzcnW:Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzcnX:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private zzcnY:Ljava/io/IOException;

.field private zzcnZ:I

.field private zzcoa:I

.field private zzcob:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StreamDownloadTask;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnX:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StreamDownloadTask$zza;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacM()Z

    move-result p0

    return p0
.end method

.method private zzaX(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzaX(J)V

    :cond_0
    iget v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnZ:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnZ:I

    return-void
.end method

.method private zzacL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzacB()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/storage/StorageException;->zzcmU:Ljava/io/IOException;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private zzacM()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacL()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    iget v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcoa:I

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnZ:I

    if-ne v1, v2, :cond_1

    const-string v0, "StreamDownloadTask"

    const-string v1, "Encountered exception during stream operation. Aborting."

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "StreamDownloadTask"

    iget v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnZ:I

    const/16 v3, 0x46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnZ:I

    iput v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcoa:I

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    :cond_2
    iget-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcob:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnX:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t perform operation on closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacM()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcob:Z

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->zzb(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/android/gms/internal/zzbue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbue;->zzacW()V

    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->zza(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/android/gms/internal/zzbue;)Lcom/google/android/gms/internal/zzbue;

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacL()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacM()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaX(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacM()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    int-to-long v1, p3

    const-wide/32 v3, 0x40000

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    const/high16 v2, 0x40000

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaX(J)V

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacL()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    if-lez p3, :cond_6

    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_5

    if-nez v0, :cond_4

    const/4 v0, -0x1

    :cond_4
    return v0

    :cond_5
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaX(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    goto :goto_0

    :cond_6
    :goto_3
    if-nez p3, :cond_0

    return v0

    :cond_7
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    throw p1
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacM()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v5, v3

    long-to-int v0, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaX(J)V

    int-to-long p1, v0

    return-wide p1

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnV:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask;->zzaX(J)V

    const/4 v3, 0x0

    sub-long/2addr p1, v1

    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzacL()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnW:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v3, v1

    long-to-int v0, v3

    sub-long/2addr p1, v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzaX(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, v0

    return-wide p1

    :goto_2
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$zza;->zzcnY:Ljava/io/IOException;

    throw p1
.end method
