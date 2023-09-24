.class Lorg/inaturalist/android/UserProfile$12;
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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$12;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 820
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    .line 821
    iget-object p4, p0, Lorg/inaturalist/android/UserProfile$12;->this$0:Lorg/inaturalist/android/UserProfile;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lorg/inaturalist/android/ImageUtils;->centerCropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p4, p2}, Lorg/inaturalist/android/ImageUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onPreSetBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
