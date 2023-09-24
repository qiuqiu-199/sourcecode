.class Lorg/inaturalist/android/INaturalistService$14$1;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService$14;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/INaturalistService$14;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService$14;)V
    .locals 0

    .line 5354
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$14$1;->this$1:Lorg/inaturalist/android/INaturalistService$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5357
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$14$1;->this$1:Lorg/inaturalist/android/INaturalistService$14;

    iget-object v0, v0, Lorg/inaturalist/android/INaturalistService$14;->val$callback:Lorg/inaturalist/android/INaturalistService$IOnLocation;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$14$1;->this$1:Lorg/inaturalist/android/INaturalistService$14;

    iget-object v1, v1, Lorg/inaturalist/android/INaturalistService$14;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v1}, Lorg/inaturalist/android/INaturalistService;->access$600(Lorg/inaturalist/android/INaturalistService;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/inaturalist/android/INaturalistService$IOnLocation;->onLocation(Landroid/location/Location;)V

    .line 5358
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$14$1;->this$1:Lorg/inaturalist/android/INaturalistService$14;

    iget-object v0, v0, Lorg/inaturalist/android/INaturalistService$14;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v0}, Lorg/inaturalist/android/INaturalistService;->access$700(Lorg/inaturalist/android/INaturalistService;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method
