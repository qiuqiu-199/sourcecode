.class Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;->this$1:Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "ArticleTitle"

    const-string p4, "title"

    const-string p5, ""

    .line 199
    invoke-virtual {p1, p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ParentType"

    const-string p4, "parent_type"

    const-string p5, ""

    .line 200
    invoke-virtual {p1, p4, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "parent"

    .line 201
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    .line 202
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string p4, "ParentName"

    const-string p5, "title"

    const-string v0, "name"

    const-string v1, ""

    .line 203
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p3

    const-string p4, "News - Open Article"

    invoke-virtual {p3, p4, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 207
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    :goto_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;->this$1:Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;

    iget-object p3, p3, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    const-class p4, Lorg/inaturalist/android/NewsArticle;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "article"

    .line 212
    new-instance p4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p4, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "is_user_feed"

    const/4 p3, 0x1

    .line 213
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter$1;->this$1:Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;->this$0:Lorg/inaturalist/android/UserActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/UserActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
