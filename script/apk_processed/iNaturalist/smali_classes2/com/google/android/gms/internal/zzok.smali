.class public Lcom/google/android/gms/internal/zzok;
.super Lcom/google/android/gms/internal/zzpj;

# interfaces
.implements Lcom/google/android/gms/internal/zzoj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private final zzVG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final zzVH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzVI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzoe;",
            ">;"
        }
    .end annotation
.end field

.field private final zzVJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzof;",
            ">;"
        }
    .end annotation
.end field

.field private final zzVK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzVL:Lcom/google/android/gms/internal/zzns;

.field private final zzVv:J

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCO:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzok;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;J)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzVG:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzVK:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzok;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzok;->zzVL:Lcom/google/android/gms/internal/zzns;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzok;->zzVv:J

    return-void
.end method

.method private static zzT(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x6

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzok;)Lcom/google/android/gms/internal/zzns;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzok;->zzVL:Lcom/google/android/gms/internal/zzns;

    return-object p0
.end method

.method private zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzpb;
    .locals 41
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzjq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    new-instance v38, Lcom/google/android/gms/internal/zzpb;

    move-object/from16 v1, v38

    iget-object v2, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget v8, v3, Lcom/google/android/gms/internal/zzmn;->orientation:I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-wide v9, v3, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v11, v3, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWc:Lcom/google/android/gms/internal/zzjr;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v39, v1

    move-object/from16 v40, v2

    iget-wide v1, v3, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move/from16 v33, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v34, v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzok;->zzjM()Ljava/lang/String;

    move-result-object v35

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzKI:Ljava/util/List;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    move-object/from16 v37, v1

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct/range {v1 .. v37}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v38
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzpb;
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzok;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzpb;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzof;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzof;->zzKq:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzof;->errorCode:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzok;->zzT(I)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzof;->zzLn:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVL:Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzns;->zzaN(Ljava/lang/String;)Lcom/google/android/gms/internal/zzol;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzol;->zzjO()Lcom/google/android/gms/internal/zzoi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/zzok;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzol;)Lcom/google/android/gms/internal/zzoe;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzok;->zzVG:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzpj;->zziP()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzof$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzof$zza;-><init>()V

    iget-object p3, p3, Lcom/google/android/gms/internal/zzjq;->zzKq:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/zzof$zza;->zzaQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzof$zza;->zzaP(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzof$zza;->zzl(J)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzof$zza;->zzae(I)Lcom/google/android/gms/internal/zzof$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzof$zza;->zzjK()Lcom/google/android/gms/internal/zzof;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zzjL()Lcom/google/android/gms/internal/zzpb;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/gms/internal/zzok;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    return-object v0
.end method

.method private zzjM()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzof;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/zzof;->zzKq:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzok;->zza(Lcom/google/android/gms/internal/zzof;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzol;)Lcom/google/android/gms/internal/zzoe;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/zzoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzok;->zzVv:J

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzoe;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzol;Lcom/google/android/gms/internal/zzoj;J)V

    return-object v10
.end method

.method public zza(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public zzaO(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVK:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzco()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzok;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb$zza;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjr;->zzKD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjq;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjq;->zzKv:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjq;->zzKp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "class_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-direct {p0, v4, v2, v1}, Lcom/google/android/gms/internal/zzok;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;)V

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Unable to determine custom event class name, skipping..."

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzoe;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzoe;->zzjH()Lcom/google/android/gms/internal/zzof;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVK:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzoe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzoe;->zzjI()Lcom/google/android/gms/internal/zzjq;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzok;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzok$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzok$1;-><init>(Lcom/google/android/gms/internal/zzok;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :cond_6
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "Unable to resolve rewarded adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzoe;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzoe;->zzjH()Lcom/google/android/gms/internal/zzof;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catch_2
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoe;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoe;->zzjH()Lcom/google/android/gms/internal/zzof;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit v1

    goto :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzok;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVH:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVI:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoe;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzok;->zzVJ:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoe;->zzjH()Lcom/google/android/gms/internal/zzof;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1

    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzok;->zzjL()Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzok$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzok$2;-><init>(Lcom/google/android/gms/internal/zzok;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
