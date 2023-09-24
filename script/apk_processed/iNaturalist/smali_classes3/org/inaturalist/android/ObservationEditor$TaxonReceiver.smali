.class Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ObservationEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 3277
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ObservationEditor;Lorg/inaturalist/android/ObservationEditor$1;)V
    .locals 0

    .line 3277
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 3280
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$4500(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ObservationEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 3282
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3286
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "taxon_result"

    .line 3288
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "id"

    .line 3293
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p2, "default_photo"

    .line 3298
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3299
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/inaturalist/android/ObservationEditor;->access$4600(Lorg/inaturalist/android/ObservationEditor;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rank_level"

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "rank"

    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz p2, :cond_3

    const-string v7, "square_url"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v7, p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    const-string p2, "iconic_taxon_name"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/inaturalist/android/ObservationEditor;->access$4700(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
