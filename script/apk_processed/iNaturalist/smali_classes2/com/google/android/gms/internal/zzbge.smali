.class public Lcom/google/android/gms/internal/zzbge;
.super Lcom/google/android/gms/internal/zzbcs;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbLx:Lcom/google/android/gms/internal/zzbcb$zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbcb$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbge;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbge;->zzbLx:Lcom/google/android/gms/internal/zzbcb$zzc;

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 4
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

    if-eqz v1, :cond_8

    aget-object v1, p2, p1

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbge;->zzbLx:Lcom/google/android/gms/internal/zzbcb$zzc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbcb$zzc;->zzSp()Lcom/google/android/gms/internal/zzbbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbbi;->zzQI()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_ldl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbjc;->zzZ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzbjb;

    if-nez v2, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    check-cast v1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "conv"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbbt;->zzaj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    array-length p1, p2

    const/4 v2, 0x0

    if-le p1, v0, :cond_6

    aget-object p1, p2, v0

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    aget-object p1, p2, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    :cond_6
    :goto_1
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbbt;->zzaj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/zzbjb;

    const-string p1, ""

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object p2

    :cond_8
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    const-string p2, ""

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
