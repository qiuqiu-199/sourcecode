.class Lorg/inaturalist/android/TaxonomyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TaxonomyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;
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
.field private mAncestors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private final mShowChildren:Z

.field private mTaxon:Lorg/inaturalist/android/BetterJSONObject;

.field private final mTaxonomyListener:Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/inaturalist/android/TaxonomyAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;ZLorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;ZLorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;)V
    .locals 1

    const v0, 0x1090003

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    .line 47
    iput-object p4, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxonomyListener:Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;

    .line 48
    iput-boolean p3, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mShowChildren:Z

    .line 49
    iget-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 50
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonomyAdapter;->refreshAncestors()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonomyAdapter;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TaxonomyAdapter;)Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxonomyListener:Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;

    return-object p0
.end method

.method private refreshAncestors()V
    .locals 6

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    .line 56
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mShowChildren:Z

    if-eqz v0, :cond_0

    const-string v0, "children"

    goto :goto_0

    :cond_0
    const-string v0, "ancestors"

    .line 58
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mExpanded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mShowChildren:Z

    if-eqz v1, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    .line 70
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "rank_level"

    .line 71
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    const/16 v5, 0x46

    if-eq v4, v5, :cond_2

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_3

    .line 74
    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "placeholder"

    const-string v2, "expand_list"

    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 63
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 64
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mShowChildren:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "children"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "placeholder"

    const-string v2, "view_children"

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 118
    iget-object p2, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 119
    iget-object v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mAncestors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "placeholder"

    const-string v1, ""

    .line 120
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "view_children"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const p1, 0x7f0d00f7

    .line 125
    invoke-virtual {p2, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    new-instance p2, Lorg/inaturalist/android/TaxonomyAdapter$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/TaxonomyAdapter$1;-><init>(Lorg/inaturalist/android/TaxonomyAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_0
    const-string v1, "expand_list"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0d0057

    .line 136
    invoke-virtual {p2, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lorg/inaturalist/android/TaxonomyAdapter$2;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/TaxonomyAdapter$2;-><init>(Lorg/inaturalist/android/TaxonomyAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    const v0, 0x7f0d00ea

    .line 148
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a038d

    .line 152
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0a038a

    .line 153
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0392

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-static {v0, p1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 162
    iget-object v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {v1, p1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 165
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "default_photo"

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "default_photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "default_photo"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    const-string v2, "square_url"

    .line 171
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 174
    invoke-static {p1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f08027d

    .line 177
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    new-instance p3, Lorg/inaturalist/android/TaxonomyAdapter$3;

    invoke-direct {p3, p0, p1}, Lorg/inaturalist/android/TaxonomyAdapter$3;-><init>(Lorg/inaturalist/android/TaxonomyAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isExpanded()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mExpanded:Z

    return v0
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/inaturalist/android/TaxonomyAdapter;->mExpanded:Z

    .line 105
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonomyAdapter;->refreshAncestors()V

    return-void
.end method
