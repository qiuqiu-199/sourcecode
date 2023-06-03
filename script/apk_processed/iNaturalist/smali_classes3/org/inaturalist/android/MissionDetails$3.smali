.class Lorg/inaturalist/android/MissionDetails$3;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$3;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 256
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$3;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object v0, v0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lorg/inaturalist/android/MissionDetails$3;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-class v4, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails$3;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {v1}, Lorg/inaturalist/android/MissionDetails;->access$300(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    const-string v2, "taxon"

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails$3;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/MissionDetails;->startActivity(Landroid/content/Intent;)V

    .line 263
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TaxonId"

    const-string v2, "id"

    .line 264
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v1, "Missions - Observe"

    invoke-virtual {p1, v1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
