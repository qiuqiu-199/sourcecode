.class public final Lcom/google/android/gms/internal/zzjr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field public final zzKD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjq;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKE:J

.field public final zzKF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzKJ:Z

.field public final zzKK:Ljava/lang/String;

.field public final zzKL:J

.field public final zzKM:Ljava/lang/String;

.field public final zzKN:I

.field public final zzKO:I

.field public final zzKP:J

.field public final zzKQ:Z

.field public final zzKR:Z

.field public zzKS:I

.field public zzKT:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjr;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjq;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKD:Ljava/util/List;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKE:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKF:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKG:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKH:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKI:Ljava/util/List;

    move v1, p8

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKJ:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKK:Ljava/lang/String;

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKL:J

    move v1, p12

    iput v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKS:I

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKT:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKN:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKO:I

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKP:J

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKQ:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzjr;->zzKR:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mediation Response JSON: "

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_1
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    new-instance v6, Lcom/google/android/gms/internal/zzjq;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/zzjq;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v5, :cond_2

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzjr;->zza(Lcom/google/android/gms/internal/zzjq;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/google/android/gms/internal/zzjr;->zzKS:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKT:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKD:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKK:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKO:I

    const-string v0, "timeout_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKP:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v4, "ad_network_timeout_millis"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKE:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v4

    const-string v5, "click_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzjw;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKF:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v4

    const-string v5, "imp_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzjw;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKG:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v4

    const-string v5, "nofill_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzjw;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKH:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdf()Lcom/google/android/gms/internal/zzjw;

    move-result-object v4

    const-string v5, "remote_ping_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzjw;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKI:Ljava/util/List;

    const-string v4, "render_in_browser"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzjr;->zzKJ:Z

    const-string v4, "refresh"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v4

    :cond_4
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzjr;->zzKL:J

    const-string v1, "rewards"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoo;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzoo;

    move-result-object v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/zzjr;->zzKN:I

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/internal/zzoo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    iget v0, v1, Lcom/google/android/gms/internal/zzoo;->zzVP:I

    iput v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKN:I

    :goto_2
    const-string v0, "use_displayed_impression"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKQ:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjr;->zzKR:Z

    goto :goto_3

    :cond_6
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzjr;->zzKE:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKF:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKG:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKH:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKI:Ljava/util/List;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzjr;->zzKL:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjr;->zzKM:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/zzjr;->zzKN:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjr;->zzKQ:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjr;->zzKJ:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjr;->zzKR:Z

    :goto_3
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzjq;)Z
    .locals 2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzjq;->zzKp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
