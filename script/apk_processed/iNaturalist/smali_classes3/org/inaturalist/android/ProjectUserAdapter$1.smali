.class Lorg/inaturalist/android/ProjectUserAdapter$1;
.super Ljava/lang/Object;
.source "ProjectUserAdapter.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectUserAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectUserAdapter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/inaturalist/android/ProjectUserAdapter$1;->this$0:Lorg/inaturalist/android/ProjectUserAdapter;

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

    .line 77
    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lorg/inaturalist/android/ImageUtils;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
