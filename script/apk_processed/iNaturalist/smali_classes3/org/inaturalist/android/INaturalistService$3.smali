.class Lorg/inaturalist/android/INaturalistService$3;
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


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$3;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 2

    .line 957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "get_current_location_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    .line 958
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 959
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService$3;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
