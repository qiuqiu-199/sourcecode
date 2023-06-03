.class public final Lcom/google/android/gms/internal/zzbxl;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzcuA:I

.field private zzcuB:I

.field private zzcuC:I

.field private zzcuD:I

.field private zzcuE:I

.field private zzcuF:I

.field private zzcuG:I

.field private zzcuy:I

.field private zzcuz:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuF:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuG:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbxl;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    return-void
.end method

.method public static zzaZ(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private zzaeB()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuA:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuA:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuA:I

    :goto_0
    return-void
.end method

.method public static zzaf([B)Lcom/google/android/gms/internal/zzbxl;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzb([BII)Lcom/google/android/gms/internal/zzbxl;

    move-result-object p0

    return-object p0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/zzbxl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbxl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbxl;-><init>([BII)V

    return-object v0
.end method

.method public static zzqZ(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvd:[B

    return-object v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxl;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    return-object v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeM()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeA()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaez()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxl;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    sget-object v4, Lcom/google/android/gms/internal/zzbxr;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeM()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0
.end method

.method public zzI(II)[B
    .locals 3

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzbxw;->zzcvd:[B

    return-object p1

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbxl;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuF:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbxt;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzqX(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeR()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxt;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuF:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbxt;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;

    const/4 p1, 0x4

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzqX(I)V

    iget p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuE:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeR()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1
.end method

.method public zzaeA()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public zzaeC()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public zzaeD()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public zzaeE()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxl;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    aget-byte v0, v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0
.end method

.method public zzaeo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuC:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuC:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuC:I

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeO()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0
.end method

.method public zzaep()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxl;->zzqY(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public zzaeq()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaey()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzaer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaey()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzaes()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    return v0
.end method

.method public zzaet()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeA()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzaeu()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public zzaev()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxl;->zzqZ(I)I

    move-result v0

    return v0
.end method

.method public zzaew()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbxl;->zzaZ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzaex()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeN()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public zzaey()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeN()Lcom/google/android/gms/internal/zzbxs;

    move-result-object v0

    throw v0
.end method

.method public zzaez()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeE()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public zzqX(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuC:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeP()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1
.end method

.method public zzqY(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxw;->zzrr(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeQ()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaez()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaep()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxw;->zzrs(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzqX(I)V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzrd(I)V

    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeA()J

    return v1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzra(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeB()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeM()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1
.end method

.method public zzrb(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaeB()V

    return-void
.end method

.method public zzrc(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bad position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuy:I

    sub-int/2addr v1, v2

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Position "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzrd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuD:I

    iget v0, p0, Lcom/google/android/gms/internal/zzbxl;->zzcuB:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzrd(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeL()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzbxs;->zzaeM()Lcom/google/android/gms/internal/zzbxs;

    move-result-object p1

    throw p1
.end method
