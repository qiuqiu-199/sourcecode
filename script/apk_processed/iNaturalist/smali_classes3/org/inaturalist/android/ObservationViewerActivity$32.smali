.class Lorg/inaturalist/android/ObservationViewerActivity$32;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;

.field final synthetic val$fromSuggestion:Z

.field final synthetic val$idRemarks:Ljava/lang/String;

.field final synthetic val$taxonId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 2410
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$taxonId:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$idRemarks:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$fromSuggestion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisagreement(Z)V
    .locals 5

    .line 2413
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_IDENTIFICATION:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 2414
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "taxon_id"

    .line 2415
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$taxonId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "id_body"

    .line 2416
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$idRemarks:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "disagreement"

    .line 2417
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "from_vision"

    .line 2418
    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$fromSuggestion:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2419
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2422
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "Via"

    const-string v1, "View Obs Add"

    .line 2423
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "owners_identification_from_vision"

    .line 2424
    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->val$fromSuggestion:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2426
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Add Identification"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2428
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2433
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v4, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 2434
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2000(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 2437
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadTaxon:Z

    .line 2438
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$32;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method
