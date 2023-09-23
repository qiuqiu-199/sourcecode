.class public Lcom/google/android/gms/internal/zzbep;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 5
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    array-length v2, p2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v2, p2

    if-ne v2, v3, :cond_3

    aget-object v2, p2, v4

    instance-of v2, v2, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zza(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object p2, p2, v1

    :goto_3
    check-cast p2, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    goto :goto_4

    :cond_4
    array-length v0, p2

    if-le v0, v4, :cond_5

    aget-object p2, p2, v4

    goto :goto_3

    :cond_5
    :goto_4
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Ljava/util/List;)Lcom/google/android/gms/internal/zzbix;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzbix;

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
