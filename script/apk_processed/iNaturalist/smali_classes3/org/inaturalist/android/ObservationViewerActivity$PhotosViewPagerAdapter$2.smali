.class Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;I)V
    .locals 0

    .line 415
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iput p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 418
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "current_photo_index"

    .line 419
    iget v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->val$position:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v0, :cond_0

    const-string v0, "observation_id"

    .line 422
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 423
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "is_new_observation"

    const/4 v1, 0x1

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "read_only"

    .line 425
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "observation"

    .line 427
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
