.class public Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaxonPhotosPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultTaxonIcon:I

.field private mTaxon:Lorg/json/JSONObject;

.field private mTaxonPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .line 1069
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1070
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mContext:Landroid/content/Context;

    .line 1071
    iput-object p2, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxon:Lorg/json/JSONObject;

    .line 1072
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxonPhotos:Ljava/util/List;

    .line 1074
    invoke-static {p2}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mDefaultTaxonIcon:I

    const-string p1, "taxon_photos"

    .line 1076
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 1080
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    .line 1081
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxonPhotos:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1085
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxonPhotos:Ljava/util/List;

    new-instance p2, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$1;-><init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 1061
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)Lorg/json/JSONObject;
    .locals 0

    .line 1061
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxon:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1152
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxonPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7

    .line 1101
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00e4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    .line 1102
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const p1, 0x7f0a038d

    .line 1104
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ca

    .line 1105
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f0a0296

    .line 1106
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1108
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v4, 0x4

    .line 1109
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1111
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mTaxonPhotos:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "photo"

    .line 1112
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "large_url"

    .line 1113
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "large_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "large_url"

    goto :goto_0

    :cond_0
    const-string v5, "original_url"

    .line 1114
    :goto_0
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1116
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v5, "medium_url"

    .line 1117
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    :cond_2
    iget-object v6, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    .line 1121
    invoke-virtual {v6, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;

    invoke-direct {v6, p0, v2, p1}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;-><init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    .line 1122
    invoke-virtual {v5, p1, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 1134
    new-instance v2, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;

    invoke-direct {v2, p0, p2}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;-><init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;I)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f1002b4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "attribution"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1061
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
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
