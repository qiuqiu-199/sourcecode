.class public Lcom/google/android/gms/internal/zzbeb;
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

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbja;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzo(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v1

    xor-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object p1, p2, v0

    const-string p2, "object"

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne p1, v0, :cond_3

    const-string p2, "undefined"

    goto :goto_3

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v0, :cond_4

    const-string p2, "boolean"

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v0, :cond_5

    const-string p2, "number"

    goto :goto_3

    :cond_5
    instance-of v0, p1, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v0, :cond_6

    const-string p2, "string"

    goto :goto_3

    :cond_6
    instance-of p1, p1, Lcom/google/android/gms/internal/zzbiw;

    if-eqz p1, :cond_7

    const-string p2, "function"

    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
