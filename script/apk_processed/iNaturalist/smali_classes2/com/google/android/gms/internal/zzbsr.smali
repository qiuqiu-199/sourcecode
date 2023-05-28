.class Lcom/google/android/gms/internal/zzbsr;
.super Ljava/lang/Object;


# instance fields
.field private zzcjU:Lcom/google/android/gms/internal/zzbsn;

.field private zzckp:Ljava/io/DataInputStream;

.field private zzckq:Lcom/google/android/gms/internal/zzbsm;

.field private zzckr:[B

.field private zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

.field private volatile zzckt:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbsm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckp:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzcjU:Lcom/google/android/gms/internal/zzbsn;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckt:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    return-void
.end method

.method private read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckp:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private zzZ([B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsm;->zzY([B)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string v0, "PING frame too long"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zza(ZB[B)V
    .locals 1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbsr;->zzZ([B)V

    goto :goto_2

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string p2, "PING must not fragment across frames"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string p2, "Failed to continue outstanding frame"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string p2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbsk;->zzb(B)Lcom/google/android/gms/internal/zzbsk$zzb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/zzbsk$zzb;->zzW([B)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsk$zzb;->zzabn()Lcom/google/android/gms/internal/zzbsq;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbsr;->zzcks:Lcom/google/android/gms/internal/zzbsk$zzb;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbsr;->zzcjU:Lcom/google/android/gms/internal/zzbsn;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzbsn;->zza(Lcom/google/android/gms/internal/zzbsq;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/zzbso;

    const-string p2, "Failed to decode frame"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zzc(Lcom/google/android/gms/internal/zzbso;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbsr;->zzabA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbsm;->zzb(Lcom/google/android/gms/internal/zzbso;)V

    return-void
.end method

.method private zze([BI)J
    .locals 5

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsm;->zzabr()Lcom/google/android/gms/internal/zzbsn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzcjU:Lcom/google/android/gms/internal/zzbsn;

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckt:Z

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzbsr;->read([BII)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    invoke-direct {p0, v5, v0, v1}, Lcom/google/android/gms/internal/zzbsr;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    aget-byte v5, v5, v1

    const-wide/16 v6, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x2

    const/16 v10, 0x8

    if-ge v5, v8, :cond_2

    int-to-long v6, v5

    goto :goto_3

    :cond_2
    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    invoke-direct {p0, v5, v0, v9}, Lcom/google/android/gms/internal/zzbsr;->read([BII)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    aget-byte v0, v0, v9

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v10

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    int-to-long v6, v0

    goto :goto_3

    :cond_3
    const/16 v8, 0x7f

    if-ne v5, v8, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    invoke-direct {p0, v5, v0, v10}, Lcom/google/android/gms/internal/zzbsr;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbsr;->zzckr:[B

    sub-int/2addr v0, v10

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/internal/zzbsr;->zze([BI)J

    move-result-wide v6

    :cond_4
    :goto_3
    long-to-int v0, v6

    new-array v5, v0, [B

    invoke-direct {p0, v5, v2, v0}, Lcom/google/android/gms/internal/zzbsr;->read([BII)I

    if-ne v4, v10, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckq:Lcom/google/android/gms/internal/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbsm;->zzabs()V

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    if-ne v4, v0, :cond_6

    goto :goto_0

    :cond_6
    if-eq v4, v1, :cond_8

    if-eq v4, v9, :cond_8

    const/16 v0, 0x9

    if-eq v4, v0, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzbso;

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported opcode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/internal/zzbsr;->zza(ZB[B)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/zzbso;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzbso; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbsr;->zzc(Lcom/google/android/gms/internal/zzbso;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbso;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzbso;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbsr;->zzc(Lcom/google/android/gms/internal/zzbso;)V

    goto/16 :goto_0

    :catch_2
    nop

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method zza(Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsr;->zzckp:Ljava/io/DataInputStream;

    return-void
.end method

.method zzabA()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbsr;->zzckt:Z

    return-void
.end method
