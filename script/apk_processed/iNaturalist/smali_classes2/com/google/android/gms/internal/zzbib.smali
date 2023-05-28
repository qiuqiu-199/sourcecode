.class public Lcom/google/android/gms/internal/zzbib;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbib$zzc;,
        Lcom/google/android/gms/internal/zzbib$zzb;,
        Lcom/google/android/gms/internal/zzbib$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbFy:Ljava/lang/String;

.field private final zzbLT:Lcom/google/android/gms/internal/zzbig;

.field final zzbLU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbib$zzc<",
            "Lcom/google/android/gms/internal/zzbio;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbLV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbim;",
            ">;"
        }
    .end annotation
.end field

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbig;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzbig;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbib;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzbig;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzbig;Lcom/google/android/gms/common/util/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbim;",
            ">;",
            "Lcom/google/android/gms/internal/zzbig;",
            "Lcom/google/android/gms/common/util/zze;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbib;->zzbFy:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbib;->zzbLU:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbib;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbib;->zzuP:Lcom/google/android/gms/common/util/zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbib;->zzbLT:Lcom/google/android/gms/internal/zzbig;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbib;->zzbLV:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbib;)Lcom/google/android/gms/internal/zzbig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbib;->zzbLT:Lcom/google/android/gms/internal/zzbig;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbie;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzbib$zza;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to fetch container "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a saved resource"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v11, v1, Lcom/google/android/gms/internal/zzbib;->zzbLT:Lcom/google/android/gms/internal/zzbig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->zzSF()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Lcom/google/android/gms/internal/zzbib$zzb;

    sget-object v6, Lcom/google/android/gms/internal/zzbid;->zzbMb:Lcom/google/android/gms/internal/zzbic;

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v2, v12

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzbib$zzb;-><init>(Lcom/google/android/gms/internal/zzbib;ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    invoke-virtual {v11, v0, v12}, Lcom/google/android/gms/internal/zzbig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbie;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzbib$zza;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to fetch container "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from the default resource"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    move-object v1, p0

    iget-object v11, v1, Lcom/google/android/gms/internal/zzbib;->zzbLT:Lcom/google/android/gms/internal/zzbig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->zzSF()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->zzSD()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lcom/google/android/gms/internal/zzbib$zzb;

    sget-object v6, Lcom/google/android/gms/internal/zzbid;->zzbMb:Lcom/google/android/gms/internal/zzbic;

    const/4 v4, 0x2

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzbib$zzb;-><init>(Lcom/google/android/gms/internal/zzbib;ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    invoke-virtual {v11, v12, v0, v13}, Lcom/google/android/gms/internal/zzbig;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 16
    .param p5    # Lcom/google/android/gms/internal/zzbbd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbie;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzbib$zza;",
            "Lcom/google/android/gms/internal/zzbbd;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    iget-object v1, v9, Lcom/google/android/gms/internal/zzbib;->zzbLU:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbib$zzc;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbhx;->zzSG()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbib$zzc;->zzSJ()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    iget-object v1, v9, Lcom/google/android/gms/internal/zzbib;->zzbLT:Lcom/google/android/gms/internal/zzbig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbig;->zzhU(Ljava/lang/String;)J

    move-result-wide v1

    :goto_1
    const-wide/32 v4, 0xdbba0

    add-long/2addr v1, v4

    iget-object v4, v9, Lcom/google/android/gms/internal/zzbib;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/google/android/gms/internal/zzbib;->zzbLV:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbie;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbim;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzbim;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbim;-><init>()V

    iget-object v2, v9, Lcom/google/android/gms/internal/zzbib;->zzbLV:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbie;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v10, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Attempting to fetch container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from network"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/internal/zzbib;->mContext:Landroid/content/Context;

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/google/android/gms/internal/zzbib$zzb;

    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzbid;->zzbMb:Lcom/google/android/gms/internal/zzbic;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbib$zzb;-><init>(Lcom/google/android/gms/internal/zzbib;ILcom/google/android/gms/internal/zzbie;Lcom/google/android/gms/internal/zzbic;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/zzbim;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbie;JLcom/google/android/gms/internal/zzbia;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbib;->zza(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    :goto_3
    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzbif$zza;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbif$zza;->zzSP()Lcom/google/android/gms/internal/zzbhx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbif$zza;->zzSQ()Lcom/google/android/gms/internal/zzbio;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbib;->zzbLU:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbib;->zzbLU:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbib$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbib;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbib$zzc;->zzaC(J)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbib$zzc;->zzbO(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbib$zzc;->zzY(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbib;->zzbLU:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/zzbib$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbib;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/google/android/gms/internal/zzbib$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 2
    .param p5    # Lcom/google/android/gms/internal/zzbbd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbie;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzbib$zza;",
            "Lcom/google/android/gms/internal/zzbbd;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const-string v0, "Starting to fetch a new resource"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    const-string p5, "There is no valid resource for the container: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbie;->zzSK()Lcom/google/android/gms/internal/zzbhx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbhx;->getContainerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    new-instance p5, Lcom/google/android/gms/internal/zzbif;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p5, v0, p1}, Lcom/google/android/gms/internal/zzbif;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-interface {p4, p5}, Lcom/google/android/gms/internal/zzbib$zza;->zza(Lcom/google/android/gms/internal/zzbif;)V

    return-void

    :cond_2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/16 p2, 0x24

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown fetching source: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbib;->zzb(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbib;->zza(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;)V

    goto :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbib;->zzb(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 14
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/zzbib$zza;",
            "Lcom/google/android/gms/internal/zzbbd;",
            ")V"
        }
    .end annotation

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbie;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzbhx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbib;->zzhT(Ljava/lang/String;)Z

    move-result v5

    invoke-static {}, Lcom/google/android/gms/internal/zzbbz;->zzSg()Lcom/google/android/gms/internal/zzbbz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbbz;->zzSh()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbhx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzbie;->zza(Lcom/google/android/gms/internal/zzbhx;)Lcom/google/android/gms/internal/zzbie;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-object v8, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/zzbib;->zza(Lcom/google/android/gms/internal/zzbie;Ljava/util/List;ILcom/google/android/gms/internal/zzbib$zza;Lcom/google/android/gms/internal/zzbbd;)V

    return-void
.end method

.method zzhT(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbbz;->zzSg()Lcom/google/android/gms/internal/zzbbz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbz;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbz;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
