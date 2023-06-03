.class Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;)V
    .locals 0

    .line 2880
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter$1;->this$1:Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

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

    .line 2887
    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
