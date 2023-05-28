.class public Lcom/google/android/gms/internal/zzjy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzKY:Lcom/google/android/gms/internal/zzjr;

.field private final zzLa:Z

.field private final zzLo:Lcom/google/android/gms/internal/zzmk;

.field private final zzLp:J

.field private final zzLq:J

.field private zzLs:Z

.field private zzLu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;"
        }
    .end annotation
.end field

.field private zzLy:Lcom/google/android/gms/internal/zzju;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzsn:Lcom/google/android/gms/internal/zzgl;

.field private final zzsz:Lcom/google/android/gms/internal/zzka;

.field private final zzwf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzjr;ZZJJLcom/google/android/gms/internal/zzgl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjy;->zzLs:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzLu:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjy;->zzsz:Lcom/google/android/gms/internal/zzka;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjy;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzjy;->zzwf:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzjy;->zzLa:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzjy;->zzLp:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzjy;->zzLq:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjy;->zzLs:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjy;->zzLy:Lcom/google/android/gms/internal/zzju;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjy;->zzLy:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzju;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzjv;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjq;",
            ">;)",
            "Lcom/google/android/gms/internal/zzjv;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Starting mediation."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzjq;

    const-string v6, "Trying mediation network: "

    iget-object v7, v4, Lcom/google/android/gms/internal/zzjq;->zzKo:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/zzpk;->zzbg(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/zzjq;->zzKp:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v14

    iget-object v13, v1, Lcom/google/android/gms/internal/zzjy;->zzrJ:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-boolean v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLs:Z

    if-eqz v6, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzjv;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzjv;-><init>(I)V

    monitor-exit v13

    return-object v0

    :cond_2
    new-instance v12, Lcom/google/android/gms/internal/zzju;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzjy;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/google/android/gms/internal/zzjy;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v10, v1, Lcom/google/android/gms/internal/zzjy;->zzKY:Lcom/google/android/gms/internal/zzjr;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v11, v6, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-boolean v5, v1, Lcom/google/android/gms/internal/zzjy;->zzwf:Z

    move-object/from16 v20, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzjy;->zzLa:Z

    move-object/from16 v21, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v22, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLo:Lcom/google/android/gms/internal/zzmk;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzmk;->zzvK:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v6

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object v6, v12

    move-object/from16 v21, v8

    move-object v8, v15

    move-object/from16 v22, v11

    move-object v11, v4

    move-object/from16 v23, v4

    move-object v4, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v13

    move-object/from16 v13, v21

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v14, v16

    move-object/from16 v25, v2

    move-object v2, v15

    move v15, v5

    move/from16 v16, v3

    :try_start_1
    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/internal/zzju;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzqh;ZZLcom/google/android/gms/internal/zzhc;Ljava/util/List;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/zzjy;->zzLy:Lcom/google/android/gms/internal/zzju;

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v1, Lcom/google/android/gms/internal/zzjy;->zzLy:Lcom/google/android/gms/internal/zzju;

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzjy;->zzLp:J

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzjy;->zzLq:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzju;->zza(JJ)Lcom/google/android/gms/internal/zzjv;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/zzjy;->zzLu:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/google/android/gms/internal/zzjv;->zzLh:I

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const-string v4, "Adapter succeeded."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    const-string v6, "mediation_network_succeed"

    invoke-virtual {v4, v6, v2}, Lcom/google/android/gms/internal/zzgl;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    const-string v4, "mediation_networks_fail"

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/zzgl;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v6, "mls"

    aput-object v6, v2, v5

    move-object/from16 v6, v25

    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "ttm"

    aput-object v4, v2, v5

    move-object/from16 v7, v24

    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    return-object v3

    :cond_4
    move-object/from16 v7, v24

    move-object/from16 v6, v25

    const/4 v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    new-array v8, v4, [Ljava/lang/String;

    const-string v4, "mlf"

    aput-object v4, v8, v5

    invoke-virtual {v2, v6, v8}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iget-object v2, v3, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzjy$1;

    invoke-direct {v4, v1, v3}, Lcom/google/android/gms/internal/zzjy$1;-><init>(Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/internal/zzjv;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    move-object v2, v7

    move-object/from16 v3, v20

    move-object/from16 v4, v23

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v22, v13

    :goto_2
    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/google/android/gms/internal/zzjy;->zzsn:Lcom/google/android/gms/internal/zzgl;

    const-string v3, "mediation_networks_fail"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzgl;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzjv;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzjv;-><init>(I)V

    return-object v0
.end method

.method public zzgU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzLu:Ljava/util/List;

    return-object v0
.end method
