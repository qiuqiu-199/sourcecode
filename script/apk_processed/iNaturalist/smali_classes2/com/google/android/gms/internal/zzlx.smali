.class public Lcom/google/android/gms/internal/zzlx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlx$zzb;,
        Lcom/google/android/gms/internal/zzlx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzpb;",
        ">;"
    }
.end annotation


# static fields
.field static zzQl:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzGN:Lcom/google/android/gms/internal/zzlw;

.field private final zzGP:Lcom/google/android/gms/internal/zzaw;

.field private final zzPR:Lcom/google/android/gms/internal/zzpb$zza;

.field private zzPY:I

.field private final zzQu:Lcom/google/android/gms/internal/zzpv;

.field private final zzQv:Lcom/google/android/gms/ads/internal/zzs;

.field private zzQw:Z

.field private zzQx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzQy:Lorg/json/JSONObject;

.field private zzQz:Ljava/lang/String;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzsn:Lcom/google/android/gms/internal/zzgl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzlx;->zzQl:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpv;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlx;->zzQv:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlx;->zzQu:Lcom/google/android/gms/internal/zzpv;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlx;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlx;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual {p0, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zzlx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzlw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlw;->zziT()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->zzQw:Z

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/zzlx;->zzPY:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzQx:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzQz:Ljava/lang/String;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzlx$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzha$zza;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx;->zzjf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "tracking_urls_and_actions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "impression_tracking_urls"

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzlx;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzQx:Ljava/util/List;

    const-string v2, "active_view"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzQy:Lorg/json/JSONObject;

    const-string v0, "debug_signals"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzQz:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/zzlx$zza;->zza(Lcom/google/android/gms/internal/zzlx;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzha$zza;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to retrieve ad assets."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzhb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlx;->zzQv:Lcom/google/android/gms/ads/internal/zzs;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlx;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v9, v1, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    move-object v2, v0

    move-object v7, p2

    move-object v8, p1

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzhb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzlw;Lcom/google/android/gms/internal/zzaw;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzha$zza;->zzb(Lcom/google/android/gms/internal/zzha;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlx;)Lcom/google/android/gms/internal/zzpb$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    return-object p0
.end method

.method private zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzqm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "is_transparent"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlx;->zza(IZ)V

    new-instance p1, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzqk;

    new-instance p2, Lcom/google/android/gms/internal/zzgu;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, v1, p3, v4, v5}, Lcom/google/android/gms/internal/zzgu;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzQu:Lcom/google/android/gms/internal/zzpv;

    new-instance p3, Lcom/google/android/gms/internal/zzlx$6;

    move-object v1, p3

    move-object v2, p0

    move v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzlx$6;-><init>(Lcom/google/android/gms/internal/zzlx;ZDZLjava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/zzpv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpv$zza;)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzha$zza;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzgx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzgx;

    new-instance v0, Lcom/google/android/gms/internal/zzlx$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlx$zzb;-><init>(Lcom/google/android/gms/internal/zzlx;)V

    new-instance v1, Lcom/google/android/gms/internal/zzlx$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzlx$3;-><init>(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/internal/zzgx;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzlx$zzb;->zzQU:Lcom/google/android/gms/internal/zzid;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    new-instance v0, Lcom/google/android/gms/internal/zzlx$4;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzlx$4;-><init>(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/internal/zzid;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlw;->zza(Lcom/google/android/gms/internal/zzlw$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/internal/zzhn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzhn;Ljava/lang/String;)V

    return-void
.end method

.method private zzaH(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx;->zzjf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzlx$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlx$zzb;-><init>(Lcom/google/android/gms/internal/zzlx;)V

    new-instance v2, Lcom/google/android/gms/internal/zzlx$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzlx$1;-><init>(Lcom/google/android/gms/internal/zzlx;Ljava/lang/String;Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/internal/zzqj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzlw;->zza(Lcom/google/android/gms/internal/zzlw$zza;)V

    sget-wide v1, Lcom/google/android/gms/internal/zzlx;->zzQl:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzqj;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlx;)Lcom/google/android/gms/ads/internal/zzs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlx;->zzQv:Lcom/google/android/gms/ads/internal/zzs;

    return-object p0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzha$zza;)Lcom/google/android/gms/internal/zzpb;
    .locals 41

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzrJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Lcom/google/android/gms/internal/zzlx;->zzPY:I

    const/4 v3, -0x2

    if-nez p1, :cond_0

    iget v5, v1, Lcom/google/android/gms/internal/zzlx;->zzPY:I

    if-ne v5, v3, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v3, :cond_1

    const/4 v0, 0x0

    move-object/from16 v32, v0

    goto :goto_1

    :cond_1
    move-object/from16 v32, p1

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/zzpb;

    move-object v4, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    const/4 v6, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v2, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    iget-object v10, v1, Lcom/google/android/gms/internal/zzlx;->zzQx:Ljava/util/List;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget v11, v2, Lcom/google/android/gms/internal/zzmn;->orientation:I

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-wide v12, v2, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v14, v2, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v23, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide/from16 v24, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWg:J

    move-wide/from16 v26, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWh:J

    move-wide/from16 v28, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzQy:Lorg/json/JSONObject;

    move-object/from16 v31, v2

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    move/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v37, v2

    const/16 v38, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmn;->zzKI:Ljava/util/List;

    move-object/from16 v39, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzlx;->zzQz:Ljava/lang/String;

    move-object/from16 v40, v2

    invoke-direct/range {v4 .. v40}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjr;Lcom/google/android/gms/internal/zzjt;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static zzb(Lcom/google/android/gms/internal/zzqm;)Lcom/google/android/gms/internal/zzqw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;)",
            "Lcom/google/android/gms/internal/zzqw;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEs:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzqm;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzqw;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Exception occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "InterruptedException occurred while waiting for video to load"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "r"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "g"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, v0, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzhn;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzQv:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzhn;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzs;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzhr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzhr;->zza(Lcom/google/android/gms/internal/zzhn;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private zzd(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static zzh(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgu;->zzfP()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic zzi(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlx;->zzh(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx;->zzje()Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    return-object v0
.end method

.method public zzU(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzlx;->zzQw:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzlx;->zzPY:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzlw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzlw;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzlw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzaw;)V

    return-object v0
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/zzly;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzly;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzly;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzs;)V

    return-object v6
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzqm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    goto :goto_1

    :cond_2
    const/4 p5, 0x1

    :goto_1
    if-ge v0, p5, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p2

    :cond_5
    :goto_2
    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/zzlx;->zza(IZ)V

    return-object p2
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "require"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    return-object p1
.end method

.method public zza(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlx;->zzU(I)V

    :cond_0
    return-void
.end method

.method protected zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlx$zza;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx;->zzjf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzhc;->zzHa:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/zzhc;->zzHc:Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v5, "2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzlz;

    invoke-direct {p1, v2, v4}, Lcom/google/android/gms/internal/zzlz;-><init>(ZZ)V

    return-object p1

    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzma;

    invoke-direct {p1, v2, v4}, Lcom/google/android/gms/internal/zzma;-><init>(ZZ)V

    return-object p1

    :cond_4
    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "custom_template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzqj;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzlx$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/google/android/gms/internal/zzlx$2;-><init>(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/internal/zzqj;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v4, Lcom/google/android/gms/internal/zzlx;->zzQl:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/internal/zzqj;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzmb;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzmb;-><init>(Z)V

    return-object p1

    :cond_5
    const-string v0, "No handler for custom template: "

    const-string v2, "custom_template_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzlx;->zzU(I)V

    :cond_8
    :goto_3
    return-object v1
.end method

.method public zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v0, "vast_xml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Required field \'vast_xml\' is missing"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzGP:Lcom/google/android/gms/internal/zzaw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlx;->zzsn:Lcom/google/android/gms/internal/zzgl;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlx;->zzQv:Lcom/google/android/gms/ads/internal/zzs;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/zzly;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzly;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzqm;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzqm<",
            "Lcom/google/android/gms/internal/zzgs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzqk;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "text"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text_size"

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "text_color"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzlx;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "bg_color"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzlx;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animation_ms"

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "presentation_ms"

    const/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->versionCode:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx;->zzPR:Lcom/google/android/gms/internal/zzpb$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->zzHd:I

    move v11, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v11, 0x1

    :goto_0
    const-string v1, "allow_pub_rendering"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "images"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "images"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v3, "image"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/google/android/gms/internal/zzlx;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzqm;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzql;->zzo(Ljava/util/List;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlx$5;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/zzlx$5;-><init>(Lcom/google/android/gms/internal/zzlx;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/internal/zzqm;Lcom/google/android/gms/internal/zzql$zza;)Lcom/google/android/gms/internal/zzqm;

    move-result-object p1

    return-object p1
.end method

.method public zzje()Lcom/google/android/gms/internal/zzpb;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzGN:Lcom/google/android/gms/internal/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlw;->zziU()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlx;->zzjg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->zzaH(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzlx;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlx$zza;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzlx;->zza(Lcom/google/android/gms/internal/zzlx$zza;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzha$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->zza(Lcom/google/android/gms/internal/zzha$zza;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzha$zza;)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Timeout when loading native ad."

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Malformed native JSON response."

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->zzQw:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlx;->zzU(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzha$zza;)Lcom/google/android/gms/internal/zzpb;

    move-result-object v0

    return-object v0
.end method

.method public zzjf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlx;->zzQw:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method zzjg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
