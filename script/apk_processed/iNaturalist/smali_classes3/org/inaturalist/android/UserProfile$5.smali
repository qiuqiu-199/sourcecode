.class Lorg/inaturalist/android/UserProfile$5;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 239
    new-instance v0, Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-direct {v0}, Lorg/inaturalist/android/ExploreSearchFilters;-><init>()V

    const/4 v1, 0x0

    .line 240
    iput-boolean v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    const/4 v2, 0x0

    .line 241
    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 242
    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 243
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    .line 244
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object v2, v2, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 246
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    const-class v4, Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "search_filters"

    .line 247
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$000(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$200(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_0
    const-string p1, "active_tab"

    .line 258
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$5;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/UserProfile;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
