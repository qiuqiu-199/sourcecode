.class public Lcom/google/android/gms/internal/zzbeu;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 8
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

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    const/4 v2, 0x2

    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v3, p2, v0

    aget-object v4, p2, v1

    check-cast v4, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    aget-object p2, p2, v2

    check-cast p2, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    if-nez v5, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbit;

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbit;

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/zzbix;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/google/android/gms/internal/zzbix;->zzbMQ:Lcom/google/android/gms/internal/zzbix;

    if-eq v6, v7, :cond_5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/zzbix;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbix;->zzTp()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    sget-object v7, Lcom/google/android/gms/internal/zzbix;->zzbMP:Lcom/google/android/gms/internal/zzbix;

    if-ne v6, v7, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1

    :cond_5
    :goto_4
    return-object v6

    :cond_6
    const/4 v5, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbit;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzbix;

    if-eqz p2, :cond_b

    sget-object p2, Lcom/google/android/gms/internal/zzbix;->zzbMQ:Lcom/google/android/gms/internal/zzbix;

    if-eq p1, p2, :cond_a

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzbix;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbix;->zzTp()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    return-object p1

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
