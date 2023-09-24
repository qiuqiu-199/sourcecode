.class public Lcom/google/android/gms/internal/zzbdj;
.super Lcom/google/android/gms/internal/zzbcs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbdj$zzb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

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

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/zzbiy;

    array-length v4, p2

    if-ne v4, v1, :cond_2

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbiw;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/zzbiw;

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzbiw;

    new-instance v3, Lcom/google/android/gms/internal/zzbdj$zzb;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzbdj$zzb;-><init>(Lcom/google/android/gms/internal/zzbdj$1;)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzbiw;-><init>(Lcom/google/android/gms/internal/zzbcq;)V

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzbdj$zza;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/gms/internal/zzbdj$zza;-><init>(Lcom/google/android/gms/internal/zzbdj;Lcom/google/android/gms/internal/zzbiw;Lcom/google/android/gms/internal/zzbcd;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    aget-object p1, p2, v2

    return-object p1
.end method
