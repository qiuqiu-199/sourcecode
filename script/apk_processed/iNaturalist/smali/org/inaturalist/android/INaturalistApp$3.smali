.class Lorg/inaturalist/android/INaturalistApp$3;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->isLocationEnabled(Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;

.field final synthetic val$locationCallback:Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$3;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$3;->val$locationCallback:Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 476
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistApp$3;->onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 1

    .line 479
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2136

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp$3;->val$locationCallback:Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;->onLocationStatus(Z)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistApp$3;->val$locationCallback:Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;->onLocationStatus(Z)V

    :goto_0
    return-void
.end method
