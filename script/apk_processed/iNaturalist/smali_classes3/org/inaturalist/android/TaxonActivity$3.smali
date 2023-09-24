.class Lorg/inaturalist/android/TaxonActivity$3;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;

.field final synthetic val$actionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity;Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonActivity$3;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 667
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/TaxonActivity;->access$1302(Lorg/inaturalist/android/TaxonActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 669
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 670
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 671
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 672
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 675
    new-instance p1, Lorg/inaturalist/android/TaxonActivity$3$1;

    const/16 v0, 0x200

    invoke-direct {p1, p0, v0, v0}, Lorg/inaturalist/android/TaxonActivity$3$1;-><init>(Lorg/inaturalist/android/TaxonActivity$3;II)V

    .line 689
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    .line 691
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/TaxonActivity$3$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonActivity$3$2;-><init>(Lorg/inaturalist/android/TaxonActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void
.end method
