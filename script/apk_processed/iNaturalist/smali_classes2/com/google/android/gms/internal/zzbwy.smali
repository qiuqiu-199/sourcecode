.class public final Lcom/google/android/gms/internal/zzbwy;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbwy;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcsS:I

.field public zzcsT:J

.field public zzcuj:[I

.field public zzcuk:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuR:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbwy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbwy;

    iget v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :cond_9
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

    iget v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaA(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwy;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_19

    const/16 v1, 0x10

    if-eq v0, v1, :cond_18

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_11

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    move v1, v4

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    goto/16 :goto_a

    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v3, v0, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v0, v0

    :goto_6
    if-nez v0, :cond_a

    array-length v3, v1

    if-ne v4, v3, :cond_a

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    goto/16 :goto_0

    :cond_a
    add-int v3, v0, v4

    new-array v3, v3, [I

    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    invoke-static {v5, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_11

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto :goto_9

    :pswitch_4
    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    move v1, v4

    goto :goto_9

    :cond_10
    iput-object v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    :cond_11
    :goto_a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_14

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v5

    packed-switch v5, :pswitch_data_5

    goto :goto_c

    :pswitch_5
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_14
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v0, v0

    :goto_d
    if-nez v0, :cond_16

    array-length v3, v1

    if-ne v4, v3, :cond_16

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    goto/16 :goto_0

    :cond_16
    add-int v3, v0, v4

    new-array v3, v3, [I

    if-eqz v0, :cond_17

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    invoke-static {v5, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_6
    iput v0, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    goto/16 :goto_0

    :cond_1a
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwy;->zzaA(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwy;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsS:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwy;->zzcsT:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuj:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwy;->zzcuk:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
