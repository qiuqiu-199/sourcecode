.class Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProfilePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProfilePhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfilePhotoPagerAdapter"
.end annotation


# instance fields
.field mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/ProfilePhotoViewer;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ProfilePhotoViewer;Lorg/json/JSONObject;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->this$0:Lorg/inaturalist/android/ProfilePhotoViewer;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->mImages:Ljava/util/List;

    const-string p1, "original_user_icon_url"

    .line 112
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "original_user_icon_url"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "original_user_icon_url"

    .line 113
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "medium_user_icon_url"

    .line 114
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "medium_user_icon_url"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "medium_user_icon_url"

    .line 115
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "icon_url"

    .line 116
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "icon_url"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "icon_url"

    .line 117
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "user_icon_url"

    .line 119
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->this$0:Lorg/inaturalist/android/ProfilePhotoViewer;

    invoke-virtual {v0}, Lorg/inaturalist/android/ProfilePhotoViewer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    .line 132
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const p1, 0x7f0a0178

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0a017a

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 136
    iget-object v3, p0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x4

    .line 138
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 141
    new-instance v3, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter$1;

    invoke-direct {v3, p0, v2, v1}, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter$1;-><init>(Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;Landroid/widget/ProgressBar;Luk/co/senab/photoview/PhotoViewAttacher;)V

    const v1, 0x7f080132

    invoke-static {p1, p2, v1, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

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
