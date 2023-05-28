.class Lorg/inaturalist/android/INaturalistService$6;
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

    .line 1305
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$6;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1310
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEAR_BY_GUIDES_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->GUIDES_RESULT:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1312
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$6;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1317
    :try_start_0
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$6;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v1, p1}, Lorg/inaturalist/android/INaturalistService;->access$300(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1319
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    move-object p1, v0

    .line 1322
    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_NEAR_BY_GUIDES_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->GUIDES_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1324
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService$6;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
