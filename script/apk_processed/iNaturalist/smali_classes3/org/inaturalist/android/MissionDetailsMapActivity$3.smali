.class Lorg/inaturalist/android/MissionDetailsMapActivity$3;
.super Ljava/lang/Object;
.source "MissionDetailsMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionDetailsMapActivity;->setUpMapIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetailsMapActivity;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$002(Lorg/inaturalist/android/MissionDetailsMapActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 236
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 239
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 241
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 243
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    iget-object p1, p1, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$3;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$200(Lorg/inaturalist/android/MissionDetailsMapActivity;)V

    :cond_0
    return-void
.end method
