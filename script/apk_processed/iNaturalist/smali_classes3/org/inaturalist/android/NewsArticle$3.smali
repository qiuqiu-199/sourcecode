.class Lorg/inaturalist/android/NewsArticle$3;
.super Ljava/lang/Object;
.source "NewsArticle.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/NewsArticle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/NewsArticle;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/NewsArticle;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/inaturalist/android/NewsArticle$3;->this$0:Lorg/inaturalist/android/NewsArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 213
    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
