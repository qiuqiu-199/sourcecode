.class Lorg/inaturalist/android/UserActivitiesAdapter$5;
.super Ljava/lang/Object;
.source "UserActivitiesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivitiesAdapter;->loadObsImage(ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

.field final synthetic val$obs:Lorg/inaturalist/android/Observation;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/Observation;ILandroid/view/View;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    iput p3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$position:I

    iput-object p4, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 310
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$100(Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    iget v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$position:I

    invoke-interface {p1, v0, v1}, Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;->onUpdateViewed(Lorg/inaturalist/android/Observation;I)V

    .line 314
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$200(Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 320
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object p1

    const-class v2, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "observation"

    .line 321
    iget-object v2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "read_only"

    .line 322
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "reload"

    .line 323
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string p1, "show_comments"

    .line 326
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "scroll_to_comments_bottom"

    .line 327
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Via"

    const-string v2, "Updates"

    .line 333
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Navigate - Observations - Details"

    invoke-virtual {v1, v2, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 341
    :goto_1
    :try_start_1
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$300(Lorg/inaturalist/android/UserActivitiesAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$position:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "viewed"

    .line 342
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 344
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 347
    :goto_2
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$view:Landroid/view/View;

    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_VIEWED_UPDATE:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 351
    iget-object v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->val$obs:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 352
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter$5;->this$0:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
