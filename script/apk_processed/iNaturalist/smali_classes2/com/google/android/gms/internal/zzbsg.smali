.class public Lcom/google/android/gms/internal/zzbsg;
.super Ljava/lang/Object;


# direct methods
.method public static zzabl()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    return-object v0
.end method

.method public static zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbsa;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V

    move-object p0, v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbsg;->zzq(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Invalid Firebase Database priority (must be a string, double, ServerValue, or null)"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzq(Lcom/google/android/gms/internal/zzbsc;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbru;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbsi;

    if-nez v0, :cond_0

    instance-of p0, p0, Lcom/google/android/gms/internal/zzbrt;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
