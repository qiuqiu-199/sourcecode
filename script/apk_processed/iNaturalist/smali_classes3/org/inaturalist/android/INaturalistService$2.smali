.class Lorg/inaturalist/android/INaturalistService$2;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistService$IOnLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->onHandleIntentWorker(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$locationExpansion:F


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;F)V
    .locals 0

    .line 467
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$2;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 6

    .line 470
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$2;->val$intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 473
    iget v1, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string v1, "lat"

    .line 474
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "lng"

    .line 475
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "minx"

    .line 478
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget v4, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "miny"

    .line 479
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget v4, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "maxx"

    .line 480
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget v4, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "maxy"

    .line 481
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget p1, p0, Lorg/inaturalist/android/INaturalistService$2;->val$locationExpansion:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 485
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService$2;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {p1, v0}, Lorg/inaturalist/android/INaturalistService;->access$000(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 487
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    :goto_1
    return-void
.end method
