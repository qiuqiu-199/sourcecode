.class Lorg/inaturalist/android/MissionsActivity$3;
.super Ljava/lang/Object;
.source "MissionsActivity.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MissionsActivity;->askForLocationPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 2

    .line 348
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v0}, Lorg/inaturalist/android/MissionsActivity;->access$300(Lorg/inaturalist/android/MissionsActivity;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 5

    .line 341
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String;

    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    .line 342
    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v2}, Lorg/inaturalist/android/MissionsActivity;->access$200(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity$3;->this$0:Lorg/inaturalist/android/MissionsActivity;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
