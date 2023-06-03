.class Lorg/inaturalist/android/ObservationEditor$18;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 1092
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1095
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2600(Lorg/inaturalist/android/ObservationEditor;)V

    .line 1096
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2700(Lorg/inaturalist/android/ObservationEditor;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.action.INSERT"

    .line 1097
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Online Reachability"

    .line 1101
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Yes"

    goto :goto_0

    :cond_0
    const-string v2, "No"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "owners_identification_from_vision"

    .line 1102
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v2, v2, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1104
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1106
    :goto_1
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "New Obs - Save New Observation"

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1108
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v1, "iNaturalistPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "observation_count"

    const-string v4, "observation_count"

    .line 1110
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1113
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$1600(Lorg/inaturalist/android/ObservationEditor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2400(Lorg/inaturalist/android/ObservationEditor;)V

    .line 1117
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v1, v1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1001

    goto :goto_2

    :cond_3
    const/16 v1, 0x1002

    :goto_2
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 1118
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$18;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    :cond_4
    return-void
.end method
