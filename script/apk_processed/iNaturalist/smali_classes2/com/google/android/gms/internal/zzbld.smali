.class public final Lcom/google/android/gms/internal/zzbld;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbld$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn<",
        "Lcom/google/android/gms/internal/zzbld;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbld;->zzUB()Lcom/google/android/gms/internal/zzbld;

    return-void
.end method

.method public static zzS([B)Lcom/google/android/gms/internal/zzbld;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbxs;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbld;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxt;[B)Lcom/google/android/gms/internal/zzbxt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbld;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbld;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbld;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

.method public zzUB()Lcom/google/android/gms/internal/zzbld;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbld$zza;->zzUC()[Lcom/google/android/gms/internal/zzbld$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbld;->zzcuR:I

    return-object p0
.end method

.method public zzX(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbld;
    .locals 4
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

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbld$zza;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzbld$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbld$zza;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzbld$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbld$zza;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbld;->zzX(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbld;

    move-result-object p1

    return-object p1
.end method

.method protected zzu()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbld;->zzbVu:[Lcom/google/android/gms/internal/zzbld$zza;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method