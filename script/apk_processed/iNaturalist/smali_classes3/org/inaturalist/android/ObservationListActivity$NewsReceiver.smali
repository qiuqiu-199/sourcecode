.class Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V
    .locals 0

    .line 1571
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updates_results"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1579
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 1580
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 1585
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1589
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "results"

    .line 1591
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 1598
    :cond_3
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 1599
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x0

    .line 1607
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1609
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "viewed"

    .line 1610
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1612
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1616
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1617
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "unread_activities"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
