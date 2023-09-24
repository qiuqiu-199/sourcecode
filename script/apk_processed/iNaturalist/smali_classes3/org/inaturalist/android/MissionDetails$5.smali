.class Lorg/inaturalist/android/MissionDetails$5;
.super Ljava/lang/Object;
.source "MissionDetails.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$5;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 387
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$5;->this$0:Lorg/inaturalist/android/MissionDetails;

    const-class v1, Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails$5;->this$0:Lorg/inaturalist/android/MissionDetails;

    iget-object v1, v1, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "observations"

    .line 389
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$5;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/MissionDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
