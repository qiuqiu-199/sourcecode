.class public Lcom/google/android/gms/internal/zzbpn;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzboy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzboy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzboy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbpp;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbpp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbpp;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbpp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbpn$1;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzbpn$1;-><init>(Lcom/google/android/gms/internal/zzbpp;Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, ".sv"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ".sv"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsg;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzbpn;->zza(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbsd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p0

    :cond_4
    check-cast p0, Lcom/google/android/gms/internal/zzbrr;

    new-instance v1, Lcom/google/android/gms/internal/zzbpo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpo;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbpn$2;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/zzbpn$2;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbpo;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbrr;->zza(Lcom/google/android/gms/internal/zzbrr$zza;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpo;->zzZf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpo;->zzZf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzbsc;->zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpo;->zzZf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbsw;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "timestamp"

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsw;->zzabI()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
