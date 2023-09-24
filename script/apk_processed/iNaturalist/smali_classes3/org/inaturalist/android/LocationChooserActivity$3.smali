.class Lorg/inaturalist/android/LocationChooserActivity$3;
.super Ljava/lang/Object;
.source "LocationChooserActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/LocationChooserActivity;->setUpMapIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LocationChooserActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/LocationChooserActivity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$002(Lorg/inaturalist/android/LocationChooserActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 280
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$000(Lorg/inaturalist/android/LocationChooserActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 282
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$100(Lorg/inaturalist/android/LocationChooserActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$000(Lorg/inaturalist/android/LocationChooserActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 285
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$200(Lorg/inaturalist/android/LocationChooserActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 286
    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 287
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LocationChooserActivity;->access$200(Lorg/inaturalist/android/LocationChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/Observation;

    .line 288
    iget-object v2, v1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 289
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, v1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 291
    :cond_1
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, v1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 296
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$000(Lorg/inaturalist/android/LocationChooserActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 297
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    iget-wide v1, v1, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    iget-object v3, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    iget-wide v3, v3, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    iget-object v0, v0, Lorg/inaturalist/android/LocationChooserActivity;->mIconicTaxonName:Ljava/lang/String;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->observationMarkerIcon(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LocationChooserActivity;->access$000(Lorg/inaturalist/android/LocationChooserActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 300
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity$3;->this$0:Lorg/inaturalist/android/LocationChooserActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationChooserActivity;->access$300(Lorg/inaturalist/android/LocationChooserActivity;)V

    :cond_3
    return-void
.end method
