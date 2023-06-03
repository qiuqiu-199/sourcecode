.class Lorg/inaturalist/android/TaxonMapActivity$1;
.super Ljava/lang/Object;
.source "TaxonMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonMapActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonMapActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/TaxonMapActivity;->access$002(Lorg/inaturalist/android/TaxonMapActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 129
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonMapActivity;->access$100(Lorg/inaturalist/android/TaxonMapActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 132
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 133
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 136
    new-instance p1, Lorg/inaturalist/android/TaxonMapActivity$1$1;

    const/16 v0, 0x100

    invoke-direct {p1, p0, v0, v0}, Lorg/inaturalist/android/TaxonMapActivity$1$1;-><init>(Lorg/inaturalist/android/TaxonMapActivity$1;II)V

    .line 150
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    .line 152
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    iget-object p1, p1, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 155
    new-instance p1, Lorg/inaturalist/android/Observation;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1, v0}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 156
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonMapActivity;->access$200(Lorg/inaturalist/android/TaxonMapActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v1}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    iget-object v3, v2, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;ZZ)V

    .line 157
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonMapActivity;->access$200(Lorg/inaturalist/android/TaxonMapActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonMapActivity$1;->this$0:Lorg/inaturalist/android/TaxonMapActivity;

    invoke-static {v1}, Lorg/inaturalist/android/TaxonMapActivity;->access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/ActivityHelper;->centerObservationImmediate(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;)V

    :cond_1
    return-void
.end method
