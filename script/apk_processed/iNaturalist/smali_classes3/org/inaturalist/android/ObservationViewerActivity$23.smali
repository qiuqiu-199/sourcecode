.class Lorg/inaturalist/android/ObservationViewerActivity$23;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->downloadObsTaxonAndUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1805
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2700(Lorg/inaturalist/android/ObservationViewerActivity;I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1809
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iput-object v0, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "default_photo"

    .line 1812
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "square_url"

    .line 1813
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1815
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    new-instance v3, Lorg/inaturalist/android/ObservationViewerActivity$23$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/inaturalist/android/ObservationViewerActivity$23$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$23;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/ObservationViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1839
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
