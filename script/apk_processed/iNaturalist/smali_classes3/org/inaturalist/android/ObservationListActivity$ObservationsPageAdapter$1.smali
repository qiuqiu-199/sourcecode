.class Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1001
    new-instance v0, Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-direct {v0}, Lorg/inaturalist/android/ExploreSearchFilters;-><init>()V

    const/4 v1, 0x0

    .line 1002
    iput-boolean v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    const/4 v2, 0x0

    .line 1003
    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1004
    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 1005
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    .line 1006
    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 1008
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object v3, v3, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-class v4, Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "search_filters"

    .line 1009
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1012
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationListActivity;->access$2100(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    const-string p1, "active_tab"

    .line 1018
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter$1;->this$1:Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/ObservationListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
