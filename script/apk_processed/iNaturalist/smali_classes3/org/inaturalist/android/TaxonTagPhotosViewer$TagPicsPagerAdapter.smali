.class Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TaxonTagPhotosViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonTagPhotosViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagPicsPagerAdapter"
.end annotation


# instance fields
.field mDefaultTaxonIcon:I

.field mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/TaxonTagPhotosViewer;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/TaxonTagPhotosViewer;)V
    .locals 4

    .line 120
    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->mImages:Ljava/util/List;

    .line 123
    invoke-static {p1}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->access$000(Lorg/inaturalist/android/TaxonTagPhotosViewer;)Lorg/inaturalist/android/GuideXML;

    move-result-object v0

    iget-object v1, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/GuideXML;->getTagRepresentativePhoto(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    .line 128
    iget-object v3, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-static {p1, v2}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->access$100(Lorg/inaturalist/android/TaxonTagPhotosViewer;Lorg/inaturalist/android/GuideTaxonPhotoXML;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 144
    iget-object v0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-virtual {v0}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d00a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    .line 146
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const p1, 0x7f0a0178

    .line 147
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0a017a

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 150
    new-instance v3, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {v3, p1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 152
    iget-object v4, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->this$0:Lorg/inaturalist/android/TaxonTagPhotosViewer;

    invoke-static {v4}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->access$000(Lorg/inaturalist/android/TaxonTagPhotosViewer;)Lorg/inaturalist/android/GuideXML;

    move-result-object v4

    invoke-virtual {v4}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    .line 154
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->mDefaultTaxonIcon:I

    new-instance v4, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;

    invoke-direct {v4, p0, v2, v3}, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;-><init>(Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;Landroid/widget/ProgressBar;Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-static {p1, p2, v1, v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

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
