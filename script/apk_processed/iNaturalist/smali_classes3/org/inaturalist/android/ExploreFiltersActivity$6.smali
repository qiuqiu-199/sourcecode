.class Lorg/inaturalist/android/ExploreFiltersActivity$6;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

.field final synthetic val$currentUserIconUrl:Ljava/lang/String;

.field final synthetic val$currentUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->val$currentUsername:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->val$currentUserIconUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "login"

    .line 257
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->val$currentUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icon_url"

    .line 258
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->val$currentUserIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 267
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$6;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
