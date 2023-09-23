.class Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataQualityAssessment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/DataQualityAssessment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdCanBeImprovedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/DataQualityAssessment;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "DataQualityAssessment"

    const-string v0, "IdCanBeImprovedReceiver"

    .line 420
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$600(Lorg/inaturalist/android/DataQualityAssessment;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    .line 431
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    iput-object p1, p2, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    .line 433
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;->this$0:Lorg/inaturalist/android/DataQualityAssessment;

    invoke-static {p1}, Lorg/inaturalist/android/DataQualityAssessment;->access$800(Lorg/inaturalist/android/DataQualityAssessment;)V

    return-void
.end method
