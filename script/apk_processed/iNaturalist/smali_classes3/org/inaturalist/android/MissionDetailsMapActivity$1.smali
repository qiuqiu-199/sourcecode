.class Lorg/inaturalist/android/MissionDetailsMapActivity$1;
.super Ljava/lang/Object;
.source "MissionDetailsMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetailsMapActivity;->loadObservationsToMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

.field final synthetic val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetailsMapActivity;Lcom/google/android/gms/maps/model/LatLngBounds$Builder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$1;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    iput-object p2, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$1;->val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$1;->val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/16 v0, 0x64

    .line 146
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$1;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {v0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 151
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$1;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    return-void
.end method
