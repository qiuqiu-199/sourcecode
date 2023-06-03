.class Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataQualityAssessment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/DataQualityAssessment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeDataQualityMetricsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/DataQualityAssessment;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "DataQualityAssessment"

    const-string p2, "ChangeDataQualityMetricsReceiver"

    .line 405
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_DATA_QUALITY_METRICS:Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "observation_id"

    .line 410
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    iget-object v0, v0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 411
    iget-object p2, p0, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
