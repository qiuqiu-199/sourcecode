.class Lorg/inaturalist/android/ObservationViewerActivity$19$1;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$19;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1604
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 1605
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inat_host_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/observations/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a0328

    if-eq p2, v0, :cond_1

    const v0, 0x7f0a03de

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1620
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1622
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1610
    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 1611
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 1612
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1613
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$19$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$19;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity$19;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/16 v0, 0x104

    invoke-virtual {p1, p2, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1616
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Obs - Share Started"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
