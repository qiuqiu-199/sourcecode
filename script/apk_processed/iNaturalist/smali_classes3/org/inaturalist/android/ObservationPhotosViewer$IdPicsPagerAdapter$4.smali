.class Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;
.super Ljava/lang/Object;
.source "ObservationPhotosViewer.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

.field final synthetic val$finalAttacher1:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->val$finalAttacher1:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMatrixChanged(Landroid/graphics/RectF;)V
    .locals 1

    .line 437
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->val$finalAttacher1:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result p1

    .line 438
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->access$200(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 440
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->access$200(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;->onZoomedIn()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$4;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->access$200(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;->onZoomOriginal()V

    :cond_1
    :goto_0
    return-void
.end method
