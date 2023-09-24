.class Lcom/google/android/gms/internal/zzatf;
.super Lcom/google/android/gms/internal/zzauh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzauu$zzb;Lcom/google/android/gms/internal/zzauw$zzb;J)Ljava/lang/Boolean;
    .locals 9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iget-object p4, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v0, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p4, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "null or empty param name in filter. event"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    aget-object v5, v0, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    :goto_2
    invoke-interface {p4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    goto :goto_2

    :cond_5
    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Unknown value for param. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iget-object p4, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length p3, p1

    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v0, p3, :cond_17

    aget-object v4, p1, v0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Event has empty param name. event"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_9
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "No number filter for long param. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_a
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_b

    return-object v2

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_f

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "No number filter for double param. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_d
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzatf;->zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_15

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v8, :cond_10

    check-cast v7, Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p0, v7, v4}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    :cond_10
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v8, :cond_14

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v7, v4}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_11

    return-object v2

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Invalid param value for number filter. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "No filter for String param. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_15
    if-nez v7, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Missing param for filter. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string p3, "Unknown param type. event, param"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzauu$zze;Lcom/google/android/gms/internal/zzauw$zzg;)Ljava/lang/Boolean;
    .locals 4

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "Missing property filter. property"

    :goto_0
    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "No number filter for long property. property"

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "No number filter for double property. property"

    goto :goto_0

    :cond_3
    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/gms/internal/zzatf;->zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "No string or number filter defined. property"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "Invalid user property value for Numeric number filter. property, value"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v0

    :cond_7
    iget-object p2, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object p1

    const-string v1, "User property has no value, property"

    goto/16 :goto_0
.end method

