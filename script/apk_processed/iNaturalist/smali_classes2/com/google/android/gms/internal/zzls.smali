.class public Lcom/google/android/gms/internal/zzls;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private final zzPS:Lcom/google/android/gms/internal/zzmn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzlq$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzls;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    return-void
.end method

.method private zzS(I)Lcom/google/android/gms/internal/zzpb;
    .locals 39

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v38, Lcom/google/android/gms/internal/zzpb;

    move-object/from16 v1, v38

    iget-object v2, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget v8, v3, Lcom/google/android/gms/internal/zzmn;->orientation:I

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v9, v3, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v11, v3, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide/from16 v21, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    move-wide/from16 v23, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v25, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPS:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move/from16 v33, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzls;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v34, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v1 .. v37}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v38
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzls;)Lcom/google/android/gms/internal/zzlq$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzls;->zzPQ:Lcom/google/android/gms/internal/zzlq$zza;

    return-object p0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzco()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzls;->zzS(I)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzls$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzls$1;-><init>(Lcom/google/android/gms/internal/zzls;Lcom/google/android/gms/internal/zzpb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
