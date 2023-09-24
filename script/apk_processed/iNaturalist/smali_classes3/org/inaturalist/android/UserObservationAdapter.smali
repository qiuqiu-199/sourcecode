.class public Lorg/inaturalist/android/UserObservationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserObservationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_CARDS:I = 0x1000

.field public static final VIEW_TYPE_GRID:I = 0x1001


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1001

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lorg/inaturalist/android/UserObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0d0067

    .line 45
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    iput-object p2, p0, Lorg/inaturalist/android/UserObservationAdapter;->mItems:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/UserObservationAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 50
    iput p3, p0, Lorg/inaturalist/android/UserObservationAdapter;->mViewType:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/UserObservationAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mItems:Ljava/util/List;

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

    .line 71
    iget-object p2, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 72
    iget v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mViewType:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d00f4

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0080

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    iget-object p3, p0, Lorg/inaturalist/android/UserObservationAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const p3, 0x7f0a034a

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    const v3, 0x7f10037a

    if-eqz v0, :cond_3

    const-string v0, "taxon"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "taxon"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_1
    const-string v0, "species_guess"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "species_guess"

    iget-object v4, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    const-string v0, "taxon"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    const-string v3, "taxon"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 89
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_4
    const-string v0, "species_guess"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "species_guess"

    iget-object v4, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_3
    iget p3, p0, Lorg/inaturalist/android/UserObservationAdapter;->mViewType:I

    if-ne p3, v1, :cond_9

    const p3, 0x7f0a02a4

    .line 99
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "place_guess"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "place_guess"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "place_guess"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    :goto_4
    const-string v0, "latitude"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 103
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f100201

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "%.4f..."

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "latitude"

    .line 104
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%.4f..."

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "longitude"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 103
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    const v0, 0x7f10026e

    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_5
    const p3, 0x7f0a0268

    .line 114
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0a0262

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    invoke-static {p1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :try_start_1
    const-string v0, "photos"

    .line 121
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 127
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lez v3, :cond_d

    .line 128
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "small_url"

    .line 134
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "original_url"

    :goto_7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    const-string v3, "small_url"

    goto :goto_7

    :goto_8
    if-eqz v3, :cond_b

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    const-string v3, "url"

    .line 136
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v3, Lorg/inaturalist/android/UserObservationAdapter$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserObservationAdapter$1;-><init>(Lorg/inaturalist/android/UserObservationAdapter;)V

    .line 143
    invoke-virtual {v0, p3, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p3

    .line 158
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_3
    move-exception p3

    .line 155
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 161
    :cond_d
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :goto_9
    iget p3, p0, Lorg/inaturalist/android/UserObservationAdapter;->mViewType:I

    if-ne p3, v1, :cond_11

    const p3, 0x7f0a00e7

    .line 165
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 166
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "observed_on"

    .line 167
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    if-nez v0, :cond_e

    .line 169
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 171
    :cond_e
    iget-object v1, p0, Lorg/inaturalist/android/UserObservationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const p3, 0x7f0a00c6

    .line 175
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a00ca

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "comments_count"

    .line 177
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x8

    if-lez v1, :cond_f

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 184
    :cond_f
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    const p3, 0x7f0a0173

    .line 188
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a0178

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "identifications_count"

    .line 190
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 193
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 197
    :cond_10
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_11
    :goto_c
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
