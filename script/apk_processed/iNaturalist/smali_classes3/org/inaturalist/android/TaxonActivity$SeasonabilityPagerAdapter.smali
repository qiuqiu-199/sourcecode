.class public Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeasonabilityPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/TaxonActivity;Landroid/content/Context;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 512
    iput-object p2, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 545
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$300(Lorg/inaturalist/android/TaxonActivity;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 522
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d7

    const/4 v2, 0x0

    .line 523
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a014c

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/LineChart;

    const v2, 0x7f0a01b7

    if-lez p2, :cond_0

    .line 529
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v3, v2}, Lorg/inaturalist/android/TaxonActivity;->access$602(Lorg/inaturalist/android/TaxonActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 534
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v2}, Lorg/inaturalist/android/TaxonActivity;->access$700(Lorg/inaturalist/android/TaxonActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v1, p2}, Lorg/inaturalist/android/TaxonActivity;->access$800(Lorg/inaturalist/android/TaxonActivity;I)V

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
