.class public final Lcom/google/android/gms/internal/zzbxb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbxb;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcsS:I

.field public zzcsT:J

.field public zzctV:[I

.field public zzctW:[Ljava/lang/String;

.field public zzctZ:Ljava/lang/String;

.field public zzcui:J

.field public zzcum:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcvb:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvb:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuR:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbxb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbxb;

    iget v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    aget v5, v5, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaD(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    if-eq v0, v1, :cond_14

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v1, v1

    :goto_6
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    iput-object v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    goto/16 :goto_0

    :cond_16
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxb;->zzaD(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxb;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsS:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxb;->zzcsT:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v7, v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    aget v7, v7, v1

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctV:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_5

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbxb;->zzctW:[Ljava/lang/String;

    aget-object v8, v8, v1

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v8}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v4, v8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    mul-int/lit8 v7, v7, 0x1

    add-int/2addr v0, v7

    :cond_6
    iget-wide v7, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    cmp-long v1, v7, v5

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbxb;->zzcui:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbxb;->zzcum:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxb;->zzctZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    return v0
.end method
