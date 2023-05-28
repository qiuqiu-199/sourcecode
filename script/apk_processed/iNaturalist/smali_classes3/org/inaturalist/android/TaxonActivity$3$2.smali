.class Lorg/inaturalist/android/TaxonActivity$3$2;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity$3;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonActivity$3;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity$3;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 694
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const-class v1, Lorg/inaturalist/android/TaxonMapActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity;->TAXON_ID:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 696
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity;->TAXON_NAME:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity$3;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 697
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity;->access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 698
    sget-object v1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_LATITUDE:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 699
    sget-object v1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_LONGITUDE:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 700
    sget-object v1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_ZOOM:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 701
    sget-object v0, Lorg/inaturalist/android/TaxonMapActivity;->OBSERVATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 702
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$3$2;->this$1:Lorg/inaturalist/android/TaxonActivity$3;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonActivity$3;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/TaxonActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
