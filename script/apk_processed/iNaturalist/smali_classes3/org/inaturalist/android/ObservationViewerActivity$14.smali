.class Lorg/inaturalist/android/ObservationViewerActivity$14;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->setupMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$14;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 1196
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$14;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/LocationDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation"

    .line 1197
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$14;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "observation_json"

    .line 1198
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$14;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "read_only"

    const/4 v1, 0x1

    .line 1199
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1200
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$14;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
