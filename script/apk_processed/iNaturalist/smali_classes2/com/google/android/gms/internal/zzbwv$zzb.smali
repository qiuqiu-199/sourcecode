.class public final Lcom/google/android/gms/internal/zzbwv$zzb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbwv$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbwv$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public zzctK:J

.field public zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

.field public zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

.field public zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

.field public zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

.field public zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

.field public zzcti:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuR:I

    return-void
.end method

.method public static zzae([B)Lcom/google/android/gms/internal/zzbwv$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzb;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxt;[B)Lcom/google/android/gms/internal/zzbxt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbwv$zzb;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbwv$zzb;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwv$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwv$zzd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwv$zze;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwv$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_11

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    :cond_11
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

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwv$zzc;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwv$zzd;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwv$zze;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwv$zza;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzat(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwv$zzb;
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

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzb$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zze;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwv$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    const v1, 0x1869f

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :cond_c
    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    goto/16 :goto_0

    :cond_e
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
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

    :pswitch_data_2
    .packed-switch 0x2710
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwv$zzb;->zzat(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbwv$zzb;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctK:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzcti:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctL:Lcom/google/android/gms/internal/zzbwv$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctM:Lcom/google/android/gms/internal/zzbwv$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctN:Lcom/google/android/gms/internal/zzbwv$zze;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctO:Lcom/google/android/gms/internal/zzbwv$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwv$zzb;->zzctP:Lcom/google/android/gms/internal/zzbwv$zzb$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
