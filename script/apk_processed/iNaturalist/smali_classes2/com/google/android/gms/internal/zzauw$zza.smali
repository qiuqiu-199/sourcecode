.class public final Lcom/google/android/gms/internal/zzauw$zza;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzauw$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwT:[Lcom/google/android/gms/internal/zzauw$zza;


# instance fields
.field public zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

.field public zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

.field public zzbwW:Ljava/lang/Boolean;

.field public zzbwk:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw$zza;->zzNz()Lcom/google/android/gms/internal/zzauw$zza;

    return-void
.end method

.method public static zzNy()[Lcom/google/android/gms/internal/zzauw$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwT:[Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwT:[Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzauw$zza;

    sput-object v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwT:[Lcom/google/android/gms/internal/zzauw$zza;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwT:[Lcom/google/android/gms/internal/zzauw$zza;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzauw$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzauw$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauw$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzauw$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauw$zzf;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauw$zzf;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public zzNz()Lcom/google/android/gms/internal/zzauw$zza;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzcuR:I

    return-object p0
.end method

.method public zzP(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zza;
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

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauw$zza;->zzP(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
