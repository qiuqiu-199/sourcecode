.class Lorg/inaturalist/android/ObservationPhotosViewer$1;
.super Ljava/lang/Object;
.source "ObservationPhotosViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationPhotosViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationPhotosViewer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationPhotosViewer;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$1;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "delete_photo_index"

    .line 163
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$1;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationPhotosViewer;->access$000(Lorg/inaturalist/android/ObservationPhotosViewer;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer$1;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/ObservationPhotosViewer;->setResult(ILandroid/content/Intent;)V

    .line 165
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer$1;->this$0:Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationPhotosViewer;->finish()V

    return-void
.end method
