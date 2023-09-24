.class public final Lcom/google/android/gms/internal/zzalr;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzalr;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzaOC:J

.field public zzaOD:J

.field public zzaOE:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->zzBo()Lcom/google/android/gms/internal/zzalr;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzalr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzalr;

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

.method public zzBo()Lcom/google/android/gms/internal/zzalr;
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzalr;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzd(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzd(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzd(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzalr;->zzy(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzalr;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zzy(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzalr;
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

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    goto :goto_0

    :cond_5
    return-object p0
.end method
