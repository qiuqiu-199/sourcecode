.class Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExploreSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonSearchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;Lorg/inaturalist/android/ExploreSearchActivity$1;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 582
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1402(Lorg/inaturalist/android/ExploreSearchActivity;Z)Z

    const-string v0, "error"

    .line 584
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 586
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1100(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    const v2, 0x7f10010a

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "is_shared_on_app"

    .line 590
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 595
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1500(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 597
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "results"

    .line 603
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    const-string v2, "total_results"

    .line 604
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 606
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 611
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V

    return-void

    .line 615
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 617
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 619
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 620
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 622
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_4
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    .line 628
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V

    return-void
.end method
