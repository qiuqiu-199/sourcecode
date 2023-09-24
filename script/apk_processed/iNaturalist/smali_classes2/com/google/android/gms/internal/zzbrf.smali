.class public Lcom/google/android/gms/internal/zzbrf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbrf$zzb;,
        Lcom/google/android/gms/internal/zzbrf$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static zzciz:Lcom/google/android/gms/internal/zzbrj$zza;


# instance fields
.field private final zzciy:Lcom/google/android/gms/internal/zzbrj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbrf$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbrf$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrf;->zzciz:Lcom/google/android/gms/internal/zzbrj$zza;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 12

    move-object v0, p1

    move-object v1, p2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/zzbsc;

    move-object v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v4

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/zzbsc;

    move-object v5, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_3
    return-object v6
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, p3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzboy;->zzYr()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v5, p1

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/zzbph;

    new-array v4, v7, [Lcom/google/android/gms/internal/zzbrq;

    aput-object v8, v4, v6

    invoke-direct {v10, v4}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    move-object/from16 v4, p0

    move-object v6, v10

    move-object v7, v9

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v5

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbrq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzboy;->zzYp()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v5, :cond_4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzboy;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzboy;->zzb(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v11

    new-instance v10, Lcom/google/android/gms/internal/zzbph;

    new-array v3, v7, [Lcom/google/android/gms/internal/zzbrq;

    aput-object v4, v3, v6

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    move-object/from16 v8, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object v3

    move-object v9, v3

    goto :goto_2

    :cond_6
    return-object v9
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/internal/zzbrr;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p4

    :goto_0
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/zzbpz;->zzd(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/zzbpz;->zzc(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    :goto_1
    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzbrj;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-interface {p4, v1, p3, p5}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p5

    invoke-virtual {p3, p2, p4, p5}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {p3, p2, v2, v1}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-interface {v1, v5, p3}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v1

    invoke-virtual {p3, v3, v1}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    :goto_2
    move-object v4, p3

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p3

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p2, 0x1

    :goto_5
    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzbre;->zza(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbre;",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbqq<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/zzbpz;",
            "Lcom/google/android/gms/internal/zzbsc;",
            "Lcom/google/android/gms/internal/zzbrg;",
            ")",
            "Lcom/google/android/gms/internal/zzbre;"
        }
    .end annotation

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzbpz;->zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbqu;->zzM(Lcom/google/android/gms/internal/zzbph;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, p3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzbsb;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbsb;->zzabj()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbsb;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/google/android/gms/internal/zzboy;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    :cond_5
    return-object p1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/zzboy;->zzYo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbqq;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v4, v1

    :cond_7
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbqu;->zzM(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/zzboy;->zze(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v4

    goto :goto_1

    :cond_8
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/zzbrf$zzb;

    invoke-direct {v6, p4, p1, p5}, Lcom/google/android/gms/internal/zzbrf$zzb;-><init>(Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbrj;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p4

    invoke-interface {p3, p4, p2, p6}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p2

    const/4 p3, 0x1

    :goto_0
    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result p4

    :goto_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbre;->zza(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result p4

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    :goto_2
    move-object v4, p3

    goto :goto_3

    :cond_2
    invoke-interface {v6, v3}, Lcom/google/android/gms/internal/zzbrj$zza;->zzh(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbph;->zzYU()Lcom/google/android/gms/internal/zzbph;

    move-result-object p5

    invoke-interface {p4, p5}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p5

    invoke-interface {p5}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    move-object v4, p4

    goto :goto_3

    :cond_3
    invoke-interface {p4, v5, p3}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p3

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p3

    goto :goto_2

    :goto_3
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p3

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 14

    move-object v6, p0

    move-object v0, p1

    move-object/from16 v1, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v2

    if-eqz p6, :cond_0

    iget-object v3, v6, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    goto :goto_0

    :cond_0
    iget-object v3, v6, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbrj;->zzaaz()Lcom/google/android/gms/internal/zzbrj;

    move-result-object v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbrj;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    :goto_1
    invoke-interface {v3, v4, v1, v7}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    move-object/from16 v4, p2

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v9

    invoke-interface {v9, v8, v1}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lcom/google/android/gms/internal/zzbrx;->zzh(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v9

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzbqu;->zzM(Lcom/google/android/gms/internal/zzbph;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result v7

    if-le v7, v5, :cond_3

    return-object v0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v7

    invoke-interface {v7, v11, v1}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-interface {v3, v1, v10}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v8

    sget-object v12, Lcom/google/android/gms/internal/zzbrf;->zzciz:Lcom/google/android/gms/internal/zzbrj$zza;

    const/4 v13, 0x0

    move-object v7, v3

    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_3
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result v2

    invoke-virtual {p1, v1, v5, v2}, Lcom/google/android/gms/internal/zzbre;->zzb(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/zzbrf$zzb;

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    invoke-direct {v5, v3, v1, v0}, Lcom/google/android/gms/internal/zzbrf$zzb;-><init>(Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbsc;)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v4, v5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbre;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbre;",
            "Lcom/google/android/gms/internal/zzbre;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaav()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaav()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbqw;->zza(Lcom/google/android/gms/internal/zzbrx;)Lcom/google/android/gms/internal/zzbqw;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbrq;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result p0

    return p0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Lcom/google/android/gms/internal/zzbre;->zzb(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/internal/zzbrf;->zzciz:Lcom/google/android/gms/internal/zzbrj$zza;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;
    .locals 8

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/zzbrf$zzb;

    invoke-direct {v6, p3, p1, p4}, Lcom/google/android/gms/internal/zzbrf$zzb;-><init>(Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    invoke-interface {p4, v3}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    :cond_2
    move-object v4, p4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v5

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrj$zza;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    invoke-interface {p4, v3}, Lcom/google/android/gms/internal/zzbsc;->zzk(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrx;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzc(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzc(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzd(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    :goto_3
    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p4}, Lcom/google/android/gms/internal/zzbrj;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p4, v2, p2, p5}, Lcom/google/android/gms/internal/zzbrj;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqu;->zzZQ()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzbpz;->zzv(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p2, 0x1

    :goto_5
    iget-object p3, p0, Lcom/google/android/gms/internal/zzbrf;->zzciy:Lcom/google/android/gms/internal/zzbrj;

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbrj;->zzaaA()Z

    move-result p3

    invoke-virtual {p1, v2, p2, p3}, Lcom/google/android/gms/internal/zzbre;->zza(Lcom/google/android/gms/internal/zzbrx;ZZ)Lcom/google/android/gms/internal/zzbre;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbqe;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrf$zza;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/zzbrg;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzbrg;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbrf$2;->zzciA:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqe;->zzZz()Lcom/google/android/gms/internal/zzbqe$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqe$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqe;->zzZz()Lcom/google/android/gms/internal/zzbqe$zza;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x13

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unknown operation: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqe;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbrf;->zzb(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_1
    check-cast p2, Lcom/google/android/gms/internal/zzbqb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqb;->zzZw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqb;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqb;->zzZv()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqb;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto/16 :goto_4

    :pswitch_2
    check-cast p2, Lcom/google/android/gms/internal/zzbqd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZA()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzZx()Lcom/google/android/gms/internal/zzboy;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZC()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqd;->zzZx()Lcom/google/android/gms/internal/zzboy;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto :goto_4

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzbqg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZA()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzZE()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqf;->zzZC()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzZR()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v6, 0x1

    :goto_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqg;->zzZE()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbsc;ZLcom/google/android/gms/internal/zzbrg;)Lcom/google/android/gms/internal/zzbre;

    move-result-object p2

    :goto_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbrg;->zzaay()Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbrf;->zza(Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbre;Ljava/util/List;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbrf$zza;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzbrf$zza;-><init>(Lcom/google/android/gms/internal/zzbre;Ljava/util/List;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
