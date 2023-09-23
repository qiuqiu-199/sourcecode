.class Lorg/inaturalist/android/INaturalistService$4;
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

.field final synthetic val$expandLocationByDegrees:F

.field final synthetic val$taxonId:Ljava/lang/Integer;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/Integer;Ljava/lang/String;F)V
    .locals 0

    .line 968
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$4;->val$taxonId:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/inaturalist/android/INaturalistService$4;->val$username:Ljava/lang/String;

    iput p4, p0, Lorg/inaturalist/android/INaturalistService$4;->val$expandLocationByDegrees:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 973
    new-instance p1, Landroid/content/Intent;

    const-string v1, "missions_by_taxon_result"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v1}, Lorg/inaturalist/android/INaturalistService;->access$100(Lorg/inaturalist/android/INaturalistService;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v1

    const-string v2, "missions_by_taxon_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 975
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "taxon_id"

    .line 976
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$4;->val$taxonId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 977
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 981
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService$4;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService$4;->val$taxonId:Ljava/lang/Integer;

    iget v4, p0, Lorg/inaturalist/android/INaturalistService$4;->val$expandLocationByDegrees:F

    invoke-static {v1, p1, v2, v3, v4}, Lorg/inaturalist/android/INaturalistService;->access$200(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;Ljava/lang/String;Ljava/lang/Integer;F)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object p1

    .line 983
    new-instance v1, Landroid/content/Intent;

    const-string v2, "missions_by_taxon_result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-static {v2}, Lorg/inaturalist/android/INaturalistService;->access$100(Lorg/inaturalist/android/INaturalistService;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v2

    const-string v3, "missions_by_taxon_result"

    invoke-virtual {v2, v3, p1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "is_shared_on_app"

    .line 985
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "taxon_id"

    .line 986
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$4;->val$taxonId:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 987
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService$4;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
