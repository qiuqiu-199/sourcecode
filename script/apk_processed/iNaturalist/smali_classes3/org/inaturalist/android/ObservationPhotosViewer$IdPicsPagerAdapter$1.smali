.class Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;
.super Ljava/lang/Object;
.source "ObservationPhotosViewer.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


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
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

.field final synthetic val$finalAttacher2:Luk/co/senab/photoview/PhotoViewAttacher;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Landroid/widget/ImageView;Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->val$finalAttacher2:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 352
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->val$finalAttacher2:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 344
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
