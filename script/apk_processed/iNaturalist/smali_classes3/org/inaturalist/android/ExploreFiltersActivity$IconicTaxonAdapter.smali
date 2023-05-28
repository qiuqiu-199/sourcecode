.class Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExploreFiltersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconicTaxonAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;,
        Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnSelected:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;",
            ")V"
        }
    .end annotation

    .line 739
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 740
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mContext:Landroid/content/Context;

    .line 741
    iput-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mItems:Ljava/util/List;

    .line 742
    iput-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mOnSelected:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;

    return-void
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;)Ljava/util/List;
    .locals 0

    .line 730
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;)Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;
    .locals 0

    .line 730
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mOnSelected:Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 779
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 730
    check-cast p1, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->onBindViewHolder(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;I)V
    .locals 4

    .line 754
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 755
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 756
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 758
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 759
    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->taxonicIconNameToResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 760
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->imageView:Landroid/widget/ImageView;

    .line 761
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 763
    iget-object v2, p1, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->background:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v3, 0x7f080368

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 765
    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;->background:Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;

    invoke-direct {v2, p0, v1, v0, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;Ljava/lang/String;ZI)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 730
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;
    .locals 2

    .line 747
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d006a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 748
    new-instance p2, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$IconicTaxonViewHolder;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;Landroid/view/View;)V

    return-object p2
.end method
