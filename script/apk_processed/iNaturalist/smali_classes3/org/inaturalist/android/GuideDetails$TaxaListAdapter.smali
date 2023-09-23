.class Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GuideDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxaListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/GuideTaxonXML;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonXML;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonXML;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    const p1, 0x7f0d0067

    .line 134
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 136
    iput-object p3, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mItems:Ljava/util/List;

    .line 137
    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    .line 153
    new-array v0, v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 161
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 162
    invoke-virtual {p1, p2, v3}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
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

    .line 142
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->getItem(I)Lorg/inaturalist/android/GuideTaxonXML;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/inaturalist/android/GuideTaxonXML;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideTaxonXML;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 177
    iget-object p2, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0067

    .line 178
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 183
    :cond_0
    iget-object p3, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideTaxonXML;

    const p3, 0x7f0a0177

    .line 185
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 186
    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a038d

    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 192
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    .line 193
    invoke-static {v2}, Lorg/inaturalist/android/GuideDetails;->access$000(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v2

    invoke-virtual {v2}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v2

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    .line 194
    invoke-static {v3}, Lorg/inaturalist/android/GuideDetails;->access$000(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v3

    invoke-virtual {v3}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getPhotos()Ljava/util/List;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f08027d

    if-nez v2, :cond_3

    .line 200
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {v2}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object v2

    invoke-virtual {v2}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 211
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;-><init>(Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;)V

    invoke-static {p3, v0, v3, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 236
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
