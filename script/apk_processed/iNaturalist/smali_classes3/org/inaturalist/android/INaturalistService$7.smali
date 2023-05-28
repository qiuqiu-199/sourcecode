.class Lorg/inaturalist/android/INaturalistService$7;
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

    .line 1330
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1335
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v1}, Lorg/inaturalist/android/INaturalistService;->access$100(Lorg/inaturalist/android/INaturalistService;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    new-instance v3, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v3}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1337
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1338
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1343
    :try_start_0
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v2, p1}, Lorg/inaturalist/android/INaturalistService;->access$400(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1345
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    move-object p1, v1

    .line 1348
    :goto_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v2}, Lorg/inaturalist/android/INaturalistService;->access$100(Lorg/inaturalist/android/INaturalistService;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "is_shared_on_app"

    .line 1350
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1351
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService$7;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
