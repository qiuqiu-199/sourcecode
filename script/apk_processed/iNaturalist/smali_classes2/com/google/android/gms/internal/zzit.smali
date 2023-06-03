.class public Lcom/google/android/gms/internal/zzit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    const-string v1, "abort"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzir;->zze(Lcom/google/android/gms/internal/zzqw;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Precache abort but no preload task running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "src"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string p1, "Precache video action is missing the src parameter."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string v2, "player"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "mimetype"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "mimetype"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzir;->zzf(Lcom/google/android/gms/internal/zzqw;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Precache task already running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzby()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzt(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqw;->zzby()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zze;->zzsM:Lcom/google/android/gms/internal/zziu;

    invoke-interface {v0, p1, v2, p2}, Lcom/google/android/gms/internal/zziu;->zza(Lcom/google/android/gms/internal/zzqw;ILjava/lang/String;)Lcom/google/android/gms/internal/zzis;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zziq;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zziq;-><init>(Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzis;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpj;->zziP()Ljava/lang/Object;

    return-void
.end method
