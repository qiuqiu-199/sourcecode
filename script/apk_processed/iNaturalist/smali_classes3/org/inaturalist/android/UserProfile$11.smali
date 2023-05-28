.class Lorg/inaturalist/android/UserProfile$11;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->refreshUserDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;

.field final synthetic val$userPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;Landroid/widget/ImageView;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$11;->this$0:Lorg/inaturalist/android/UserProfile;

    iput-object p2, p0, Lorg/inaturalist/android/UserProfile$11;->val$userPic:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0

    .line 805
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$11;->this$0:Lorg/inaturalist/android/UserProfile;

    const p2, 0x7f0a0255

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$11;->val$userPic:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 811
    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 812
    invoke-static {p1}, Lorg/inaturalist/android/ImageUtils;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
