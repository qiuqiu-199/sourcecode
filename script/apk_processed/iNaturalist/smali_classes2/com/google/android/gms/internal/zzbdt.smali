.class public Lcom/google/android/gms/internal/zzbdt;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 4
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

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, p1

    aget-object p2, p2, v0

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbiz;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbiy;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    instance-of v2, p2, Lcom/google/android/gms/internal/zzbiz;

    if-nez v2, :cond_4

    instance-of v2, p2, Lcom/google/android/gms/internal/zzbiy;

    if-nez v2, :cond_4

    instance-of v2, p2, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p2, v2

    :cond_5
    instance-of v2, v1, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v2, :cond_6

    instance-of v2, p2, Lcom/google/android/gms/internal/zzbjb;

    if-nez v2, :cond_7

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p1

    xor-int/2addr p1, v0

    :cond_8
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/zzbiu;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzbiu;-><init>(Ljava/lang/Boolean;)V

    return-object p2
.end method
