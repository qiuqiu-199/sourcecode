.class Lorg/inaturalist/android/ExploreFiltersActivity$14;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V
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

    .line 550
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$14;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconicITaxonSelected(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 554
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$14;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$14;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 559
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$14;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1100(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 560
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$14;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1200(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