.method static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zza(Ljava/math/BigDecimal;ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;D)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    if-nez p5, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p3, :cond_3

    return-object v0

    :cond_3
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-virtual {p1, p4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-eq p2, v1, :cond_4

    invoke-virtual {p1, p5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 p4, 0x0

    cmpl-double p2, p6, p4

    if-eqz p2, :cond_6

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p6, p7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p4, Ljava/math/BigDecimal;

    const/4 p5, 0x2

    invoke-direct {p4, p5}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p2, p4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-ne p2, v3, :cond_5

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p6, p7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p4, Ljava/math/BigDecimal;

    invoke-direct {p4, p5}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p2, p4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zza([Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v3, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_3

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Lcom/google/android/gms/internal/zzatf;->zza([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    :goto_3
    if-ne v5, v3, :cond_9

    move-object v9, v7

    goto :goto_4

    :cond_9
    move-object v9, v0

    :goto_4
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_5
    return-object v0
.end method

.method zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;
    .locals 11

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v6, v1

    move-object v8, v2

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    :cond_6
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v7

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;D)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_1
    :cond_8
    :goto_2
    return-object v1
.end method

.method zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p2, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    sget-object v8, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqd:Ljava/util/Map;

    iget-object v9, v7, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    iput-object v8, v7, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    :cond_0
    iget-object v7, v7, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    sget-object v11, Lcom/google/android/gms/measurement/AppMeasurement$zze;->zzbqe:Ljava/util/Map;

    iget-object v12, v10, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    iput-object v11, v10, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    sget-object v7, Lcom/google/android/gms/measurement/AppMeasurement$zzg;->zzbqi:Ljava/util/Map;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    iput-object v7, v6, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V

    return-void
.end method

.method zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzb;[Lcom/google/android/gms/internal/zzauw$zzg;)[Lcom/google/android/gms/internal/zzauw$zza;
    .locals 38
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzatj;->zzfy(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/16 v16, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x40

    if-ge v7, v9, :cond_3

    iget-object v9, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/zzaut;->zza([JI)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v9

    move-object/from16 v17, v1

    const-string v1, "Filter already evaluated. audience ID, filter ID"

    move-object/from16 v18, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/zzaut;->zza([JI)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v8, v19

    goto :goto_1

    :cond_3
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    new-instance v1, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    new-instance v2, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    iget-object v1, v1, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v8

    const/4 v9, 0x2

    const/16 v17, 0x1

    if-eqz v11, :cond_13

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v7, v11

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_13

    aget-object v5, v11, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v8, v5, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v18, Lcom/google/android/gms/internal/zzatn;

    iget-object v3, v5, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    const-wide/16 v20, 0x1

    const-wide/16 v22, 0x1

    iget-object v1, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v26, v4

    move-object v8, v5

    move-wide/from16 v4, v20

    move-object/from16 v27, v6

    move/from16 v20, v7

    move-wide/from16 v6, v22

    move-object v12, v8

    move-object/from16 v11, v19

    const/4 v0, 0x2

    move-wide/from16 v8, v24

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_4

    :cond_5
    move/from16 v26, v4

    move-object v12, v5

    move-object/from16 v27, v6

    move/from16 v20, v7

    move-object/from16 v11, v19

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatn;->zzLV()Lcom/google/android/gms/internal/zzatn;

    move-result-object v18

    move-object/from16 v1, v18

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzatn;->zzbrA:J

    iget-object v3, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    move-object/from16 v4, v27

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    iget-object v5, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/zzatj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_6

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_6
    iget-object v5, v12, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Skipping failed audience ID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    if-nez v7, :cond_9

    new-instance v7, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9}, Ljava/util/BitSet;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v3

    move-object/from16 v3, v18

    check-cast v3, Lcom/google/android/gms/internal/zzauu$zzb;

    move-object/from16 v29, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v0, "Evaluating filter. audience, filter, event"

    move-object/from16 v30, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v31, v7

    iget-object v7, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    move-object/from16 v32, v11

    iget-object v11, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v7, v11}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v4, "Filter definition"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauu$zzb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    :goto_7
    iget-object v0, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x100

    if-le v0, v4, :cond_b

    goto :goto_9

    :cond_b
    iget-object v0, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v5, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v7, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    const/4 v5, 0x2

    invoke-direct {v0, v3, v12, v1, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Lcom/google/android/gms/internal/zzauu$zzb;Lcom/google/android/gms/internal/zzauw$zzb;J)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v11

    const-string v4, "Event filter result"

    if-nez v7, :cond_d

    const-string v18, "null"

    move-object/from16 v5, v18

    goto :goto_8

    :cond_d
    move-object v5, v7

    :goto_8
    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v7, :cond_e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    iget-object v4, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_a

    :cond_f
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Invalid event filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v7, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    :goto_a
    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v7, v31

    move-object/from16 v11, v32

    const/4 v0, 0x2

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    const/4 v0, 0x2

    goto/16 :goto_5

    :cond_12
    move-object/from16 v29, v4

    move-object/from16 v32, v11

    move-object/from16 v0, p0

    add-int/lit8 v4, v26, 0x1

    move/from16 v7, v20

    move-object/from16 v6, v29

    move-object/from16 v19, v32

    const/4 v9, 0x2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_3

    :cond_13
    move-object/from16 v32, v19

    move-object/from16 v1, p3

    if-eqz v1, :cond_21

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_21

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v6, v10, v7}, Lcom/google/android/gms/internal/zzatj;->zzW(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_14

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_14
    iget-object v7, v5, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v9

    const-string v11, "Skipping failed audience ID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/BitSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v1, v32

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    if-nez v9, :cond_17

    new-instance v9, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v9, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v33, v2

    move-object/from16 v2, v18

    check-cast v2, Lcom/google/android/gms/internal/zzauu$zze;

    move/from16 v34, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    move-object/from16 v35, v6

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v6, "Evaluating filter. audience, filter, property"

    move-object/from16 v36, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v37, v9

    iget-object v9, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v9, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v6, "Filter definition"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauu$zze;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_18
    move-object/from16 v36, v7

    move-object/from16 v37, v9

    :goto_e
    iget-object v3, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    iget-object v3, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x100

    if-le v3, v6, :cond_19

    goto :goto_11

    :cond_19
    iget-object v3, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v7, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v3, v7, v9, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    :goto_f
    move-object/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v9, v37

    move-object/from16 v10, p1

    goto/16 :goto_d

    :cond_1b
    invoke-direct {v0, v2, v5}, Lcom/google/android/gms/internal/zzatf;->zza(Lcom/google/android/gms/internal/zzauu$zze;Lcom/google/android/gms/internal/zzauw$zzg;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v9, "Property filter result"

    if-nez v3, :cond_1c

    const-string v10, "null"

    goto :goto_10

    :cond_1c
    move-object v10, v3

    :goto_10
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v3, :cond_1d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    iget-object v7, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v12, v7}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_f

    :cond_1e
    const/16 v6, 0x100

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v7, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7, v9, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1f
    move-object/from16 v33, v2

    move/from16 v34, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    const/16 v6, 0x100

    :goto_12
    move-object/from16 v32, v1

    move-object/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v1, p3

    move-object/from16 v10, p1

    goto/16 :goto_c

    :cond_20
    move-object/from16 v33, v2

    move/from16 v34, v3

    move-object/from16 v1, v32

    const/16 v6, 0x100

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p3

    move-object/from16 v10, p1

    goto/16 :goto_b

    :cond_21
    move-object/from16 v1, v32

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zza;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_13

    :cond_22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v6, :cond_23

    new-instance v6, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    :cond_23
    add-int/lit8 v7, v4, 0x1

    aput-object v6, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v6, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v4, v6, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v4, v6, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    iget-object v4, v6, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v6, v6, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    move-object/from16 v8, p1

    invoke-virtual {v4, v8, v5, v6}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauw$zzf;)V

    move v4, v7

    goto :goto_13

    :cond_24
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/zzauw$zza;

    return-object v1
.end method

.method protected zzmS()V
    .locals 0

    return-void
.end method
