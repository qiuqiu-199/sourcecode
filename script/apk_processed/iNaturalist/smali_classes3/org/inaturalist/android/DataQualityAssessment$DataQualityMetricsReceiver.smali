.class Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataQualityAssessment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/DataQualityAssessment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataQualityMetricsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/DataQualityAssessment;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "DataQualityAssessment"

    const-string v0, "DataQualityMetricsReceiver"

    .line 223
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$600(Lorg/inaturalist/android/DataQualityAssessment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    const-string p2, "data_quality_metrics_result"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "data_quality_metrics_result"

    .line 230
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    if-nez p1, :cond_1

    .line 234
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p1, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    .line 235
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$700(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void

    .line 239
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p2, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    .line 241
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$700(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void
.end method
