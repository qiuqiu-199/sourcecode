.class public Lcom/google/android/gms/internal/zzbdb;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 2
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

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    check-cast p1, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object p2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzbit;

    :cond_1
    return-object p2
.end method