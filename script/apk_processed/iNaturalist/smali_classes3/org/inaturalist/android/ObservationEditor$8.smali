.class Lorg/inaturalist/android/ObservationEditor$8;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 575
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationEditor;->access$602(Lorg/inaturalist/android/ObservationEditor;Z)Z

    .line 576
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$700(Lorg/inaturalist/android/ObservationEditor;)Lorg/lucasr/twowayview/TwoWayView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    const/16 v1, 0x12e

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 587
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-class v2, Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 589
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "obs_photo_filename"

    .line 590
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    .line 591
    invoke-static {v3}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "photo_filename"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "obs_photo_url"

    .line 592
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    .line 593
    invoke-static {v3}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v4}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "photo_url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationEditor;->access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->move(I)Z

    const-string v0, "longitude"

    .line 595
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "latitude"

    .line 596
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observed_on"

    .line 597
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 598
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 599
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation"

    .line 600
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 578
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-class v3, Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "species_guess"

    .line 579
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v3, v3, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationEditor;->access$900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "show_unknown"

    .line 580
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 581
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 582
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_json"

    .line 583
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$8;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method
