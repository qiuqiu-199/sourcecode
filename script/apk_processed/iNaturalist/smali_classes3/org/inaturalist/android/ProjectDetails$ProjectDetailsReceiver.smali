.class Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProjectDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectDetailsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectDetails;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/ProjectDetails$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 490
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 492
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p2}, Lorg/inaturalist/android/ProjectDetails;->access$100(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const v2, 0x7f100107

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ProjectDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "is_shared_on_app"

    .line 497
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 502
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$500(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 504
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "results"

    .line 511
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v2

    const-string v3, "total_results"

    .line 512
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 515
    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 520
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$600(Lorg/inaturalist/android/ProjectDetails;)V

    return-void

    .line 524
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 528
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 529
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 531
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 535
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput-object v2, p2, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    .line 537
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput p1, p2, Lorg/inaturalist/android/ProjectDetails;->mTotalObservations:I

    goto :goto_4

    .line 538
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput-object v2, p2, Lorg/inaturalist/android/ProjectDetails;->mSpecies:Ljava/util/ArrayList;

    .line 540
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput p1, p2, Lorg/inaturalist/android/ProjectDetails;->mTotalSpecies:I

    goto :goto_4

    .line 541
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 542
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput-object v2, p2, Lorg/inaturalist/android/ProjectDetails;->mObservers:Ljava/util/ArrayList;

    .line 543
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput p1, p2, Lorg/inaturalist/android/ProjectDetails;->mTotalObervers:I

    goto :goto_4

    .line 544
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 545
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput-object v2, p2, Lorg/inaturalist/android/ProjectDetails;->mIdentifiers:Ljava/util/ArrayList;

    .line 546
    iget-object p2, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iput p1, p2, Lorg/inaturalist/android/ProjectDetails;->mTotalIdentifiers:I

    .line 549
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectDetails;->access$600(Lorg/inaturalist/android/ProjectDetails;)V

    return-void
.end method
