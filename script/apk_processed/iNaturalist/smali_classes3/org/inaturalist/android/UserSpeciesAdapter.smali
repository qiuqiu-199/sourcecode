.class Lorg/inaturalist/android/UserSpeciesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserSpeciesAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_CARDS:I = 0x1002

.field public static final VIEW_TYPE_GRID:I = 0x1001

.field public static final VIEW_TYPE_LIST:I = 0x1000


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mDimension:I

.field private mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mObservationLoaded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Lorg/inaturalist/android/PullToRefreshGridViewExtended;",
            ")V"
        }
    .end annotation

    const v0, 0x1090003

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 65
    iput-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 67
    iput-object p2, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    .line 68
    iput p3, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    .line 69
    iput-object p4, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mObservationLoaded:Ljava/util/HashMap;

    return-void
.end method

.method private loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance p3, Lorg/inaturalist/android/UserSpeciesAdapter$1;

    invoke-direct {p3, p0, p2}, Lorg/inaturalist/android/UserSpeciesAdapter$1;-><init>(Lorg/inaturalist/android/UserSpeciesAdapter;Landroid/widget/ImageView;)V

    .line 209
    invoke-virtual {p1, p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 85
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz p2, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 90
    iget-object v2, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "taxon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "id"

    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object p2

    :catch_0
    move-exception v1

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    :cond_0
    iget v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f0d00f5

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0080

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0d00a3

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move-object p3, p2

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 114
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 120
    iget v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_2

    const v1, 0x7f0a034f

    goto :goto_2

    :cond_2
    const v1, 0x7f0a034a

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    :try_start_2
    iget v4, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne v4, v3, :cond_3

    const v4, 0x7f0a0350

    goto :goto_3

    :cond_3
    const v4, 0x7f0a0268

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0262

    .line 125
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 127
    iget v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    const/16 v7, 0x1001

    if-ne v6, v7, :cond_4

    .line 128
    iget-object v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v6}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v6

    iput v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    .line 129
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    iget v9, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    int-to-double v8, v6

    const-wide v10, 0x3fdeb851eb851eb8L    # 0.48

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v6, v8

    const/4 v8, 0x1

    const/high16 v9, 0x41f00000    # 30.0f

    .line 132
    :try_start_3
    iget-object v10, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 133
    iget v9, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    .line 134
    iget v10, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    sub-int/2addr v10, v8

    sub-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    .line 135
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {v8, v9, v10, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 138
    :cond_4
    iget v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    const/16 v8, 0x1002

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    if-eqz v6, :cond_5

    .line 139
    iget-object v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v6}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v6

    iput v6, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    .line 140
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    if-nez p2, :cond_5

    .line 141
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    iget v9, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    iget v10, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v10, v6

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_4
    const v6, 0x7f0a0351

    .line 144
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 146
    iget-object v8, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 148
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    iget v10, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne v10, v3, :cond_6

    invoke-virtual {v6, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 151
    :cond_6
    iget-object v9, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v9}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 153
    invoke-static {v1, v0}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 154
    iget v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne v1, v3, :cond_9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 157
    :cond_7
    iget v9, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne v9, v3, :cond_8

    invoke-static {v6, v0}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 158
    :cond_8
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    const-string v1, "photo_url"

    .line 161
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "taxon_photos"

    .line 162
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "taxon_photos"

    .line 163
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 164
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 165
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "photo"

    .line 166
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v8, "medium_url"

    .line 167
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v1, "medium_url"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    const-string v6, "default_photo"

    .line 169
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "default_photo"

    .line 170
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v8, "medium_url"

    .line 171
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v1, "medium_url"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    :goto_6
    const/4 v6, 0x4

    .line 174
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_d

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 179
    iget v2, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne v2, v7, :cond_c

    if-nez p2, :cond_c

    .line 180
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    iget v5, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mDimension:I

    invoke-direct {p2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_c
    invoke-direct {p0, p1, v4, v1}, Lorg/inaturalist/android/UserSpeciesAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_7

    .line 185
    :cond_d
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :goto_7
    iget p2, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mViewType:I

    if-ne p2, v3, :cond_f

    const p2, 0x7f0a0349

    .line 189
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "count"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_e

    goto :goto_8

    :cond_e
    const-string p1, "observations_count"

    .line 191
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 192
    :goto_8
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, p1

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_f
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9
    return-object p3

    :catch_2
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->pauseTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 228
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->resumeTag(Ljava/lang/Object;)V

    .line 233
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/inaturalist/android/UserSpeciesAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
