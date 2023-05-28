.class Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 2046
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V
    .locals 0

    .line 2046
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 2050
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObservationReceiver - OBSERVATION_RESULT"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 2054
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3502(Lorg/inaturalist/android/ObservationViewerActivity;Z)Z

    const-string p1, "is_shared_on_app"

    .line 2056
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2059
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/Observation;

    goto :goto_0

    :cond_0
    const-string v1, "observation_result"

    .line 2061
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/Observation;

    .line 2064
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2065
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2, v3, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3600(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;Z)V

    .line 2066
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v3, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    .line 2071
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 2072
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    .line 2073
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2000(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2074
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3700(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void

    .line 2078
    :cond_2
    iget-object v2, v1, Lorg/inaturalist/android/Observation;->projects:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 2079
    iget-object v4, v1, Lorg/inaturalist/android/Observation;->comments:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v4}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v4

    .line 2080
    iget-object v5, v1, Lorg/inaturalist/android/Observation;->identifications:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v5}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v5

    .line 2081
    iget-object v6, v1, Lorg/inaturalist/android/Observation;->favorites:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v6}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v6

    .line 2082
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v10, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v11, v1, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iput-object v11, v10, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    .line 2088
    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v10, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v11, v1, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iput-object v11, v10, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    .line 2090
    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput v0, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    .line 2091
    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput v0, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    const/4 v10, 0x0

    .line 2094
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 2095
    new-instance v11, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 2096
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 2098
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 2099
    new-instance v10, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v11, "type"

    const-string v12, "comment"

    .line 2100
    invoke-virtual {v10, v11, v12}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2101
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget v11, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 2104
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2105
    new-instance v4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v10, "type"

    const-string v11, "identification"

    .line 2106
    invoke-virtual {v4, v10, v11}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2107
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2108
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget v10, v4, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v4, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 2110
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 2111
    new-instance v4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 2112
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    .line 2115
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2118
    :cond_6
    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)V

    .line 2126
    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2127
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2129
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v7, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 2130
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v8, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    .line 2131
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v9, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    .line 2133
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3800(Lorg/inaturalist/android/ObservationViewerActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2135
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v1, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    .line 2138
    :cond_7
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3800(Lorg/inaturalist/android/ObservationViewerActivity;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3200(Lorg/inaturalist/android/ObservationViewerActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    if-eqz p1, :cond_9

    .line 2140
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    const-string v2, "observation_json_result"

    invoke-virtual {p2, v2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    goto :goto_5

    .line 2142
    :cond_9
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-string v2, "observation_json_result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    .line 2145
    :goto_5
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    if-nez p1, :cond_a

    .line 2146
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$2;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2151
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2155
    :cond_a
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3202(Lorg/inaturalist/android/ObservationViewerActivity;Z)Z

    .line 2157
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    if-eqz p1, :cond_f

    .line 2159
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-nez p1, :cond_b

    iget-object p1, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-nez p1, :cond_d

    :cond_b
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz p1, :cond_c

    iget-object p1, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iget-object p2, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eq p1, p2, :cond_e

    .line 2163
    :cond_d
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObservationViewerActivity - ObservationReceiver: Updated taxon: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObservationViewerActivity - ObservationReceiver: Updated taxon (new): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, v1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object p2, p1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 2167
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iput-object p2, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    .line 2168
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, v1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    iput-object p2, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    .line 2169
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, v1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iput-object p2, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    .line 2171
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v3, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    .line 2172
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v3, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    .line 2173
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v3, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    .line 2176
    :cond_e
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    .line 2178
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez p1, :cond_f

    .line 2180
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 2181
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2182
    invoke-static {}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ObservationViewerActivity - ObservationReceiver - update obs: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    :cond_f
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4100(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2187
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4200(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2188
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$500(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2189
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2000(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2190
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3700(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2191
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4300(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2192
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4400(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2193
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4500(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2194
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4600(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2195
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3400(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method
