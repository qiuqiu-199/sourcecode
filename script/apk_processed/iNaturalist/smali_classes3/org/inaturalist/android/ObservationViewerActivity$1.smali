.class Lorg/inaturalist/android/ObservationViewerActivity$1;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->onAnnotationCollapsedExpanded()V
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

    .line 250
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$1;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$1;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/ActivityHelper;->setListViewHeightBasedOnItems(Landroid/widget/ListView;)I

    .line 254
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$1;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method
