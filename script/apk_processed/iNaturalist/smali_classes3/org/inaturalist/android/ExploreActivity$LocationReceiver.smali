.class Lorg/inaturalist/android/ExploreActivity$LocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 593
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "location"

    .line 595
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_3

    .line 597
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$600(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 604
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$700(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$700(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreActivity;->access$800(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {v1, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    const/16 v1, 0x3e8

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;

    invoke-direct {v2, p0, p2}, Lorg/inaturalist/android/ExploreActivity$LocationReceiver$1;-><init>(Lorg/inaturalist/android/ExploreActivity$LocationReceiver;Z)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method
