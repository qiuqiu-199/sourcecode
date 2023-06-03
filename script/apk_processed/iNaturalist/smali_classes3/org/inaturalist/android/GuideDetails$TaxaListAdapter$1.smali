.class Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 220
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p3, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    iget-object p3, p3, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    .line 221
    invoke-static {p3}, Lorg/inaturalist/android/GuideDetails;->access$000(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p3

    invoke-virtual {p3}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result p3

    iget-object p4, p0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter$1;->this$1:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    iget-object p4, p4, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->this$0:Lorg/inaturalist/android/GuideDetails;

    .line 222
    invoke-static {p4}, Lorg/inaturalist/android/GuideDetails;->access$000(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object p4

    invoke-virtual {p4}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
