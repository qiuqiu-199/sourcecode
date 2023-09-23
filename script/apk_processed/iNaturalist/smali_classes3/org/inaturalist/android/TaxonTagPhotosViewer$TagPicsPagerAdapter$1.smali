.class Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;
.super Ljava/lang/Object;
.source "TaxonTagPhotosViewer.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;

.field final synthetic val$attacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field final synthetic val$loading:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;Landroid/widget/ProgressBar;Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;->this$1:Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;->val$loading:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;->val$attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 168
    iget-object p2, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;->val$loading:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter$1;->val$attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
