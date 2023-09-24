.class Lcom/google/android/gms/internal/zzbss;
.super Ljava/lang/Object;


# instance fields
.field private final zzcdt:Ljava/util/Random;

.field private final zzcjZ:Ljava/lang/Thread;

.field private zzckq:Lcom/google/android/gms/internal/zzbsm;

.field private volatile zzckt:Z

.field private zzcku:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private zzckv:Z

.field private zzckw:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsm;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbss;->zzcdt:Ljava/util/Random;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbss;->zzckt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbss;->zzckv:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzbsm;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbss$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbss$1;-><init>(Lcom/google/android/gms/internal/zzbss;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbss;->zzcjZ:Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsm;->zzabq()Lcom/google/android/gms/internal/zzbsl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbss;->zzabx()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Writer-"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzbsl;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbss;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbss;->zzcku:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private zza(BZ[B)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    array-length v1, p3

    const v2, 0xffff

    const/16 v3, 0x7e

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-gt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x8

    :goto_1
    array-length v4, p3

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    if-ge v1, v3, :cond_4

    if-eqz p2, :cond_3

    or-int/lit16 v1, v1, 0x80

    :cond_3
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_4
    if-gt v1, v2, :cond_6

    if-eqz p2, :cond_5

    const/16 v3, 0xfe

    :cond_5
    int-to-byte v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_6
    const/16 v2, 0x7f

    if-eqz p2, :cond_7

    const/16 v2, 0xff

    :cond_7
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_2
    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbss;->zzabB()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_3
    array-length v1, p3

    if-ge p1, v1, :cond_8

    aget-byte v1, p3, p1

    rem-int/lit8 v2, p1, 0x4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbss;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbss;->zzabE()V

    return-void
.end method

.method private zzabB()[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbss;->zzcdt:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method private zzabC()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss;->zzcku:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbss;->zzckw:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private zzabE()V
    .locals 3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbss;->zzckt:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbss;->zzabC()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbss;->zzcku:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbss;->zzabC()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbso;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbss;->zzc(Lcom/google/android/gms/internal/zzbso;)V

    :catch_1
    :cond_1
    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzbso;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsm;->zzb(Lcom/google/android/gms/internal/zzbso;)V

    return-void
.end method


# virtual methods
.method zzabD()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbss;->zzckt:Z

    return-void
.end method

.method zzabx()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbss;->zzcjZ:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized zzb(BZ[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbss;->zza(BZ[B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/zzbss;->zzckt:Z

    const/16 v0, 0x8

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/zzbss;->zzckv:Z

    if-nez p3, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string p2, "Shouldn\'t be sending"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbss;->zzckv:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbss;->zzcku:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method zzb(Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbss;->zzckw:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method
