.class public Lcom/google/android/gms/internal/zzns;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/zzoh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static zzVk:Lcom/google/android/gms/internal/zzns;

.field private static final zzVl:Lcom/google/android/gms/internal/zzjz;


# instance fields
.field private final zzVm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzol;",
            ">;"
        }
    .end annotation
.end field

.field private zzVn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzns;->zzVl:Lcom/google/android/gms/internal/zzjz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    sput-object p0, Lcom/google/android/gms/internal/zzns;->zzVk:Lcom/google/android/gms/internal/zzns;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzns;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzns;->zzh(I)V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzpb$zza;
    .locals 41

    move-object/from16 v1, p1

    const-string v0, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznd;->zzb(Lcom/google/android/gms/internal/zzmn;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pubid"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzmk;->zzvl:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/internal/zzjq;

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/String;

    const-string v6, "com.google.ads.mediation.admob.AdMobAdapter"

    const/16 v20, 0x0

    aput-object v6, v5, v20

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/zzjq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzjr;

    move-object/from16 v21, v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzjq;

    aput-object v0, v3, v20

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDM:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v26

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    const-string v30, ""

    const-wide/16 v31, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, -0x1

    const-wide/16 v38, -0x1

    const/16 v40, 0x0

    invoke-direct/range {v21 .. v40}, Lcom/google/android/gms/internal/zzjr;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget v6, v1, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I

    iget-wide v7, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    iget-wide v9, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWh:J

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    move-object/from16 v31, v1

    invoke-direct/range {v21 .. v31}, Lcom/google/android/gms/internal/zzpb$zza;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzns;->zze(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzpb$zza;

    move-result-object v0

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzpb$zza;
    .locals 12

    new-instance v11, Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWh:J

    iget-object v10, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWa:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzpb$zza;-><init>(Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzeg;IJJLorg/json/JSONObject;)V

    return-object v11
.end method

.method public static zzjE()Lcom/google/android/gms/internal/zzns;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzns;->zzVk:Lcom/google/android/gms/internal/zzns;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzol;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzkb;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to destroy adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvp:Lcom/google/android/gms/internal/zzpj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzns;->zzVn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzol;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzkb;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->zzbG()V

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->zzbH()V

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzpb;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->zzbI()V

    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzjq;->zzKw:Ljava/util/List;

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzjw;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->zzbK()V

    return-void
.end method

.method public pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzol;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzkb;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to pause adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzol;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzkb;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "Fail to resume adapter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzoa;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzoa;->zzvl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Invalid ad unit id. Aborting."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzns$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzns$1;-><init>(Lcom/google/android/gms/internal/zzns;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzns;->zzVn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzoa;->zzvl:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvl:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzoa;->zzRy:Lcom/google/android/gms/internal/zzec;

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Lcom/google/android/gms/internal/zzec;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
    .locals 2

    iget p2, p1, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzns$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzns$2;-><init>(Lcom/google/android/gms/internal/zzns;Lcom/google/android/gms/internal/zzpb$zza;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/zzx;->zzvt:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWc:Lcom/google/android/gms/internal/zzjr;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzns;->zzd(Lcom/google/android/gms/internal/zzpb$zza;)Lcom/google/android/gms/internal/zzpb$zza;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/gms/ads/internal/zzx;->zzvt:Lcom/google/android/gms/internal/zzpb$zza;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    const/4 p2, 0x0

    iput p2, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvO:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcL()Lcom/google/android/gms/internal/zzlq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvt:Lcom/google/android/gms/internal/zzpb$zza;

    invoke-virtual {p2, v0, v1, p0}, Lcom/google/android/gms/internal/zzlq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzpq;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzpb;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public zzaN(Ljava/lang/String;)Lcom/google/android/gms/internal/zzol;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzol;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzsz:Lcom/google/android/gms/internal/zzka;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzns;->zzVl:Lcom/google/android/gms/internal/zzjz;

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzol;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzka;->zzas(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/google/android/gms/internal/zzol;-><init>(Lcom/google/android/gms/internal/zzkb;Lcom/google/android/gms/internal/zzoh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzVm:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method protected zzbG()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzbG()V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzoo;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/zzoo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvl:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzjq;->zzKx:Ljava/util/List;

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzjw;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzpb;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzoo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb;->zzWc:Lcom/google/android/gms/internal/zzjr;

    iget v1, v1, Lcom/google/android/gms/internal/zzjr;->zzKN:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzoo;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzns;->zza(Lcom/google/android/gms/internal/zzoo;)V

    return-void
.end method

.method public zzjF()V
    .locals 2

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzns;->zzVn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpb;->zzLk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzns;->zzaN(Ljava/lang/String;)Lcom/google/android/gms/internal/zzol;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzol;->zzjN()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkb;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public zzjG()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzns;->onAdClicked()V

    return-void
.end method
