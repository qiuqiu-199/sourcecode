.class public Lcom/google/android/gms/internal/zzaak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaak$zzb;,
        Lcom/google/android/gms/internal/zzaak$zza;
    }
.end annotation


# instance fields
.field private final zzaAG:Ljava/util/concurrent/locks/Lock;

.field private final zzaAL:Lcom/google/android/gms/common/internal/zzg;

.field private final zzaAM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/internal/zzaaj<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/internal/zzaaj<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaAO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAP:Lcom/google/android/gms/internal/zzaat;

.field private final zzaAQ:Lcom/google/android/gms/common/zze;

.field private final zzaAR:Ljava/util/concurrent/locks/Condition;

.field private final zzaAS:Z

.field private final zzaAT:Z

.field private final zzaAU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/internal/zzaad$zza<",
            "**>;>;"
        }
    .end annotation
.end field

.field private zzaAV:Z

.field private zzaAW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzzz<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

.field private zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzayX:Lcom/google/android/gms/internal/zzaax;

.field private final zzrs:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zze;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzaat;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zze;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzaag;",
            ">;",
            "Lcom/google/android/gms/internal/zzaat;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v3

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaag;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzaag;->zzaxf:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api$zze;->zzvh()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v19, v2

    const/16 v18, 0x1

    goto :goto_3

    :cond_2
    move/from16 v19, v2

    move/from16 v18, v3

    :goto_3
    const/16 v20, 0x1

    goto :goto_4

    :cond_3
    move/from16 v20, v1

    move/from16 v18, v3

    const/16 v19, 0x0

    :goto_4
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/zzaag;

    new-instance v8, Lcom/google/android/gms/internal/zzaaj;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object/from16 v5, v17

    move-object/from16 v7, p6

    move-object v14, v8

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzaaj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzaag;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v1, v20

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const/4 v15, 0x1

    :cond_6
    iput-boolean v15, v0, Lcom/google/android/gms/internal/zzaak;->zzaAT:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzaax;->zzww()Lcom/google/android/gms/internal/zzaax;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaj<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaj;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaj;->zzvU()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$zze;->zzvh()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/zze;->isUserResolvableError(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    return p1
.end method

.method private zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Api$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaaj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    return-object p0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzaad$zza<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;>(TT;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaat;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzzz;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaad$zza;->zzB(Lcom/google/android/gms/common/api/Status;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaak;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAT:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvX()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzaak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvV()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzaak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvW()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/internal/zzaat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    return-object p0
.end method

.method private zzvV()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaat;->zzaBR:Ljava/util/Set;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzg;->zzxL()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzg;->zzxN()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzaak;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzg$zza;->zzakq:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaat;->zzaBR:Ljava/util/Set;

    return-void
.end method

.method private zzvW()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaad$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaat;->zzo(Landroid/os/Bundle;)V

    return-void
.end method

.method private zzvX()Lcom/google/android/gms/common/ConnectionResult;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaaj;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/zze;->isUserResolvableError(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v6

    if-eqz v1, :cond_3

    if-le v4, v6, :cond_0

    :cond_3
    move-object v1, v5

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v6

    if-eqz v2, :cond_5

    if-le v3, v6, :cond_0

    :cond_5
    move-object v2, v5

    move v3, v6

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    if-le v3, v4, :cond_7

    return-object v1

    :cond_7
    return-object v2
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->connect()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnecting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnecting()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->disconnect()V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public connect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzadb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzadb;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaak$zza;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzaak$zza;-><init>(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzaak$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaak$zzb;->cancel()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaad$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaad$zza;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaad$zza;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaak;->zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzaBW:Lcom/google/android/gms/internal/zzaby;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaby;->zzb(Lcom/google/android/gms/internal/zzaaf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaaj;->doRead(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzabq;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->zzvN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    new-instance v0, Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaak$zzb;-><init>(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzabq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzadb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzadb;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaak;->zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaat;->zzaBW:Lcom/google/android/gms/internal/zzaby;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaby;->zzb(Lcom/google/android/gms/internal/zzaaf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaaj;->doWrite(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    return-object p1
.end method

.method public zzvM()V
    .locals 0

    return-void
.end method

.method public zzvN()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzvn()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaak$zzb;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaaj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method