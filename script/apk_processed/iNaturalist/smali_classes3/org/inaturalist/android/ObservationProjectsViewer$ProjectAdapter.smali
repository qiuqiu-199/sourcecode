.class public Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ObservationProjectsViewer.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationProjectsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/BetterJSONObject;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/widget/Filter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/ObservationProjectsViewer;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ObservationProjectsViewer;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->this$0:Lorg/inaturalist/android/ObservationProjectsViewer;

    const v0, 0x7f0d00d1

    .line 162
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 164
    iput-object p3, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    .line 165
    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mOriginalItems:Ljava/util/List;

    .line 166
    iput-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mContext:Landroid/content/Context;

    .line 168
    new-instance p2, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$1;-><init>(Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;Lorg/inaturalist/android/ObservationProjectsViewer;)V

    iput-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mFilter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;)Ljava/util/List;
    .locals 0

    .line 154
    iget-object p0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mOriginalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->getItem(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 226
    iget-object p2, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d00a9

    .line 227
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 229
    new-instance p3, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "project"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const p1, 0x7f0a02bb

    .line 231
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "title"

    .line 232
    invoke-virtual {p3, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a02bd

    .line 235
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v2, "icon_url"

    .line 236
    invoke-virtual {p3, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a02c0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-static {p1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string p1, "description"

    .line 247
    invoke-virtual {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const p3, 0x7f0a02be

    .line 249
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;

    invoke-direct {v0, p0, v1, p1}, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter$2;-><init>(Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0a02bf

    .line 257
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
