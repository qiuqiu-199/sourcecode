.class public Lcom/google/android/gms/internal/zzbht;
.super Lcom/google/android/gms/internal/zzbcs;


# static fields
.field private static final zzbLH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbLG:Lcom/google/android/gms/internal/zzbbm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HEAD"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "POST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "PUT"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbht;->zzbLH:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbbm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbht;->zzbLG:Lcom/google/android/gms/internal/zzbbm;

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 12
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

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbiz;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbit;->zzid(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    check-cast v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, p2, v0

    const-string v3, "method"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbit;->zzid(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/zzbjb;

    const-string v3, "GET"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :cond_2
    instance-of v3, v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    check-cast v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzbht;->zzbLH:Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v0

    const-string v3, "uniqueId"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbit;->zzid(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-eq v2, v3, :cond_4

    instance-of v3, v2, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne v2, v3, :cond_5

    goto :goto_4

    :cond_5
    check-cast v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v9, v2

    goto :goto_5

    :cond_6
    :goto_4
    move-object v9, v4

    :goto_5
    aget-object v2, p2, v0

    const-string v3, "headers"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbit;->zzid(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v2, v3, :cond_8

    instance-of v3, v2, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v2, v5, :cond_9

    move-object v10, v4

    goto :goto_9

    :cond_9
    check-cast v2, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzbit;

    instance-of v7, v5, Lcom/google/android/gms/internal/zzbjb;

    if-nez v7, :cond_a

    const-string v5, "Ignore the non-string value of header key %s."

    new-array v7, p1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    check-cast v5, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    move-object v10, v3

    :goto_9
    aget-object p2, p2, v0

    const-string v2, "body"

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzbit;->zzid(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p2, v2, :cond_d

    instance-of v2, p2, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne p2, v2, :cond_e

    move-object p2, v4

    goto :goto_c

    :cond_e
    check-cast p2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_c
    const-string v2, "GET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    if-nez v2, :cond_f

    const-string v2, "HEAD"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    if-eqz p2, :cond_10

    const-string v2, "Body of %s hit will be ignored: %s."

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v8, v3, v0

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbht;->zzbLG:Lcom/google/android/gms/internal/zzbbm;

    move-object v3, v1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbbm;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    const-string v2, "QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object v8, v3, p1

    aput-object v9, v3, v11

    const/4 p1, 0x3

    aput-object v10, v3, p1

    const/4 p1, 0x4

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
