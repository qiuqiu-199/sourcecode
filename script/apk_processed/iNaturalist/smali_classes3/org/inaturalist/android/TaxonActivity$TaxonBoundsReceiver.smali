.class Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonBoundsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/TaxonActivity;Lorg/inaturalist/android/TaxonActivity$1;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 598
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$1200(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "taxon_observation_bounds_result"

    .line 600
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const p2, 0x7f0a0270

    if-nez p1, :cond_0

    .line 604
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {v0, p2}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object p2, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 612
    new-instance p2, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "swlat"

    .line 613
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "swlng"

    invoke-virtual {p1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-string v3, "nelat"

    .line 614
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v5, "nelng"

    invoke-virtual {p1, v5}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 615
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-static {p2, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 616
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1400(Lorg/inaturalist/android/TaxonActivity;)V

    .line 618
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/inaturalist/android/TaxonActivity;->mMapBoundsSet:Z

    return-void
.end method
