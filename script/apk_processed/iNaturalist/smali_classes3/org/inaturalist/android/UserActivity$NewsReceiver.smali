.class Lorg/inaturalist/android/UserActivity$NewsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/UserActivity;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivity$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lorg/inaturalist/android/UserActivity$NewsReceiver;-><init>(Lorg/inaturalist/android/UserActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "is_shared_on_app"

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1300(Lorg/inaturalist/android/UserActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 379
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    :goto_0
    if-nez p1, :cond_2

    .line 383
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1200(Lorg/inaturalist/android/UserActivity;)V

    return-void

    .line 387
    :cond_2
    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_3

    .line 391
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1200(Lorg/inaturalist/android/UserActivity;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 395
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 397
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 398
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 400
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "updates_results"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 405
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    iput-object v1, p1, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    .line 406
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1100(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 407
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1100(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->refreshDrawableState()V

    .line 408
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1, v2}, Lorg/inaturalist/android/UserActivity;->access$1402(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter;

    const/4 p1, 0x0

    .line 413
    :goto_3
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    iget-object p2, p2, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_6

    .line 414
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    iget-object p2, p2, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    :try_start_1
    const-string v1, "viewed"

    .line 416
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 418
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 422
    :cond_6
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p2}, Lorg/inaturalist/android/UserActivity;->access$1300(Lorg/inaturalist/android/UserActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 423
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "unread_activities"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    .line 425
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updates_following_results"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 426
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    iput-object v1, p1, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    .line 427
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$700(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 428
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$700(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->refreshDrawableState()V

    .line 429
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1, v2}, Lorg/inaturalist/android/UserActivity;->access$1502(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter;

    goto :goto_5

    .line 431
    :cond_8
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    iput-object v1, p1, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    .line 432
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 433
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->refreshDrawableState()V

    .line 434
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1, v2}, Lorg/inaturalist/android/UserActivity;->access$1602(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/ProjectNewsAdapter;)Lorg/inaturalist/android/ProjectNewsAdapter;

    .line 437
    :goto_5
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$NewsReceiver;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/UserActivity;->access$1200(Lorg/inaturalist/android/UserActivity;)V

    return-void
.end method
