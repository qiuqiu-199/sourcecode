.class public Lcom/google/android/gms/internal/zzbcr;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)D"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_8

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v7

    if-nez v2, :cond_3

    cmpl-double v2, p0, v5

    if-eqz v2, :cond_4

    :cond_3
    cmpl-double v2, v0, v5

    if-nez v2, :cond_5

    cmpl-double v2, p0, v7

    if-nez v2, :cond_5

    :cond_4
    return-wide v3

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_6

    return-wide v0

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_7

    return-wide p0

    :cond_7
    const/4 v2, 0x0

    add-double/2addr v0, p0

    return-wide v0

    :cond_8
    :goto_1
    return-wide v3
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbit;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v2, :cond_8

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    return v1

    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal type given to isTruthy: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    return v1
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbit;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)D"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-ne p0, v2, :cond_1

    return-wide v3

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    const-wide/16 v5, 0x0

    if-ne p0, v2, :cond_2

    return-wide v5

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_3
    return-wide v5

    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiy;

    if-eqz v2, :cond_7

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    return-wide v5

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_9

    new-instance p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbiy;->zznL(I)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v0

    return-wide v0

    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return-wide v5

    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v3

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-nez v0, :cond_a

    return-wide v3

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal type given to numberEquivalent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_12

    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiz;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiy;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p0, v2

    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbiz;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/zzbiy;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v2, :cond_8

    instance-of v2, p1, Lcom/google/android/gms/internal/zzbjb;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-nez v8, :cond_a

    cmpl-double v8, p0, v4

    if-eqz v8, :cond_b

    :cond_a
    cmpl-double v8, v2, v4

    if-nez v8, :cond_c

    cmpl-double v4, p0, v6

    if-nez v4, :cond_c

    :cond_b
    return v1

    :cond_c
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v2, v4

    if-nez v6, :cond_d

    return v1

    :cond_d
    cmpl-double v6, p0, v4

    if-nez v6, :cond_e

    return v0

    :cond_e
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_f

    return v1

    :cond_f
    cmpl-double v6, v2, v4

    if-nez v6, :cond_10

    return v0

    :cond_10
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_11

    return v0

    :cond_11
    :goto_3
    return v1

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to abstractRelationalCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to abstractRelationalCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzbit;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)D"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    return-wide v2

    :cond_0
    cmpl-double p0, v0, v2

    if-eqz p0, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    return-wide v2

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zze(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zze(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "Boolean"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string v4, "Undefined"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_2
    const-string v4, "Null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_3
    const-string v4, "String"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string v4, "Object"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_5
    const-string v4, "Number"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, -0x1

    :goto_3
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    if-ne p0, p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_2
    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    check-cast p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_7

    :cond_5
    cmpl-double v4, v2, p0

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    :goto_7
    return v1

    :pswitch_4
    return v0

    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v4, :cond_9

    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v4, :cond_a

    :cond_9
    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p1, v4, :cond_13

    sget-object v4, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p1, v4, :cond_a

    goto/16 :goto_8

    :cond_a
    const-string v0, "Number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "String"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "String"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Number"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0

    return p0

    :cond_c
    const-string v0, "Boolean"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0

    return p0

    :cond_d
    const-string v0, "Boolean"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzbiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzb(Lcom/google/android/gms/internal/zzbit;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbiv;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0

    return p0

    :cond_e
    const-string v0, "String"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "Number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "Object"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0

    return p0

    :cond_10
    const-string v0, "Object"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "String"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Number"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjb;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbcr;->zzc(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_12
    return v1

    :cond_13
    :goto_8
    return v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to abstractEqualityCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to abstractEqualityCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_5
        -0x739a70a1 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v2, :cond_1

    const-string p0, "undefined"

    return-object p0

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v2, :cond_2

    const-string p0, "null"

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "true"

    goto :goto_1

    :cond_3
    const-string p0, "false"

    :goto_1
    return-object p0

    :cond_4
    instance-of v2, p0, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v2, :cond_d

    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    const-string v2, "E"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    const/4 v4, -0x7

    if-le v3, v4, :cond_6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v0

    if-gez v3, :cond_5

    const-string v2, "0"

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_6
    const-string v0, "E"

    const-string v1, "e"

    :goto_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_7
    const/16 v4, 0x15

    if-ge v3, v4, :cond_a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "."

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gez v3, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-lez v3, :cond_9

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_a
    const-string v0, "E"

    const-string v1, "e+"

    goto :goto_3

    :cond_b
    const-string v0, ".0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "0"

    :cond_c
    :goto_6
    return-object p0

    :cond_d
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiw;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/zzbiw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbiw;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcq;

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbcp;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzbcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcp;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiy;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiy;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbit;

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne v1, v2, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbcr;->zzd(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    :goto_8
    const-string v1, ""

    :goto_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiz;

    if-eqz v0, :cond_13

    const-string p0, "[object Object]"

    return-object p0

    :cond_13
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_14
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to stringEquivalent: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_15
    const-string p0, "Unknown type in stringEquivalent."

    :goto_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzbit;Lcom/google/android/gms/internal/zzbit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzf(Lcom/google/android/gms/internal/zzbit;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbcr;->zze(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zze(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "Boolean"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string v4, "Undefined"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_2
    const-string v4, "Null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_3
    const-string v4, "String"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_4
    const-string v4, "Number"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, -0x1

    :goto_3
    packed-switch v2, :pswitch_data_0

    if-ne p0, p1, :cond_8

    goto :goto_6

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Lcom/google/android/gms/internal/zzbiu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiu;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1

    :pswitch_2
    check-cast p0, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    check-cast p1, Lcom/google/android/gms/internal/zzbiv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbiv;->zzTi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    cmpl-double v4, v2, p0

    if-nez v4, :cond_7

    return v0

    :cond_7
    :goto_5
    return v1

    :pswitch_3
    return v0

    :cond_8
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to strictEqualityCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbit;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal type given to strictEqualityCompare: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_4
        -0x6bc5b3cf -> :sswitch_3
        0x2539a7 -> :sswitch_2
        0x39918130 -> :sswitch_1
        0x67140408 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zze(Lcom/google/android/gms/internal/zzbit;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v0, :cond_0

    const-string p0, "Undefined"

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-ne p0, v0, :cond_1

    const-string p0, "Null"

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiu;

    if-eqz v0, :cond_2

    const-string p0, "Boolean"

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/zzbiv;

    if-eqz v0, :cond_3

    const-string p0, "Number"

    return-object p0

    :cond_3
    instance-of p0, p0, Lcom/google/android/gms/internal/zzbjb;

    if-eqz p0, :cond_4

    const-string p0, "String"

    return-object p0

    :cond_4
    const-string p0, "Object"

    return-object p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/zzbit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbit<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbja;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMR:Lcom/google/android/gms/internal/zzbix;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
