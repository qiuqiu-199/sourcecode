.class public final Lcom/google/android/gms/internal/zzbxi;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbxi;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaKx:J

.field public zzcsS:I

.field public zzcut:Ljava/lang/String;

.field public zzcuu:J

.field public zzcuv:Lcom/google/android/gms/internal/zzbwt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuR:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbxi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbxi;

    iget v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-eqz v1, :cond_8

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_c

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwt;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
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

    iget v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaK(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbwt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    goto :goto_0

    :cond_7
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxi;->zzaK(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxi;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxi;->zzcuv:Lcom/google/android/gms/internal/zzbwt;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
