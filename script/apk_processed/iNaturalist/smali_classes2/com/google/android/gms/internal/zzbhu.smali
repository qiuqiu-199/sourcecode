.class public Lcom/google/android/gms/internal/zzbhu;
.super Lcom/google/android/gms/internal/zzbcs;


# instance fields
.field private final zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;

.field private final zzbLI:Lcom/google/android/gms/tagmanager/zzbb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzbcb$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhu;->zzbLI:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhu;->zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;

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

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v1, p2

    if-eq v1, v0, :cond_2

    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, p1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v1, p2

    if-le v1, v0, :cond_3

    aget-object v1, p2, v0

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    :goto_3
    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, v2, :cond_5

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhu;->zzbKn:Lcom/google/android/gms/internal/zzbcb$zzc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbcb$zzc;->zzSp()Lcom/google/android/gms/internal/zzbbi;

    move-result-object v0

    aget-object p1, p2, p1

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 p1, 0x0

    sget-object p2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, p2, :cond_6

    check-cast v1, Lcom/google/android/gms/internal/zzbiz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbiz;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbjc;->zzas(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    :cond_6
    move-object v5, p1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbhu;->zzbLI:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbi;->zzRW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbi;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string p2, "Error calling measurement proxy:"

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    :goto_6
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
