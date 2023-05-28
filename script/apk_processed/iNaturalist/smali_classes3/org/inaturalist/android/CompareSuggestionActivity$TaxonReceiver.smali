.class Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CompareSuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/inaturalist/android/CompareSuggestionActivity$1;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 517
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$1000(Lorg/inaturalist/android/CompareSuggestionActivity;)Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$1100(Lorg/inaturalist/android/CompareSuggestionActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "taxon_result"

    .line 525
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    .line 528
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "taxon"

    .line 530
    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-static {}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$600()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 533
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 536
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$500(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    return-void
.end method
