.class Lorg/inaturalist/android/ObservationCursorAdapter$1;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

.field final synthetic val$obsImage:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->val$obsImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 473
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$500(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$402(Lorg/inaturalist/android/ObservationCursorAdapter;I)I

    .line 474
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->val$obsImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$400(Lorg/inaturalist/android/ObservationCursorAdapter;)I

    move-result v2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$1;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$400(Lorg/inaturalist/android/ObservationCursorAdapter;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
