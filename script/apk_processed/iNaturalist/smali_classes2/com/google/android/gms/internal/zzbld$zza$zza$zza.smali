.class public final Lcom/google/android/gms/internal/zzbld$zza$zza$zza;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbld$zza$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbld$zza$zza$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbVA:Ljava/lang/String;

.field public zzbVB:D

.field public zzbVC:F

.field public zzbVD:J

.field public zzbVE:I

.field public zzbVF:I

.field public zzbVG:Z

.field public zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

.field public zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

.field public zzbVJ:[Ljava/lang/String;

.field public zzbVK:[J

.field public zzbVL:[F

.field public zzbVM:J

.field public zzbVz:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzUG()Lcom/google/android/gms/internal/zzbld$zza$zza$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_14

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_13
    const/4 v0, 0x0

    :cond_14
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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([J)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public zzUG()Lcom/google/android/gms/internal/zzbld$zza$zza$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    iput v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzbld$zza;->zzUC()[Lcom/google/android/gms/internal/zzbld$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzbld$zza$zza;->zzUE()[Lcom/google/android/gms/internal/zzbld$zza$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcvb:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcuX:[J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcuY:[F

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    sget-object v1, Lcom/google/android/gms/internal/zzbxw;->zzcvd:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzb(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzc(IF)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzK(II)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_8

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    array-length v4, v4

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v4, v4

    if-ge v0, v4, :cond_e

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    aget-wide v6, v5, v0

    invoke-virtual {p1, v4, v6, v7}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v0, v0

    if-lez v0, :cond_10

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v0, v0

    if-ge v1, v0, :cond_10

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzaa(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbld$zza$zza$zza;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x75

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [F

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readFloat()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readFloat()F

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v2

    div-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    new-array v0, v0, [F

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v1, v0

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readFloat()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v2, v2

    :goto_6
    add-int/2addr v3, v2

    new-array v3, v3, [J

    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_7
    array-length v1, v3

    if-ge v2, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    iput-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_9
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v3

    aput-wide v3, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    array-length v2, v2

    :goto_a
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_b
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    array-length v2, v2

    :goto_c
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbld$zza$zza;

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13

    new-instance v1, Lcom/google/android/gms/internal/zzbld$zza$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbld$zza$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/zzbld$zza$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbld$zza$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbld$zza;

    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/zzbld$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbld$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/zzbld$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbld$zza;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaev()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x19 -> :sswitch_d
        0x25 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzaa(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbld$zza$zza$zza;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 11

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    sget-object v2, Lcom/google/android/gms/internal/zzbxw;->zzcvd:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVz:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVA:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVB:D

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVC:F

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzbxm;->zzd(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVD:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVE:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVF:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxm;->zzM(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVG:Z

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v5, v5

    if-ge v0, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVH:[Lcom/google/android/gms/internal/zzbld$zza;

    aget-object v5, v5, v0

    if-eqz v5, :cond_8

    const/16 v6, 0x9

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    array-length v5, v5

    if-ge v0, v5, :cond_c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVI:[Lcom/google/android/gms/internal/zzbld$zza$zza;

    aget-object v5, v5, v0

    if-eqz v5, :cond_b

    const/16 v6, 0xa

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    move v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v9, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_f

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVJ:[Ljava/lang/String;

    aget-object v9, v9, v1

    if-eqz v9, :cond_e

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v5, v9

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v0, v5

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v1, v1

    if-lez v1, :cond_12

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v5, v5

    if-ge v3, v5, :cond_11

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    aget-wide v9, v5, v3

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/zzbxm;->zzbf(J)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVK:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_12
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_13

    const/16 v1, 0xd

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVM:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v1, v1

    if-lez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld$zza$zza$zza;->zzbVL:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method
