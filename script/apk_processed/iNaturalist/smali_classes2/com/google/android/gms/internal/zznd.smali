.class public final Lcom/google/android/gms/internal/zznd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zzTJ:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zznd;->zzTJ:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static zzB(Z)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;
    .locals 49

    move-object/from16 v0, p1

    const/4 v15, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v1, p2

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_base_url"

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_url"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ad_size"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "ad_slot_size"

    invoke-virtual {v9, v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    if-eqz v2, :cond_0

    const/16 v24, 0x1

    goto :goto_0

    :cond_0
    const/16 v24, 0x0

    :goto_0
    const-string v2, "ad_json"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "ad_html"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "body"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "debug_dialog"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "debug_signals"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v3, "interstitial_timeout"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v7, -0x1

    if-eqz v3, :cond_3

    const-string v3, "interstitial_timeout"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v16

    double-to-long v5, v5

    move-wide/from16 v16, v5

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v7

    :goto_1
    const-string v3, "orientation"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "portrait"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v12, -0x1

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v3

    :goto_2
    move v14, v3

    goto :goto_3

    :cond_4
    const-string v5, "landscape"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v14, -0x1

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v20, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :cond_6
    move-object v3, v1

    move-object v4, v2

    move-object v1, v10

    const-wide/16 v20, -0x1

    :goto_4
    if-nez v4, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    return-object v0

    :cond_7
    const-string v2, "click_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_8

    move-object v5, v10

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    :goto_5
    if-eqz v2, :cond_9

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :cond_9
    const-string v2, "impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_a

    move-object v6, v10

    goto :goto_6

    :cond_a
    iget-object v6, v1, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_b

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :cond_b
    const-string v2, "manual_impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_c

    move-object v7, v10

    goto :goto_7

    :cond_c
    iget-object v7, v1, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    :goto_7
    if-eqz v2, :cond_d

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_8

    :cond_d
    move-object/from16 v18, v7

    :goto_8
    if-eqz v1, :cond_f

    iget v2, v1, Lcom/google/android/gms/internal/zzmn;->orientation:I

    if-eq v2, v12, :cond_e

    iget v14, v1, Lcom/google/android/gms/internal/zzmn;->orientation:I

    :cond_e
    iget-wide v7, v1, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    const-wide/16 v22, 0x0

    cmp-long v2, v7, v22

    if-lez v2, :cond_f

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    move-wide v7, v1

    goto :goto_9

    :cond_f
    move-wide/from16 v7, v16

    :goto_9
    move/from16 v16, v14

    const-string v1, "active_view"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "ad_is_javascript"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_10

    const-string v1, "ad_passback_url"

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_a

    :cond_10
    move-object/from16 v25, v10

    :goto_a
    const-string v1, "mediation"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v1, "custom_render_allowed"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v1, "content_url_opted_out"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v1, "prefetch"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v1, "refresh_interval_milliseconds"

    const-wide/16 v10, -0x1

    invoke-virtual {v9, v1, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    const-string v1, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v9, v1, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "gws_query_id"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v1, "height"

    const-string v2, "fluid"

    const-string v14, ""

    invoke-virtual {v9, v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const-string v1, "native_express"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string v1, "video_start_urls"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v34

    const-string v1, "video_complete_urls"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string v1, "rewards"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzoo;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzoo;

    move-result-object v36

    const-string v1, "use_displayed_impression"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string v1, "auto_protection_configuration"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmp;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzmp;

    move-result-object v38

    const-string v1, "set_cookie"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v1, "remote_ping_urls"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v41

    const-string v1, "safe_browsing"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzor;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzor;

    move-result-object v44

    const-string v1, "render_in_browser"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzmk;->zzKJ:Z

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v45

    new-instance v46, Lcom/google/android/gms/internal/zzmn;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzmk;->zzRV:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzmk;->zzSh:Z

    move-object/from16 v1, v46

    move/from16 v47, v2

    move-object/from16 v2, p1

    move v0, v9

    move v9, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v13

    move/from16 v48, v14

    move-wide/from16 v13, v29

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v20

    move/from16 v20, v23

    move-object/from16 v21, v25

    move/from16 v23, v26

    move/from16 v25, v48

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v31

    move/from16 v29, v32

    move/from16 v30, v33

    move-object/from16 v31, v36

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move/from16 v34, v37

    move-object/from16 v35, v38

    move/from16 v36, v0

    move-object/from16 v37, v39

    move-object/from16 v38, v41

    move/from16 v39, v45

    move-object/from16 v41, v44

    move/from16 v44, v47

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/zzmn;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v46

    :catch_0
    move-exception v0

    const-string v1, "Could not parse the inline ad response: "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    return-object v0
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzna;)Lorg/json/JSONObject;
    .locals 16
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzna;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzna;->zzzb:Landroid/location/Location;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzna;->zzTj:Lcom/google/android/gms/internal/zzni;

    iget-object v5, v0, Lcom/google/android/gms/internal/zzna;->zzRF:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzna;->zzTk:Lorg/json/JSONObject;

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "extra_caps"

    sget-object v9, Lcom/google/android/gms/internal/zzgd;->zzEe:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    const-string v8, "eid"

    const-string v9, ","

    iget-object v10, v0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzRx:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    const-string v8, "ad_pos"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRx:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzec;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-nez v8, :cond_2

    const-string v8, "format"

    iget-object v11, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v8, :cond_6

    const-string v8, "fluid"

    const-string v11, "height"

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v12, v11, :cond_6

    aget-object v15, v8, v12

    iget-boolean v9, v15, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-nez v9, :cond_3

    if-nez v13, :cond_3

    const-string v9, "format"

    iget-object v13, v15, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v7, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    :cond_3
    iget-boolean v9, v15, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v9, :cond_4

    if-nez v14, :cond_4

    const-string v9, "fluid"

    const-string v14, "height"

    invoke-virtual {v7, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    :cond_4
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget v8, v8, Lcom/google/android/gms/internal/zzeg;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const-string v8, "smart_w"

    const-string v11, "full"

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget v8, v8, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v11, -0x2

    if-ne v8, v11, :cond_8

    const-string v8, "smart_h"

    const-string v12, "auto"

    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-eqz v8, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v13, :cond_d

    aget-object v10, v12, v14

    iget-boolean v11, v10, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v11, :cond_9

    const/4 v11, -0x2

    const/4 v15, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "|"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v11, v10, Lcom/google/android/gms/internal/zzeg;->width:I

    if-ne v11, v9, :cond_b

    iget v11, v10, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    int-to-float v11, v11

    iget v9, v4, Lcom/google/android/gms/internal/zzni;->zzxk:F

    div-float/2addr v11, v9

    float-to-int v9, v11

    goto :goto_3

    :cond_b
    iget v9, v10, Lcom/google/android/gms/internal/zzeg;->width:I

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v11, -0x2

    if-ne v9, v11, :cond_c

    iget v9, v10, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    int-to-float v9, v9

    iget v10, v4, Lcom/google/android/gms/internal/zzni;->zzxk:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_4

    :cond_c
    iget v9, v10, Lcom/google/android/gms/internal/zzeg;->height:I

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v9, -0x1

    goto :goto_2

    :cond_d
    if-eqz v15, :cond_f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "|"

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    :goto_6
    const-string v9, "320x50"

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v9, "sz"

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v8, v2, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    if-eqz v8, :cond_11

    const-string v8, "native_version"

    iget v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "native_templates"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzvK:Ljava/util/List;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "native_image_orientation"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    invoke-static {v9}, Lcom/google/android/gms/internal/zznd;->zzc(Lcom/google/android/gms/internal/zzhc;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzRN:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "native_custom_templates"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRN:Ljava/util/List;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    if-eqz v8, :cond_12

    const-string v8, "ene"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzvH:Lcom/google/android/gms/internal/zzfc;

    if-eqz v8, :cond_13

    const-string v8, "is_icon_ad"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "icon_ad_expansion_behavior"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzvH:Lcom/google/android/gms/internal/zzfc;

    iget v9, v9, Lcom/google/android/gms/internal/zzfc;->zzzZ:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v8, "slotname"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzvl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pn"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_14

    const-string v8, "vc"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v8, "ms"

    iget-object v9, v0, Lcom/google/android/gms/internal/zzna;->zzRA:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "seq_num"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "session_id"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRC:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "js"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzna;->zzTg:Lcom/google/android/gms/internal/zznm$zza;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzmk;->zzSa:Landroid/os/Bundle;

    iget-object v10, v0, Lcom/google/android/gms/internal/zzna;->zzTf:Landroid/os/Bundle;

    invoke-static {v7, v4, v8, v9, v10}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/internal/zznm$zza;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzna;Landroid/content/Context;)V

    const-string v0, "platform"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "submodel"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    if-eqz v3, :cond_15

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    goto :goto_7

    :cond_15
    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget v0, v0, Lcom/google/android/gms/internal/zzec;->versionCode:I

    if-lt v0, v8, :cond_16

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_16
    :goto_7
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    if-lt v0, v8, :cond_17

    const-string v0, "quality_signals"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRD:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_18

    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    if-eqz v0, :cond_18

    const-string v0, "forceHttps"

    iget-boolean v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v5, :cond_19

    const-string v0, "content_info"

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1a

    const-string v0, "u_sd"

    iget v3, v2, Lcom/google/android/gms/internal/zzmk;->zzxk:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_8
    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1a
    const-string v0, "u_sd"

    iget v3, v4, Lcom/google/android/gms/internal/zzni;->zzxk:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget v3, v4, Lcom/google/android/gms/internal/zzni;->zzRI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget v3, v4, Lcom/google/android/gms/internal/zzni;->zzRH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :goto_9
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_1c

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1b

    :try_start_1
    const-string v0, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzmk;->zzRJ:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_a
    const-string v0, "correlation_id"

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRK:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_1d

    const-string v0, "request_id"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRL:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1e

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRP:Lcom/google/android/gms/internal/zzmr;

    if-eqz v0, :cond_1e

    const-string v0, "capability"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRP:Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzmr;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1f

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "anchor"

    iget-object v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRQ:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_20

    const-string v0, "android_app_volume"

    iget v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRR:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_21

    const-string v0, "android_app_muted"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzmk;->zzRX:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_22

    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRS:I

    if-lez v0, :cond_22

    const-string v0, "target_api"

    iget v4, v2, Lcom/google/android/gms/internal/zzmk;->zzRS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_24

    const-string v0, "scroll_index"

    iget v4, v2, Lcom/google/android/gms/internal/zzmk;->zzRT:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    goto :goto_b

    :cond_23
    iget v9, v2, Lcom/google/android/gms/internal/zzmk;->zzRT:I

    move v5, v9

    :goto_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_25

    const-string v0, "_activity_context"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzmk;->zzRU:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    if-lt v0, v3, :cond_27

    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzRY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_26

    :try_start_3
    const-string v0, "app_settings"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzmk;->zzRY:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    :try_start_4
    const-string v4, "Problem creating json from app settings"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    :goto_c
    const-string v0, "render_in_browser"

    iget-boolean v4, v2, Lcom/google/android/gms/internal/zzmk;->zzKJ:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    if-lt v0, v3, :cond_28

    const-string v0, "android_num_video_cache_tasks"

    iget v3, v2, Lcom/google/android/gms/internal/zzmk;->zzRZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v0, v2, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    invoke-static {v1, v7, v0}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Ljava/util/HashMap;Lcom/google/android/gms/internal/zzqh;)V

    const-string v0, "cache_state"

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_29

    const-string v0, "gct"

    iget-object v1, v2, Lcom/google/android/gms/internal/zzmk;->zzSb:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2a

    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzmk;->zzSc:Z

    if-eqz v0, :cond_2a

    const-string v0, "de"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDc:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzmk;)V

    :cond_2b
    iget v0, v2, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "gmp_app_id"

    iget-object v1, v2, Lcom/google/android/gms/internal/zzmk;->zzSe:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fbs_aiid"

    iget-object v1, v2, Lcom/google/android/gms/internal/zzmk;->zzSf:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fbs_aeid"

    iget-object v1, v2, Lcom/google/android/gms/internal/zzmk;->zzSg:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    invoke-static {v8}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzpo;->zzQ(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad Request JSON: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzpo;->zzQ(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    const-string v1, "Problem serializing ad request to JSON: "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(Landroid/content/Context;Ljava/util/HashMap;Lcom/google/android/gms/internal/zzqh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzqh;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cl"

    const-string v3, "149960398"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rc"

    const-string v3, "dev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rollup"

    const-string v3, "HEAD"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "build_meta"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "mf"

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzEg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "instant_app"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lite"

    iget-boolean p2, p2, Lcom/google/android/gms/internal/zzqh;->zzYZ:Z

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "sdk_env"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double v3, v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "radius"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uule"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzec;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzpi;->zzkF()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zznd;->zzTJ:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v0, "cust_gender"

    iget v2, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "kw"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    if-eq v0, v1, :cond_5

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    if-eqz v0, :cond_6

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    if-eqz v0, :cond_7

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzfp;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "request_agent"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "request_pkg"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    const-string v0, "is_designed_for_families"

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzfp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzfp;",
            ")V"
        }
    .end annotation

    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "acolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bgcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gradientto"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gradientfrom"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "bthick"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAL:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAM:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v0, "solid"

    goto :goto_0

    :pswitch_1
    const-string v0, "dotted"

    goto :goto_0

    :pswitch_2
    const-string v0, "dashed"

    goto :goto_0

    :pswitch_3
    const-string v0, "none"

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "btype"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAN:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const-string v1, "dark"

    goto :goto_1

    :pswitch_5
    const-string v1, "medium"

    goto :goto_1

    :pswitch_6
    const-string v1, "light"

    :goto_1
    if-eqz v1, :cond_5

    const-string v0, "callbuttoncolor"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAS:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzmk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzmk;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    const-string v1, "interstitial_mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "reward_mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object p1, p1, Lcom/google/android/gms/internal/zzmk;->zzSd:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "interstitial_pool"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "counters"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzna;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzna;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "doritos"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzna;->zzTh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzCS:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v3, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "rdid"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_lat"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "idtype"

    const-string p2, "adid"

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzqe;->zzae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pdid"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pdidtype"

    const-string p2, "ssaid"

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "pii"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/internal/zznm$zza;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzni;",
            "Lcom/google/android/gms/internal/zznm$zza;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUF:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUG:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzni;->zzUH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzni;->zzUJ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzni;->zzUK:Z

    if-eqz v0, :cond_2

    const-string v0, "is_sidewinder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUL:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUM:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzni;->zzUO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUO:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "build"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzni;->zzUZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzni;->zzUW:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "battery_level"

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzni;->zzUV:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/zzni;->zzUY:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzni;->zzUX:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "predicted_latency_micros"

    iget v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVf:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "predicted_down_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVg:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predicted_up_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVh:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "predictions"

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string p2, "network"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_browser_custom_tabs_capable"

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzni;->zzVa:Z

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "browser"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_6

    const-string p1, "android_mem_info"

    invoke-static {p3}, Lcom/google/android/gms/internal/zznd;->zzg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "parental_controls"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "play_store"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "device"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzab(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzmn;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    if-eqz v1, :cond_2

    const-string v1, "ad_json"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v1, "ad_html"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "debug_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const-string v1, "interstitial_timeout"

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzmn;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v1, "orientation"

    const-string v2, "portrait"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzmn;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v2

    if-ne v1, v2, :cond_7

    const-string v1, "orientation"

    const-string v2, "landscape"

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    if-eqz v1, :cond_8

    const-string v1, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    if-eqz v1, :cond_9

    const-string v1, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    if-eqz v1, :cond_a

    const-string v1, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v1, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSt:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSu:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v1, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSx:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSK:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const-string v1, "refresh_interval_milliseconds"

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_d
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const-string v1, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSB:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    const-string v1, "fluid"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzzC:Z

    if-eqz v2, :cond_10

    const-string v2, "height"

    goto :goto_4

    :cond_10
    const-string v2, ""

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    if-eqz v1, :cond_11

    const-string v1, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    if-eqz v1, :cond_12

    const-string v1, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    if-eqz v1, :cond_13

    const-string v1, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzoo;->zzjP()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    const-string v1, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "render_in_browser"

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzmn;->zzKJ:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzhc;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/zzhc;->zzHb:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "any"

    return-object p0

    :pswitch_0
    const-string p0, "landscape"

    return-object p0

    :pswitch_1
    const-string p0, "portrait"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "runtime_free"

    const-string v2, "runtime_free_memory"

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "runtime_max"

    const-string v2, "runtime_max_memory"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "runtime_total"

    const-string v2, "runtime_total_memory"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "web_view_count"

    const-string v2, "web_view_count"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_memory_info"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Debug$MemoryInfo;

    if-eqz p0, :cond_0

    const-string v1, "debug_info_dalvik_private_dirty"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_dalvik_pss"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_dalvik_shared_dirty"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_native_private_dirty"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_native_pss"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_native_shared_dirty"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_other_private_dirty"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_other_pss"

    iget v2, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_info_other_shared_dirty"

    iget p0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method
