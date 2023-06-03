.class Lorg/inaturalist/android/ObservationEditor$6;
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

    .line 523
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 526
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-class v1, Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 527
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "is_confirmation"

    const/4 v1, 0x1

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "project_fields"

    .line 529
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "project_id"

    .line 532
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObsJson:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 538
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationEditor;->mObsJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "non_traditional_projects"

    .line 539
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "non_traditional_projects"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "non_traditional_projects"

    .line 540
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 541
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 542
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "project_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 546
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const-string v1, "umbrella_project_ids"

    .line 550
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 552
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$6;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/16 v1, 0x66

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
