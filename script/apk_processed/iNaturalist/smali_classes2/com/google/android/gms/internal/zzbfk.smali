.class public Lcom/google/android/gms/internal/zzbfk;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 11
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

    const/4 v2, 0x3

    if-lez v1, :cond_1

    array-length v1, p2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    array-length v3, p2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v7

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v9, p1

    array-length p1, p2

    if-ne p1, v2, :cond_3

    aget-object p1, p2, v4

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p1, v2, :cond_3

    aget-object p1, p2, v4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v9

    :cond_3
    cmpg-double p1, v7, v5

    if-gez p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v7

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    :goto_3
    double-to-int p1, p1

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_3

    :goto_4
    cmpg-double p2, v9, v5

    if-gez p2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v9

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_5
    double-to-int p2, v2

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v2, p2

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_5

    :goto_6
    sub-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p2, p1

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
