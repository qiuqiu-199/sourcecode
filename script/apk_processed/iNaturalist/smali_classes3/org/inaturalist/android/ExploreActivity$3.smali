.class Lorg/inaturalist/android/ExploreActivity$3;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 0

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const/4 v1, 0x4

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, v0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    .line 317
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 320
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$3;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
