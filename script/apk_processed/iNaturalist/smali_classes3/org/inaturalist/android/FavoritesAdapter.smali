.class public Lorg/inaturalist/android/FavoritesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/BetterJSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mLogin:Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0061

    .line 54
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    iput-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mItems:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    .line 58
    new-instance p2, Lorg/inaturalist/android/ActivityHelper;

    iget-object v0, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 60
    iget-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "username"

    const/4 v1, 0x0

    .line 61
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mLogin:Ljava/lang/String;

    .line 63
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addItemAtBeginning(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/inaturalist/android/FavoritesAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 72
    iget-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    iget-object p2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d0061

    .line 74
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    iget-object p3, p0, Lorg/inaturalist/android/FavoritesAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const p3, 0x7f0a012c

    .line 78
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0a03d1

    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "user"

    .line 80
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "login"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "created_at"

    .line 82
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lorg/inaturalist/android/FavoritesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/inaturalist/android/CommentsIdsAdapter;->formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a03d2

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "user"

    .line 87
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user_icon_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "user"

    .line 90
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_icon_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080131

    new-instance v2, Lorg/inaturalist/android/FavoritesAdapter$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/FavoritesAdapter$1;-><init>(Lorg/inaturalist/android/FavoritesAdapter;)V

    invoke-static {p3, v0, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAlpha(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 106
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 109
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
