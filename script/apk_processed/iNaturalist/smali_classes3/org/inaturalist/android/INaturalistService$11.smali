.class Lorg/inaturalist/android/INaturalistService$11;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;

.field final synthetic val$callback:Lorg/inaturalist/android/INaturalistService$IOnLocation;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V
    .locals 0

    .line 5323
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$11;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$11;->val$callback:Lorg/inaturalist/android/INaturalistService$IOnLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5326
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$11;->val$callback:Lorg/inaturalist/android/INaturalistService$IOnLocation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/inaturalist/android/INaturalistService$IOnLocation;->onLocation(Landroid/location/Location;)V

    return-void
.end method
