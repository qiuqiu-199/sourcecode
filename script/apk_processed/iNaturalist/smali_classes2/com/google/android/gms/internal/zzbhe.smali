.class public Lcom/google/android/gms/internal/zzbhe;
.super Lcom/google/android/gms/internal/zzbcs;


# static fields
.field private static final zzbLE:Lcom/google/android/gms/internal/zzbiv;

.field private static final zzbLF:Lcom/google/android/gms/internal/zzbiv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbhe;->zzbLE:Lcom/google/android/gms/internal/zzbiv;

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbhe;->zzbLF:Lcom/google/android/gms/internal/zzbiv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method

.method private zzg(Lcom/google/android/gms/internal/zzbit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 7
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

    const-wide/16 v1, 0x0

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    array-length v5, p2

    if-lez v5, :cond_1

    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/zzbhe;->zzbLE:Lcom/google/android/gms/internal/zzbiv;

    :goto_1
    array-length v5, p2

    if-le v5, v0, :cond_2

    aget-object p2, p2, v0

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/zzbhe;->zzbLF:Lcom/google/android/gms/internal/zzbiv;

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbhe;->zzg(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbhe;->zzg(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    check-cast p2, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-double/2addr v3, v1

    mul-double v5, v5, v3

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
