.class Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExploreFiltersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconicTaxonViewHolder"
.end annotation


# instance fields
.field protected background:Landroid/view/ViewGroup;

.field protected imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;Landroid/view/View;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

    .line 787
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0165

    .line 789
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a0069

    .line 790
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->background:Landroid/view/ViewGroup;

    return-void
.end method
