.class public Lcom/google/android/gms/internal/zzbtu;
.super Ljava/lang/Object;


# static fields
.field private static final zzcoB:Ljava/lang/Runtime;


# instance fields
.field private buffer:[B

.field private final zzcoC:Ljava/io/InputStream;

.field private zzcoD:I

.field private zzcoE:Z

.field private zzcoF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbtu;->zzcoB:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoC:Ljava/io/InputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoF:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoE:Z

    return-void
.end method

.method private zzqQ(I)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoF:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    add-int/2addr v0, p1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/zzbtu;->zzcoB:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p1, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AdaptiveStreamBuffer"

    const-string v1, "Turning off adaptive buffer resizing due to low memory."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoF:Z

    goto :goto_0

    :cond_0
    const-string p1, "AdaptiveStreamBuffer"

    const-string v0, "Turning off adaptive buffer resizing to conserve memory."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    array-length p1, p1

    return p1
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoC:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoE:Z

    return v0
.end method

.method public zzacV()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    return-object v0
.end method

.method public zzqO(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    invoke-static {v0, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoC:Ljava/io/InputStream;

    sub-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    int-to-long v3, v0

    add-long/2addr v3, v1

    long-to-int v0, v3

    goto :goto_0

    :cond_2
    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoC:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    return p1
.end method

.method public zzqP(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbtu;->zzqQ(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoC:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtu;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    iget v3, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoE:Z

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/zzbtu;->zzcoD:I

    return p1
.end method
