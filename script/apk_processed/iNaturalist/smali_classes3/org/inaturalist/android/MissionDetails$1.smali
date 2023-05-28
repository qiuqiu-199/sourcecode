.class Lorg/inaturalist/android/MissionDetails$1;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {v0, p1}, Lorg/inaturalist/android/MissionDetails;->access$102(Lorg/inaturalist/android/MissionDetails;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 202
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 203
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 204
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 205
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 207
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$1;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$200(Lorg/inaturalist/android/MissionDetails;)V

    return-void
.end method
