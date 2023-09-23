.class public Lcom/google/android/gms/internal/zzbet;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v1, p2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, p1

    aget-object v2, p2, v0

    const/4 v3, 0x2

    aget-object p2, p2, v3

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzn(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object p2

    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v1, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v4, :cond_6

    check-cast v1, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbiz;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/zzbiz;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V

    :cond_5
    return-object p2

    :cond_6
    instance-of v4, v1, Lcom/google/android/gms/internal/zzbiy;

    if-eqz v4, :cond_9

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/zzbiy;

    const-string v5, "length"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v3, v1, v5

    if-nez v3, :cond_7

    const/4 p1, 0x1

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    double-to-int p1, v1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/zzbiy;->setSize(I)V

    return-object p2

    :cond_8
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_9

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-ltz p1, :cond_9

    double-to-int p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzbiy;->zza(ILcom/google/android/gms/internal/zzbit;)V

    return-object p2

    :cond_9
    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/zzbit;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzbit;)V

    return-object p2
.end method
