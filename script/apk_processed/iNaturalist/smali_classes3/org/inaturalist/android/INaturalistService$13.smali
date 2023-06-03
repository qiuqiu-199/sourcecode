.class Lorg/inaturalist/android/INaturalistService$13;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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

    .line 5366
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$13;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$13;->val$callback:Lorg/inaturalist/android/INaturalistService$IOnLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 5370
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lorg/inaturalist/android/INaturalistService$13$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/INaturalistService$13$1;-><init>(Lorg/inaturalist/android/INaturalistService$13;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5376
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
