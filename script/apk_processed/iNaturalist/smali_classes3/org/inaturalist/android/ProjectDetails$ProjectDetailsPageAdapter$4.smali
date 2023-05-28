.class Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 842
    new-instance p1, Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-direct {p1}, Lorg/inaturalist/android/ExploreSearchFilters;-><init>()V

    .line 843
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    const/4 v0, 0x0

    .line 845
    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 846
    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 847
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    .line 849
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-class v2, Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "search_filters"

    .line 850
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 851
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter$4;->this$1:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;->this$0:Lorg/inaturalist/android/ProjectDetails;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ProjectDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
