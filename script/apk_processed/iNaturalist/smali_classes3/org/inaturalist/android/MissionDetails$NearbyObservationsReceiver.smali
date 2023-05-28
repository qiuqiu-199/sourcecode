.class Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissionDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NearbyObservationsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/MissionDetails;Lorg/inaturalist/android/MissionDetails$1;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 487
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "error"

    .line 488
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 490
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {v0}, Lorg/inaturalist/android/MissionDetails;->access$500(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    const v2, 0x7f100106

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/MissionDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    .line 494
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$300(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    .line 495
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 500
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 503
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 507
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    iput-object v0, p1, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    .line 509
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$200(Lorg/inaturalist/android/MissionDetails;)V

    return-void
.end method
