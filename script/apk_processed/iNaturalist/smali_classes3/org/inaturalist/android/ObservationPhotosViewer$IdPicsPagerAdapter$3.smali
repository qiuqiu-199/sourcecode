.class Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$3;
.super Ljava/lang/Object;
.source "ObservationPhotosViewer.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$3;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 0

    .line 427
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$3;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->access$100(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
