.class public final Lcom/google/android/gms/internal/zzbwx;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbwx;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcsS:I

.field public zzcsT:J

.field public zzcud:I

.field public zzcue:I

.field public zzcuf:I

.field public zzcug:D

.field public zzcuh:D

.field public zzcui:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuR:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbwx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbwx;

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    const/4 v0, 0x6

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaz(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwx;
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

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x31

    if-eq v0, v1, :cond_3

    const/16 v1, 0x39

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    goto :goto_0

    :cond_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwx;->zzaz(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwx;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 10

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-eqz v9, :cond_5

    const/4 v1, 0x6

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_6

    const/4 v1, 0x7

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method
