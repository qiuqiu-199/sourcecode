.class public Lcom/google/android/gms/internal/zzbem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcq;


# static fields
.field private static zzbJn:Lcom/google/android/gms/internal/zzbcb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbcb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzbem;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    return-void
.end method


# virtual methods
.method public varargs zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
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

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object p1, Lcom/google/android/gms/internal/zzbem;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    aget-object p2, p2, v0

    check-cast p2, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbcb;->zzhI(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbit;

    move-result-object p1

    return-object p1
.end method
