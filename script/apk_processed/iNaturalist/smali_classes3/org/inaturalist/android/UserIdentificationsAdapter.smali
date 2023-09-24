.class Lorg/inaturalist/android/UserIdentificationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserIdentificationsAdapter.java"

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


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDimension:I

.field private mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mIsGrid:Z

.field private mLoggedInUsername:Ljava/lang/String;

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

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 61
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/inaturalist/android/PullToRefreshGridViewExtended;",
            ")V"
        }
    .end annotation

    const v0, 0x1090003

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mResultList:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mUsername:Ljava/lang/String;

    .line 52
    iput-boolean p4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    .line 53
    iput-object p5, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 55
    iget-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mLoggedInUsername:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mObservationLoaded:Ljava/util/HashMap;

    return-void
.end method

.method private getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .line 144
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 145
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 146
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "taxon_names"

    .line 149
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 150
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 151
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "lexicon"

    .line 152
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "name"

    .line 155
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    :try_start_1
    const-string v0, "unique_name"

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "default_name"

    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 172
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    const-string v0, "common_name"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "name"

    .line 177
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v0, "name"

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    .line 190
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance p3, Lorg/inaturalist/android/UserIdentificationsAdapter$1;

    invoke-direct {p3, p0, p2}, Lorg/inaturalist/android/UserIdentificationsAdapter$1;-><init>(Lorg/inaturalist/android/UserIdentificationsAdapter;Landroid/widget/ImageView;)V

    .line 193
    invoke-virtual {p1, p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mResultList:Ljava/util/ArrayList;

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

    .line 74
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object p3, p2

    goto :goto_1

    .line 75
    :cond_0
    iget-boolean v2, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0d00a3

    goto :goto_0

    :cond_1
    const v2, 0x7f0d00f3

    :goto_0
    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 77
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 79
    iget-boolean v2, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-nez v2, :cond_2

    const v2, 0x7f0a0391

    .line 80
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0a0268

    goto :goto_2

    :cond_3
    const v2, 0x7f0a0178

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0262

    .line 87
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    iget-boolean v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0a034a

    goto :goto_3

    :cond_4
    const v4, 0x7f0a0177

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a017e

    .line 89
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x4

    .line 91
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v6, "observation"

    .line 96
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "taxon"

    .line 97
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 98
    invoke-direct {p0, v7}, Lorg/inaturalist/android/UserIdentificationsAdapter;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-nez v4, :cond_6

    .line 100
    iget-object v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mUsername:Ljava/lang/String;

    iget-object v10, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mLoggedInUsername:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 101
    iget-object v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f100392

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mUsername:Ljava/lang/String;

    aput-object v11, v10, v1

    invoke-direct {p0, v7}, Lorg/inaturalist/android/UserIdentificationsAdapter;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v8

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 103
    :cond_5
    iget-object v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f1003b6

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v10, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lorg/inaturalist/android/UserIdentificationsAdapter;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v1

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_6
    :goto_4
    iget-boolean v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-eqz v4, :cond_7

    .line 108
    iget-object v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v4

    iput v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    .line 109
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    iget v7, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, v4

    const-wide v10, 0x3fdeb851eb851eb8L    # 0.48

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v10

    double-to-int v4, v4

    const/high16 v5, 0x41f00000    # 30.0f

    .line 112
    :try_start_1
    iget-object v7, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v8, v5, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 113
    iget v7, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    sub-int/2addr v7, v4

    div-int/2addr v7, v9

    .line 114
    iget v8, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v4

    div-int/2addr v8, v9

    .line 115
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v5, v7, v8, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const-string v3, "photos"

    .line 120
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    iget-boolean v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mIsGrid:Z

    if-eqz v4, :cond_8

    if-nez p2, :cond_8

    .line 123
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    iget v5, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mDimension:I

    invoke-direct {p2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v3, :cond_9

    .line 126
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_9

    .line 127
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-direct {p0, p1, v2, p2}, Lorg/inaturalist/android/UserIdentificationsAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;)V

    .line 131
    :cond_9
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    return-object p3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->pauseTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->resumeTag(Ljava/lang/Object;)V

    .line 216
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/inaturalist/android/UserIdentificationsAdapter;->mOriginalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
