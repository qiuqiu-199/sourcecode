.class Lorg/inaturalist/android/ActivityHelper$9;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->centerObservation(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ActivityHelper;

.field final synthetic val$finalCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

.field final synthetic val$map:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ActivityHelper;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$9;->this$0:Lorg/inaturalist/android/ActivityHelper;

    iput-object p2, p0, Lorg/inaturalist/android/ActivityHelper$9;->val$finalCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    iput-object p3, p0, Lorg/inaturalist/android/ActivityHelper$9;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    .line 505
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$9;->val$finalCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$9;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lorg/inaturalist/android/ActivityHelper$9;->val$finalCameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
