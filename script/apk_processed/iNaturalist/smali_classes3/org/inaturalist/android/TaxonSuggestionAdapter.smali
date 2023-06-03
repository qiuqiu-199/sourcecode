.class Lorg/inaturalist/android/TaxonSuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TaxonSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mOnTaxonSuggestion:Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCompare:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;",
            "Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;",
            "Z)V"
        }
    .end annotation

    const v0, 0x1090003

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 47
    iput-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mResultList:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mOnTaxonSuggestion:Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;

    .line 49
    iput-boolean p4, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mShowCompare:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonSuggestionAdapter;)Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mOnTaxonSuggestion:Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mResultList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 58
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d00e8

    .line 59
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    iget-object p3, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mResultList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon"

    .line 62
    invoke-virtual {p3, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const v2, 0x7f0a038d

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a038a

    .line 65
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0392

    .line 66
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a03e4

    .line 67
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0322

    .line 68
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00ce

    .line 69
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "vision_score"

    .line 71
    invoke-virtual {p3, v8}, Lorg/inaturalist/android/BetterJSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "frequency_score"

    .line 72
    invoke-virtual {p3, v9}, Lorg/inaturalist/android/BetterJSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    if-eqz v8, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    const p3, 0x7f1003a5

    .line 77
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    const p3, 0x7f1003a4

    .line 79
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p3, p3, v10

    if-lez p3, :cond_4

    const p3, 0x7f10031d

    .line 81
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p3, 0x8

    .line 75
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_4
    :goto_1
    iget-boolean p3, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mShowCompare:Z

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    new-instance p3, Lorg/inaturalist/android/TaxonSuggestionAdapter$1;

    invoke-direct {p3, p0, p1, v1}, Lorg/inaturalist/android/TaxonSuggestionAdapter$1;-><init>(Lorg/inaturalist/android/TaxonSuggestionAdapter;ILorg/json/JSONObject;)V

    invoke-virtual {v6, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p3, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;

    invoke-direct {p3, p0, p1, v1}, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;-><init>(Lorg/inaturalist/android/TaxonSuggestionAdapter;ILorg/json/JSONObject;)V

    invoke-virtual {v7, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance p3, Lorg/inaturalist/android/TaxonSuggestionAdapter$3;

    invoke-direct {p3, p0, p1, v1}, Lorg/inaturalist/android/TaxonSuggestionAdapter$3;-><init>(Lorg/inaturalist/android/TaxonSuggestionAdapter;ILorg/json/JSONObject;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 111
    invoke-static {v3, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 112
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 114
    :cond_6
    invoke-static {v4, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 115
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const-string p1, "default_photo"

    .line 119
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "default_photo"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "default_photo"

    .line 120
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 121
    iget-object p3, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    const-string v0, "square_url"

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 125
    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 126
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_4

    :cond_7
    const p1, 0x7f08027d

    .line 128
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
