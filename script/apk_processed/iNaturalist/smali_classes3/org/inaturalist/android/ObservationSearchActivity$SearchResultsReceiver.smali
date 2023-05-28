.class Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationSearchActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationSearchActivity;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationSearchActivity;Lorg/inaturalist/android/ObservationSearchActivity$1;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;-><init>(Lorg/inaturalist/android/ObservationSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$400(Lorg/inaturalist/android/ObservationSearchActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    const-string v1, "user_search_observations_result"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "user_search_observations_result"

    .line 352
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    :goto_0
    const-string v1, "query"

    .line 355
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 357
    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$600(Lorg/inaturalist/android/ObservationSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 363
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 365
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 367
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 368
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    new-instance v0, Lorg/inaturalist/android/UserObservationAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-direct {v0, v1, p2}, Lorg/inaturalist/android/UserObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p1, v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$502(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 374
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    new-instance p2, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver$1;-><init>(Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;)V

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
