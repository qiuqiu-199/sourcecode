.class public Lcom/google/android/gms/internal/zzbco;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbco$zza;
    }
.end annotation


# static fields
.field private static final zzbLm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbco$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzep:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "contains"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzeo:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "endsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzeq:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "equals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzeu:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "greaterEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzet:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "greaterThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzes:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "lessEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzer:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "lessThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzem:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "regex"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/zzai;->zzfI:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/android/gms/internal/zzai;->zzfJ:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/android/gms/internal/zzai;->zzhF:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzah;->zzen:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbco$zza;

    const-string v3, "startsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzbco$zza;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzbco;->zzbLm:Ljava/util/Map;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzbcd;)Lcom/google/android/gms/internal/zzbja;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;>;",
            "Lcom/google/android/gms/internal/zzbcd;",
            ")",
            "Lcom/google/android/gms/internal/zzbja;"
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/zzbco;->zzbLm:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzbco;->zzbLm:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbco$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbco$zza;->zzSB()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzbco;->zza([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    const-string v1, "gtmUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbja;

    const-string v1, "15"

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzbja;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    const-string v1, "mobile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbja;

    const-string v1, "17"

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzbja;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbco$zza;->zzSA()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbiy;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/zzbja;

    const-string p1, "2"

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbja;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Fail to convert "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to the internal representation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzah;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbco;->zzhO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zza([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbit;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static zzhO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbco;->zzbLm:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbco;->zzbLm:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbco$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbco$zza;->zzSA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
