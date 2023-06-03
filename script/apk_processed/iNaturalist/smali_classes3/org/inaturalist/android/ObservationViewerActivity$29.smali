.class Lorg/inaturalist/android/ObservationViewerActivity$29;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->resizeFavList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 2319
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$29;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2322
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$29;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$29;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->setListViewHeightBasedOnItems(Landroid/widget/ListView;)I

    return-void
.end method
