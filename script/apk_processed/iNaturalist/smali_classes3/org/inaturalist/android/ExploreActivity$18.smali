.class Lorg/inaturalist/android/ExploreActivity$18;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->onObservationsMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;

.field final synthetic val$gridUrl:Ljava/lang/String;

.field final synthetic val$position:Lorg/inaturalist/android/UTFPosition;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;Ljava/lang/String;Lorg/inaturalist/android/UTFPosition;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$18;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreActivity$18;->val$gridUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/ExploreActivity$18;->val$position:Lorg/inaturalist/android/UTFPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1543
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 1544
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$18;->val$gridUrl:Ljava/lang/String;

    .line 1545
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 1546
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 1549
    :try_start_0
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 1551
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1552
    new-instance v0, Lorg/inaturalist/android/UTFGrid;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/UTFGrid;-><init>(Lorg/json/JSONObject;)V

    .line 1554
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$18;->val$position:Lorg/inaturalist/android/UTFPosition;

    invoke-virtual {v1}, Lorg/inaturalist/android/UTFPosition;->getPixelPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$18;->val$position:Lorg/inaturalist/android/UTFPosition;

    invoke-virtual {v2}, Lorg/inaturalist/android/UTFPosition;->getPixelPositionY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/UTFGrid;->getDataForPixel(II)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "ExploreActivity"

    .line 1558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTFGrid Observation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$18;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const-class v3, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "captive"

    .line 1562
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "captive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v2, "private_location"

    .line 1563
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "private_location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v2, "observation"

    .line 1565
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "read_only"

    const/4 v2, 0x1

    .line 1566
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "reload"

    .line 1567
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1568
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$18;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/ExploreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1570
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Via"

    const-string v2, "Explore Map"

    .line 1571
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1573
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Navigate - Observations - Details"

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1578
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1576
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
