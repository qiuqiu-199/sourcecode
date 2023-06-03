.class public Lcom/google/android/gms/internal/zzbfy;
.super Lcom/google/android/gms/internal/zzbcs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbfy$zza;
    }
.end annotation


# instance fields
.field private final zzbLv:Lcom/google/android/gms/internal/zzbfy$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbfy$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfy;->zzbLv:Lcom/google/android/gms/internal/zzbfy$zza;

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

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget-object v3, p2, v1

    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v3, v4, :cond_2

    aget-object v3, p2, v1

    instance-of v3, v3, Lcom/google/android/gms/internal/zzbiz;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/gms/internal/zzbja;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbit;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbit;->zzTi()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbfy;->zzbLv:Lcom/google/android/gms/internal/zzbfy$zza;

    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/zzbfy$zza;->zze(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjc;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    return-object p1
.end method
