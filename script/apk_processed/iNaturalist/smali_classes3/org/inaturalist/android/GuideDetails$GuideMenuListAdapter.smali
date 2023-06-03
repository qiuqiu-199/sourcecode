.class Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GuideDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideMenuListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/GuideDetails$GuideMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideDetails$GuideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Lorg/inaturalist/android/GuideTaxonFilter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/inaturalist/android/GuideTaxonFilter;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideDetails$GuideMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    const p1, 0x7f0d0065

    .line 591
    invoke-direct {p0, p2, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 593
    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mContext:Landroid/content/Context;

    .line 594
    iput-object p3, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    .line 595
    iput-object p4, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)Lorg/inaturalist/android/GuideTaxonFilter;
    .locals 0

    .line 584
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->getItem(I)Lorg/inaturalist/android/GuideDetails$GuideMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/inaturalist/android/GuideDetails$GuideMenuItem;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 610
    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 611
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;

    .line 614
    invoke-interface {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;->getText()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-interface {p1}, Lorg/inaturalist/android/GuideDetails$GuideMenuItem;->isSectionHeader()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const v1, 0x7f0d0064

    .line 618
    invoke-virtual {p2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 619
    iget-object p3, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p3}, Lorg/inaturalist/android/GuideDetails;->access$1500(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p3

    const v1, 0x7f0a02d3

    const-string v4, "quantity_all_caps"

    const-string v5, "quantity"

    invoke-virtual {p3, p2, v1, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0a03ab

    .line 620
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 621
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    iget-object v1, v1, Lorg/inaturalist/android/GuideDetails;->mRecommendedPrediate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060086

    .line 623
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 625
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideTaxonFilter;->getAllTags()Ljava/util/List;

    move-result-object v1

    .line 626
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 627
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 629
    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "#FF2D5228"

    .line 631
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 638
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;

    const v4, 0x7f0d0065

    .line 640
    invoke-virtual {p2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a037b

    .line 641
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v4, 0x7f0a037a

    .line 642
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 643
    invoke-virtual {v1}, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v4, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/GuideTaxonFilter;->hasTag(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    const-string v4, "#4C669900"

    .line 647
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const v4, 0x7f0a00ab

    .line 648
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 649
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    const v4, 0x7f0a037c

    .line 653
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 654
    invoke-virtual {v1}, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v6, "="

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 656
    array-length v2, v1

    if-ne v2, v5, :cond_4

    const-string v2, "TAGS"

    .line 658
    aget-object v5, v1, v3

    goto :goto_0

    .line 660
    :cond_4
    aget-object v2, v1, v3

    .line 661
    aget-object v5, v1, v5

    .line 663
    :goto_0
    iget-object v6, p0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v6}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lorg/inaturalist/android/GuideXML;->getTagRepresentativePhoto(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v1, 0x4

    .line 667
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 669
    :cond_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    new-instance v2, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;

    invoke-direct {v2, p0, v1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$1;-><init>(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;[Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    :cond_6
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 689
    new-instance p1, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter$2;-><init>(Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
