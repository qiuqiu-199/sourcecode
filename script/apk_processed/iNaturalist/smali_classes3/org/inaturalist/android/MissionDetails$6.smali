.class Lorg/inaturalist/android/MissionDetails$6;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetails;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;

.field final synthetic val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

.field final synthetic val$finalCoordsCount:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails;ILcom/google/android/gms/maps/model/LatLngBounds$Builder;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$6;->this$0:Lorg/inaturalist/android/MissionDetails;

    iput p2, p0, Lorg/inaturalist/android/MissionDetails$6;->val$finalCoordsCount:I

    iput-object p3, p0, Lorg/inaturalist/android/MissionDetails$6;->val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 454
    iget p1, p0, Lorg/inaturalist/android/MissionDetails$6;->val$finalCoordsCount:I

    if-lez p1, :cond_0

    .line 455
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$6;->val$builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/16 v0, 0x64

    .line 456
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 457
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$6;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {v0}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 461
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails$6;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetails;->access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    return-void
.end method
