.class Lorg/inaturalist/android/ObservationViewerActivity$31;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->resizeActivityList()V
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

    .line 2341
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$31;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 2348
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$31;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$31;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationViewerActivity;->access$4800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->setListViewHeightBasedOnItems(Landroid/widget/ListView;)I

    move-result p1

    .line 2349
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$31;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const p3, 0x7f0a00c9

    invoke-virtual {p2, p3}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2350
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 2351
    iget p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p4, p1, :cond_0

    .line 2352
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2353
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
