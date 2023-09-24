.class public Lorg/inaturalist/android/ProjectsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProjectsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProjectsAdapter$OnLoading;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/json/JSONObject;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProjectsAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCurrentSearchString:Ljava/lang/String;

.field private final mDefaultIcon:I

.field private mFilter:Landroid/widget/Filter;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIsUser:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLoading:Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/inaturalist/android/ProjectsAdapter$OnLoading;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7f08026b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 121
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/inaturalist/android/ProjectsAdapter$OnLoading;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 125
    invoke-direct/range {v0 .. v6}, Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/inaturalist/android/ProjectsAdapter$OnLoading;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;IZ)V"
        }
    .end annotation

    const v0, 0x7f0d00c8

    .line 128
    invoke-direct {p0, p1, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 130
    iput-boolean p6, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    .line 131
    iput-object p2, p0, Lorg/inaturalist/android/ProjectsAdapter;->mSearchUrl:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    .line 133
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/inaturalist/android/ProjectsAdapter;->mOriginalItems:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mContext:Landroid/content/Context;

    .line 135
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    iget-object p2, p0, Lorg/inaturalist/android/ProjectsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 136
    iput-object p3, p0, Lorg/inaturalist/android/ProjectsAdapter;->mOnLoading:Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    .line 137
    iput p5, p0, Lorg/inaturalist/android/ProjectsAdapter;->mDefaultIcon:I

    .line 139
    new-instance p1, Lorg/inaturalist/android/ProjectsAdapter$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ProjectsAdapter$1;-><init>(Lorg/inaturalist/android/ProjectsAdapter;)V

    iput-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mFilter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ProjectsAdapter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mOriginalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ProjectsAdapter$OnLoading;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mOnLoading:Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ProjectsAdapter;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectsAdapter;->autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/ProjectsAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method private autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/inaturalist/android/ProjectsAdapter;->mSearchUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?q="

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "utf8"

    .line 69
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    .line 77
    new-array v3, v3, [C

    .line 78
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 79
    invoke-virtual {v0, v3, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto/16 :goto_7

    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception p1

    :goto_1
    :try_start_2
    const-string v3, "ProjectsAdapter"

    const-string v4, "Error connecting to search API"

    .line 85
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    const-string v3, "ProjectsAdapter"

    const-string v4, "Error processing search API URL"

    .line 83
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 88
    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    :cond_1
    :goto_4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 95
    :try_start_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    move-object p1, v2

    goto :goto_5

    .line 99
    :catch_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "results"

    .line 100
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    move-object p1, v0

    goto :goto_5

    :catch_5
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2
    return-object v0

    :goto_7
    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method private getShortDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 304
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addItemAtBeginning(Lorg/json/JSONObject;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectsAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 221
    iget-object p2, p0, Lorg/inaturalist/android/ProjectsAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d00a9

    .line 222
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 223
    new-instance p3, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const p1, 0x7f0a02bb

    .line 225
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 226
    iget-boolean v1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    if-eqz v1, :cond_0

    const-string v1, "login"

    goto :goto_0

    :cond_0
    const-string v1, "title"

    :goto_0
    invoke-virtual {p3, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a02bd

    .line 228
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0a02c0

    .line 229
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a03d2

    .line 230
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a02be

    .line 231
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 233
    iget-boolean v6, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    if-eqz v6, :cond_1

    .line 234
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v6, 0x4

    .line 235
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    const-string v5, "icon"

    .line 238
    invoke-virtual {p3, v5}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "icon"

    :goto_1
    invoke-virtual {p3, v5}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "icon_url"

    goto :goto_1

    :goto_2
    const/16 v6, 0x8

    if-eqz v5, :cond_5

    .line 239
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 258
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mDefaultIcon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    invoke-static {p1, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget v5, p0, Lorg/inaturalist/android/ProjectsAdapter;->mDefaultIcon:I

    .line 266
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 268
    iget-boolean v5, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    if-eqz v5, :cond_4

    .line 269
    new-instance p1, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {p1}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const/4 p1, 0x0

    .line 271
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 273
    :cond_4
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 276
    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 240
    :cond_5
    :goto_4
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mDefaultIcon:I

    .line 244
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {v0}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    .line 247
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 249
    iget-boolean v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    if-eqz v0, :cond_6

    .line 250
    new-instance v0, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {v0}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 251
    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const-string p1, "#5D5D5D"

    .line 252
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_5

    .line 254
    :cond_6
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_5
    const-string p1, "description"

    .line 280
    invoke-virtual {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const-string p1, ""

    .line 281
    :goto_6
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mIsUser:Z

    if-nez v0, :cond_8

    .line 283
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/ProjectsAdapter$2;

    invoke-direct {v2, p0, v1, p1}, Lorg/inaturalist/android/ProjectsAdapter$2;-><init>(Lorg/inaturalist/android/ProjectsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_8
    const p1, 0x7f0a02bf

    .line 291
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :goto_7
    invoke-virtual {p3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public updateItem(ILorg/json/JSONObject;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/inaturalist/android/ProjectsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
