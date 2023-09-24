.class Lorg/inaturalist/android/NewsArticle$1;
.super Landroid/webkit/WebViewClient;
.source "NewsArticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/NewsArticle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/NewsArticle;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/NewsArticle;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/inaturalist/android/NewsArticle$1;->this$0:Lorg/inaturalist/android/NewsArticle;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .line 169
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle$1;->this$0:Lorg/inaturalist/android/NewsArticle;

    iget-object v0, v0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Link"

    .line 171
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ArticleTitle"

    const-string v2, "title"

    const-string v3, ""

    .line 172
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ParentType"

    const-string v2, "parent_type"

    const-string v3, ""

    .line 173
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parent"

    .line 174
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "ParentName"

    const-string v2, "title"

    const-string v3, "name"

    const-string v4, ""

    .line 176
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "News - Tap Link"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 184
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle$1;->this$0:Lorg/inaturalist/android/NewsArticle;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/NewsArticle;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
