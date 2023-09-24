.class Lorg/inaturalist/android/ObservationGridAdapter$1;
.super Ljava/lang/Object;
.source "ObservationGridAdapter.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationGridAdapter;

.field final synthetic val$taxonIcon:Landroid/widget/ImageView;

.field final synthetic val$taxonPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationGridAdapter;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->this$0:Lorg/inaturalist/android/ObservationGridAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->val$taxonPic:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->val$taxonIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->val$taxonPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->this$0:Lorg/inaturalist/android/ObservationGridAdapter;

    .line 133
    invoke-static {v2}, Lorg/inaturalist/android/ObservationGridAdapter;->access$000(Lorg/inaturalist/android/ObservationGridAdapter;)I

    move-result v2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->this$0:Lorg/inaturalist/android/ObservationGridAdapter;

    invoke-static {v3}, Lorg/inaturalist/android/ObservationGridAdapter;->access$000(Lorg/inaturalist/android/ObservationGridAdapter;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->val$taxonIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/inaturalist/android/ObservationGridAdapter$1;->val$taxonPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
