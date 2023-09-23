.class Lorg/inaturalist/android/ObservationCursorAdapter$3;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCommentsIdSize(Landroid/widget/TextView;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/TextView;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 822
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 823
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 825
    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 827
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 828
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 832
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 833
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
