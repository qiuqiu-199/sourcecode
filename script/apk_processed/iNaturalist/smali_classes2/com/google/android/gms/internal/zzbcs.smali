.class public abstract Lcom/google/android/gms/internal/zzbcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs abstract zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
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
.end method

.method public varargs zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 6
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v2, p2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbit;

    const/4 v3, 0x0

    :goto_2
    array-length v4, p2

    if-ge v3, v4, :cond_8

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMP:Lcom/google/android/gms/internal/zzbix;

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMQ:Lcom/google/android/gms/internal/zzbix;

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v4, p2, v3

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzbjc;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMP:Lcom/google/android/gms/internal/zzbix;

    if-eq v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMQ:Lcom/google/android/gms/internal/zzbix;

    if-eq v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzbcs;->zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    return-object p1
.end method