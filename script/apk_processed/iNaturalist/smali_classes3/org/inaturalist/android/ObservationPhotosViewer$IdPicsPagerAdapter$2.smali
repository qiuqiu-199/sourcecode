.class Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ObservationPhotosViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

.field final synthetic val$finalAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$loading:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$finalAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 410
    invoke-interface {p1, v0, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 402
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$imageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->val$finalAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 399
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$2;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 0

    return-void
.end method
