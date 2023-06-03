.class public Lorg/inaturalist/android/ObservationGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ObservationGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mDimension:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0067

    .line 37
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mItems:Ljava/util/List;

    .line 40
    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mItems:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mOriginalItems:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object p1, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 43
    iput p2, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ObservationGridAdapter;)I
    .locals 0

    .line 28
    iget p0, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationGridAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 59
    iget-object p2, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d0067

    .line 60
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    iget-object p3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const p3, 0x7f0a01a0

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v1, "quality_grade"

    const-string v2, "none"

    .line 64
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "research"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f0a0177

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v1, "taxon"

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v2, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {p3, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f10037b

    .line 78
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v1, 0x7f0a038d

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0384

    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    iget v5, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    iget v5, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object v3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    int-to-float p3, p3

    .line 91
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, p3, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 92
    iget v3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    const/4 v5, 0x4

    div-int/2addr v3, v5

    iget v6, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    sub-int/2addr v6, p3

    div-int/2addr v6, v5

    iget p3, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    div-int/2addr p3, v5

    iget v7, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mDimension:I

    div-int/2addr v7, v5

    invoke-virtual {v2, v3, v6, p3, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    invoke-static {p1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p3, "observation_photos"

    .line 98
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    xor-int/2addr p3, v4

    if-eqz p3, :cond_3

    :try_start_0
    const-string v3, "photos"

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_3
    const-string v3, "observation_photos"

    .line 100
    :goto_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 102
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 106
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 110
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p3, :cond_4

    const-string p3, "url"

    .line 113
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_4
    const-string p3, "photo"

    .line 115
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v3, "small_url"

    .line 116
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "original_url"

    :goto_5
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_5
    const-string v3, "small_url"

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_7

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_7

    :cond_6
    move-object p3, v3

    goto :goto_8

    :cond_7
    :goto_7
    const-string v3, "url"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_8
    if-eqz p3, :cond_8

    .line 120
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "."

    .line 121
    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "medium."

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 125
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 127
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 128
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    new-instance v0, Lorg/inaturalist/android/ObservationGridAdapter$1;

    invoke-direct {v0, p0, v1, v2}, Lorg/inaturalist/android/ObservationGridAdapter$1;-><init>(Lorg/inaturalist/android/ObservationGridAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 129
    invoke-virtual {p3, v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception p3

    .line 148
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_2
    move-exception p3

    .line 145
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    :cond_9
    :goto_9
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
