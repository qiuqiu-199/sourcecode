.class public Lcom/google/android/gms/internal/zzbhf;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

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

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v1, p2, p1

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, v3, :cond_a

    aget-object v1, p2, v0

    sget-object v3, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v1, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    array-length v4, p2

    if-le v4, v2, :cond_3

    aget-object v4, p2, v2

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v4, v5, :cond_3

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbcr;->zza(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x42

    :cond_3
    array-length v2, p2

    const/4 v4, 0x3

    if-le v2, v4, :cond_7

    aget-object v2, p2, v4

    sget-object v5, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq v2, v5, :cond_7

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbiv;

    if-nez v0, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1

    :cond_4
    aget-object p2, p2, v4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_6

    const-wide/16 v6, 0x0

    cmpg-double p2, v4, v6

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    double-to-int v0, v4

    goto :goto_3

    :cond_6
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1

    :cond_7
    :goto_3
    const/4 p2, 0x0

    :try_start_0
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    :cond_8
    if-nez p2, :cond_9

    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_4

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object p1

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1

    :cond_a
    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    return-object p1
.end method
