.class Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ExploreActivity;->access$202(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 1334
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$1;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 1341
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$2;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 1353
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1354
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0

    .line 1356
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 1359
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 1360
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 1361
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 1362
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setIndoorLevelPickerEnabled(Z)V

    .line 1363
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setIndoorEnabled(Z)Z

    .line 1364
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 1365
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 1367
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$3;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 1384
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1400(Lorg/inaturalist/android/ExploreActivity;)V

    .line 1386
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$3300(Lorg/inaturalist/android/ExploreActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1387
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1, v0}, Lorg/inaturalist/android/ExploreActivity;->access$3302(Lorg/inaturalist/android/ExploreActivity;Z)Z

    .line 1389
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$3200(Lorg/inaturalist/android/ExploreActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1390
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;->this$1:Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$3400(Lorg/inaturalist/android/ExploreActivity;)V

    goto :goto_1

    .line 1392
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$4;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1$4;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method
