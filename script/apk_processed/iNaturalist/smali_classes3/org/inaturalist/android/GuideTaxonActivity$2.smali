.class Lorg/inaturalist/android/GuideTaxonActivity$2;
.super Ljava/lang/Object;
.source "GuideTaxonActivity.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideTaxonActivity;->loadTaxon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideTaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$2;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 330
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$2;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    const p2, 0x7f0a01c0

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
