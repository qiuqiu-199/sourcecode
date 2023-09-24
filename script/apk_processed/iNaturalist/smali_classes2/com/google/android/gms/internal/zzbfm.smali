.class public Lcom/google/android/gms/internal/zzbfm;
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v2, p2

    const/4 v3, 0x3

    if-lez v2, :cond_1

    array-length v2, p2

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v2, p2, v1

    check-cast v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    array-length v4, p2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_2

    :cond_2
    aget-object v0, p2, v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v6

    double-to-int v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    array-length v6, p2

    if-ne v6, v3, :cond_3

    aget-object v3, p2, v5

    sget-object v6, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v3, v6, :cond_3

    aget-object p2, p2, v5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide p1

    double-to-int v4, p1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
