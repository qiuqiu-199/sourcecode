.class Lorg/inaturalist/android/BaseTab$4;
.super Ljava/lang/Object;
.source "BaseTab.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseTab;->loadProjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseTab;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseTab;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 0

    return-void
.end method

.method public onPermissionGranted()V
    .locals 5

    const-string v0, "INAT"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v2}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v1}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v2}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v1}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 337
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$400(Lorg/inaturalist/android/BaseTab;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$500(Lorg/inaturalist/android/BaseTab;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$600(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab$4;->this$0:Lorg/inaturalist/android/BaseTab;

    invoke-static {v0}, Lorg/inaturalist/android/BaseTab;->access$700(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
