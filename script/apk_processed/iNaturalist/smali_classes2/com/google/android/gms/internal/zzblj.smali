.class public final Lcom/google/android/gms/internal/zzblj;
.super Ljava/lang/Object;


# direct methods
.method public static zza(FFFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    cmpl-float p0, p1, p3

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    cmpl-float p0, p2, p3

    if-lez p0, :cond_2

    move p0, p2

    goto :goto_0

    :cond_2
    move p0, p3

    :goto_0
    return p0
.end method

.method public static zza(FFFFFF)F
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzblj;->zzb(FFFF)F

    move-result v0

    invoke-static {p0, p1, p4, p3}, Lcom/google/android/gms/internal/zzblj;->zzb(FFFF)F

    move-result p3

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/gms/internal/zzblj;->zzb(FFFF)F

    move-result p4

    invoke-static {p0, p1, p2, p5}, Lcom/google/android/gms/internal/zzblj;->zzb(FFFF)F

    move-result p0

    invoke-static {v0, p3, p4, p0}, Lcom/google/android/gms/internal/zzblj;->zza(FFFF)F

    move-result p0

    return p0
.end method

.method public static zzb(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
