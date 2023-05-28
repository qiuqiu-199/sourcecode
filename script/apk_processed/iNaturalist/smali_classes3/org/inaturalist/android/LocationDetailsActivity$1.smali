.class Lorg/inaturalist/android/LocationDetailsActivity$1;
.super Ljava/lang/Object;
.source "LocationDetailsActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/LocationDetailsActivity;->setUpMapIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/LocationDetailsActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/LocationDetailsActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$002(Lorg/inaturalist/android/LocationDetailsActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 220
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$100(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 225
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 227
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 229
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$300(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {v0}, Lorg/inaturalist/android/LocationDetailsActivity;->access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    iget-object v1, v1, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {v2}, Lorg/inaturalist/android/LocationDetailsActivity;->access$200(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;)V

    .line 231
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity$1;->this$0:Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-static {p1}, Lorg/inaturalist/android/LocationDetailsActivity;->access$400(Lorg/inaturalist/android/LocationDetailsActivity;)V

    :cond_1
    return-void
.end method
