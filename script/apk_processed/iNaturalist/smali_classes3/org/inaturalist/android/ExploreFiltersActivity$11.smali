.class Lorg/inaturalist/android/ExploreFiltersActivity$11;
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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 408
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    .line 413
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "search_filters"

    .line 414
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 415
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->setResult(ILandroid/content/Intent;)V

    .line 416
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$11;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->finish()V

    return-void
.end method
