.class public Lcom/google/android/gms/internal/zzbez;
.super Lcom/google/android/gms/internal/zzbcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 17
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

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v3

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_f

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_3
    const-wide/16 v9, 0x0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    int-to-double v11, v0

    cmpg-double v0, v11, v9

    if-gez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v13, v11, v9

    if-gez v13, :cond_5

    const/4 v1, 0x1

    :cond_5
    xor-int/2addr v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v13, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz v1, :cond_7

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-wide v13, v11

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_7
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    const-wide/high16 v15, -0x8000000000000000L

    if-nez v1, :cond_9

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-wide v15, v9

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_9
    cmpl-double v1, v3, v9

    if-nez v1, :cond_c

    cmpl-double v1, v5, v9

    if-nez v1, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move-wide v15, v9

    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_e

    cmpl-double v1, v3, v9

    if-eqz v1, :cond_e

    cmpl-double v1, v5, v9

    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    move-wide v13, v11

    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_f
    :goto_7
    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method
