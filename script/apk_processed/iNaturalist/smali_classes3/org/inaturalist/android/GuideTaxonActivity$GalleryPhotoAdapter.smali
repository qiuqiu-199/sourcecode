.class public Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "GuideTaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideTaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryPhotoAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonPhotoXML;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/GuideTaxonActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonPhotoXML;",
            ">;)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 423
    iput-object p2, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mContext:Landroid/content/Context;

    .line 424
    iput-object p3, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mPhotos:Ljava/util/List;

    .line 425
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mViews:Ljava/util/HashMap;

    return-void
.end method

.method private getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    .line 465
    new-array v0, v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 473
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 474
    invoke-virtual {p1, p2, v3}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemUri(I)Landroid/net/Uri;
    .locals 2

    .line 437
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    .line 438
    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getGuide()Lorg/inaturalist/android/GuideXML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    goto :goto_0

    .line 446
    :cond_0
    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    .line 449
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 454
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 484
    iget-object p2, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 485
    iget-object p2, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1

    .line 488
    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance p3, Landroid/widget/Gallery$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 492
    iget-object p3, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    .line 494
    invoke-virtual {p3}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getGuide()Lorg/inaturalist/android/GuideXML;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    goto :goto_0

    .line 501
    :cond_1
    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    .line 504
    :goto_0
    invoke-direct {p0, p3, v1}, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_2

    .line 507
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 508
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 510
    :cond_2
    invoke-static {p2, p3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 513
    :goto_1
    iget-object p3, p0, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
