.class public Lcom/google/android/gms/internal/zzbfl;
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

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v1, p2

    if-eq v1, p1, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    if-ne v2, p1, :cond_3

    aget-object p1, p2, v0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    aget-object v2, p2, v0

    check-cast v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, -0x1

    :goto_3
    invoke-virtual {v2, p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_5

    array-length v2, p2

    if-lez v2, :cond_5

    aget-object v2, p2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    array-length v0, p2

    if-ge p1, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    aget-object v2, p2, p1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzbiy;-><init>(Ljava/util/List;)V

    return-object p1
.end method
