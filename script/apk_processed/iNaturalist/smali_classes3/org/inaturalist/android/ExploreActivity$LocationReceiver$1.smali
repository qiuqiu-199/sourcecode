.class Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

.field final synthetic val$shouldRedoSearch:Z


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity$LocationReceiver;Z)V
    .locals 0

    .line 612
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iput-boolean p2, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->val$shouldRedoSearch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 3

    .line 615
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$902(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 616
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$700(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 618
    iget-boolean v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->val$shouldRedoSearch:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$900(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ExploreActivity;->access$602(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 620
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1000(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performClick()Z

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;->this$1:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v1}, Lorg/inaturalist/android/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
