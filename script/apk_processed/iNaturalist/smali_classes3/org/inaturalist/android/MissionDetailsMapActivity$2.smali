.class Lorg/inaturalist/android/MissionDetailsMapActivity$2;
.super Ljava/lang/Object;
.source "MissionDetailsMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionDetailsMapActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$2;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$2;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-static {v0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->access$100(Lorg/inaturalist/android/MissionDetailsMapActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$2;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    const-class v2, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation"

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "read_only"

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity$2;->this$0:Lorg/inaturalist/android/MissionDetailsMapActivity;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
