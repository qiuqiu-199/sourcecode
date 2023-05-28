.class Lorg/inaturalist/android/ObservationViewerActivity$20;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V
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

    .line 1647
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1650
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 1655
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1656
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1657
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1658
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$20;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
